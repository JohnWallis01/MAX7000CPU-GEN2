import sys

PinPointer = 0
PinOrder = [4,5,6,8,9,10,11,12,15,16,17,18,20,21,22,24,25,27,28,29,30,31,33,34,35,36,37,39,40,41,44,45,46,48,49,50,51,52,54,55,56,57,58,60,61,63,64,65,67,68,69,70,73,74,75,76,77,79,80,81,1,2,83,84]
output_string = ""

class std_logic():
    """docstring for std_logic."""

    def __init__(self, pin, name, value):
        self.pin = pin
        self.name = name
        self.value = value
    def set_value(self, value):
        global PinPointer
        global output_string
        targetIndex = PinOrder.index(self.pin)
        difference = PinPointer - targetIndex
        if difference < 0:
            for i in range(-difference):
                output_string = output_string + "Send {Down}\nsleep,50\n"
        elif difference > 0:
            for i in range(difference):
                output_string = output_string + "Send {Up}\nsleep,50\n"

        if value == 1:
            output_string = output_string + "Send ^1\nsleep,50\n"
        elif value == 0:
            output_string = output_string + "Send ^0\nsleep,50\n"
        else:
            print("invalid logic state")
            raise ValueError
        self.value = value
        PinPointer = PinOrder.index(self.pin)
        #append a wait command



#pin definitions, important for upload sequence,

Main_Bus = [std_logic(44, "Main_0",0), std_logic(45, "Main_1",0), std_logic(46, "Main_2",0), std_logic(48, "Main_3",0), std_logic(49, "Main_4",0), std_logic(50, "Main_5",0), std_logic(51, "Main_6",0), std_logic(52, "Main_7",0)]
Count = std_logic(20, "Count", 0)
CounterOutControl = std_logic(21, "CounterOutControl", 0)
LowJumpRegLoad = std_logic(28, "LowJumpRegLoad", 0)
HighJumpRegLoad = std_logic(29, "HighJumpRegLoad", 0)
JumpEnable = std_logic(30, "JumpEnable", 0)
MemWriteControl = std_logic(34, "MemWriteControl", 1)



InsRegControl = std_logic(22, "insregcontrol", 0)
#Everything else needs to be in the disable state; drive reset?

#these are otheroutput pins
CLK = std_logic(79, "CLK", 0)
MainRegOutputControl =  std_logic(31, "MainRegOutputControl", 1) #set high
MemOutEnable =  std_logic(33, "MemOutEnable", 1) # set high
Ram_Addr_Enable =  std_logic(37, "Ram_Addr_Enable", 1)# set high
StackOutControl =  std_logic(40, "StackOutControl", 1)# set high



PreSet = 2


def read_binaries(file_name):
    if file_name.split(".")[-1] == "bin":
        try:
            f = open(file_name, 'r')
            program = f.read()
            f.close()
            instructions = program.split()
        except Exception as e:
            print("Incorrect Input file was specified")
            exit()
    elif file_name.split(".")[-1] == "hex":
        f = open(file_name, 'r')
        program = f.read()
        f.close()
        n = 2
        hex = [program[i:i+n] for i in range(0, len(program), n)]
        numerical = [(int(hexed, 16)) for hexed in hex[0:-1]]
        n = 8
        instructions = ['{0:{fill}{width}b}'.format(
            (x + 2**n) % 2**n, fill='0', width=n) for x in numerical]
    else:
        print("bang")
        print("Incorrect Input file was specified")
        exit()
    return instructions



def main():
    #bootup sequence
    MainRegOutputControl.set_value(1)
    MemOutEnable.set_value(1)
    Ram_Addr_Enable.set_value(1)
    StackOutControl.set_value(1)
    CLK.set_value(0)
    InsRegControl.set_value(0)

    #prepare for read
    for signal in Main_Bus:
        signal.set_value(0)
    Count.set_value(0)
    CounterOutControl.set_value(0) #these will be outputting
    LowJumpRegLoad.set_value(0)
    HighJumpRegLoad.set_value(0)
    LowJumpRegLoad.set_value(1)
    HighJumpRegLoad.set_value(1)
    LowJumpRegLoad.set_value(0)
    HighJumpRegLoad.set_value(0)
    JumpEnable.set_value(0)
    MemWriteControl.set_value(0)

    #preset_the_counter
    JumpEnable.set_value(1)
    Count.set_value(1)
    Count.set_value(0) #now the program counter is at 0
    JumpEnable.set_value(0)

    instructions = read_binaries(sys.argv[1])
    for instruction in instructions:
        #sets the bus
        for bit in range(len(Main_Bus)):
            Main_Bus[bit].set_value(int(instruction[-(bit+1)]))

        InsRegControl.set_value(1)
        InsRegControl.set_value(0)
        MemWriteControl.set_value(1)
        MemWriteControl.set_value(0) #just stored it in memory
        Count.set_value(1)
        Count.set_value(0) #incremeneted the program counter

    #set the program counter to the inital state
    for signal in Main_Bus:
        signal.set_value(1)
    LowJumpRegLoad.set_value(0)
    HighJumpRegLoad.set_value(0)
    LowJumpRegLoad.set_value(1)
    HighJumpRegLoad.set_value(1)
    LowJumpRegLoad.set_value(0)
    HighJumpRegLoad.set_value(0)
    JumpEnable.set_value(1)
    Count.set_value(1)
    Count.set_value(0) #now the program counter is at 0
    JumpEnable.set_value(0)

    #this bad boy is good to go now
    with open("upload.ahk", "w") as output_file:
            output_file.write("^p::\n")
            output_file.write(output_string)

main()
