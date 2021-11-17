import sys

translator = {"NOP": "10111111",
              "AIN": "10000000",
              "BIN": "10000001",
              "JMP": "10000010",
              "JPE": "10000101",
              "JPC": "10000100",
              "DSP": "10000011",
              "JBI": "10000110",
              "JBHI": "10000111",

              "FLF": "11110011",
              "FLT": "11111100",
              "SUM": "11001001",
              "SUB": "11010110",
              "AOT": "11111111",
              "BOT": "11111010",
              "AMM": "11001111",
              "NTA": "11110000",
              "NTB": "11110101",
              "XOR": "11111001",
              "AND": "11111110",
              "ORR": "11111011",
              "LSR": "11011100",
              "CMP": "11000110",
              "APP": "11010000",


              "MEO": "10110001",
              "MEN": "10110000",
              "SMA": "10100000",
              "SMAH": "10100001",

              "STK": "10110010",
              "USK": "10110011",

              }

literal_translator = {"STC": "0"}


def read_sasm(file):
    f = open(file, 'r')
    program = f.readlines()
    f.close()
    return program

def intepret_constants(program):
    labels = []
    pointers = []
    for i in range(len(program)):
        if program[i].split()[0][0] == "&":
            # print("".join(list(program[i].split()[0][1:len(program[i].split()[0])])))
            label = program[i].split()[0]
            if label not in labels:
                labels.append(label)
                pointers.append(i)
            else:
                print("warning: line ({line}) pointer {pointer} already used @ line ({line2})".format(line=i, pointer=label, line2=pointers[labels.index(label)]))
            line = program[i].split()
            line.pop(0)
            program[i] = " ".join(line)

    for i in range(len(pointers)):
        for j in range(len(program)):
            program[j] = program[j].replace(labels[i], str(pointers[i]))
    return program

def intepret_opcodes(program):
    assembled = []
    try:
        for i in program:
            if(i.split()[0].upper() == "EXE"):
                assembled.append(i.split()[1])
            elif(i.split()[0].upper() in literal_translator):
                bytestring = '{0:07b}'.format(int(i.split()[1]))
                assembled.append(literal_translator[i[0:3].upper()] + bytestring)
            else:
                assembled.append(translator[i.split()[0].upper()])
    except:
        print("Assembly Failed, Unkown OPCode:")
        print(i)
        exit()
    return assembled

def hex_format(item):
    hexer = str(hex(int(item, 2)))
    hexer = hexer[2:len(str(hex(int(item, 2))))]
    if len(hexer) == 1:
        return "0" + hexer
    else:
        return hexer


def write_hex(assembled, filename):
    with open(filename, 'w') as f:
        for item in assembled:
            f.write("%s" % hex_format(item))
        f.write("\n")
    print("compiled to out.hex as hex")
    return 0

def write_binary(assembled, filename):
    with open(filename, 'w') as f:
        for item in assembled:
            f.write("%s\n" % item)
    print("Compiled to out.bin as binary")
    return 0

def main():


    try:
        program = read_sasm(sys.argv[1])
    except:
        print("Wrong Input file  specified")
        exit()



    program = intepret_constants(program)
    assembled = intepret_opcodes(program)
    try:
        if sys.argv[2] == "-h":
            write_hex(assembled, "out.hex")
            exit()
    except Exception as e:
        pass
    write_binary(assembled, "out.bin")
    exit()

main()
