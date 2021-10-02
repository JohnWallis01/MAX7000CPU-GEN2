import pandas as pd


TruthTable = pd.read_csv("CPU MicroCode Signals.csv").dropna()
print(TruthTable)
code = ""

for index, row in TruthTable.iterrows():
    if row["Instruction Code"] != "Instruction Code":
        Instruction = row["Instruction Code"]
        D0 = row["D0"]
        D1 = row["D1"]
        D2 = row["D2"]
        AB_FLAG = row["AB FLAG"]
        Carry_Flag = row["Carry Flag"]
        # MainBus = row["MainBus"] -- this probably needs to be finnesed
        Count = row["Count"]
        CounterOutControl = row["CounterOutControl"]
        InsRegControl = row["InsRegControl"]
        RegAControl = row["RegAControl"]
        RegBControl = row["RegBControl"]
        MainRegReadControl = row["MainRegReadControl"]
        LowJumpRegLoad = row["LowJumpRegLoad"]
        HighJumpRegLoad = row["HighJumpRegLoad"]
        JumpEnable = row["JumpEnable"]
        MainRegOutputControl = row["MainRegOutputControl"]
        MemOutEnable = row["MemOutEnable"]
        MemWriteControl = row["MemWriteControl"]
        Ram_LowControl = row["Ram_LowControl"]
        Ram_HighControl = row["Ram_HighControl"]
        Ram_Addr_Enable = row["Ram_Addr_Enable"]
        StackCount = row["StackCount"]
        StackOutControl = row["StackOutControl"]
        DisplayControl = row["DisplayControl"]
        LowStackJump = row["LowStackJump"]
        HighStackJump = row["HighStackJump"]
        StackCountDirection = row["StackCountDirection"]

        line = """elsif Instruction = "{instruction}" and Q0 = '{D0}' and Q1 = '{D1}' and Q2 = '{D2}' and CarryFlag = '{Carry_Flag}' and ABFlag = '{ABFlag}' then
                  Count <= {Count}
                  CounterOutControl <= '{CounterOutControl}';
                  InsRegControl <= '{InsRegControl}';
                  RegAControl <= '{RegAControl}';
                  RegBControl <= '{RegBControl}';
                  MainRegReadControl <= '{MainRegReadControl}';
                  LowJumpRegLoad <= '{LowJumpRegLoad}';
                  HighJumpRegLoad <= '{HighJumpRegLoad}';
                  JumpEnable <= '{JumpEnable}';
                  MainRegOutputControl <= '{MainRegOutputControl}';
                  MemOutEnable <= '{MemOutEnable}';
                  MemWriteControl <= '{MemWriteControl}';
                  Ram_LowControl <= '{Ram_LowControl}';
                  Ram_HighControl <= '{Ram_HighControl}';
                  Ram_Addr_Enable <='{Ram_Addr_Enable}';
                  StackCount <= '{StackCount}';
                  StackOutControl <= '{StackOutControl}';
                  DisplayControl <='{DisplayControl}';
                  LowStackJump <='{LowStackJump}';
                  HighStackJump <= '{HighStackJump}';
                  StackCountDirection <='{StackCountDirection}';\n\n """.format(instruction = Instruction,
                                                                             D0 = D0,
                                                                             D1 = D1,
                                                                             D2 = D2,
                                                                             Carry_Flag = Carry_Flag,
                                                                             ABFlag = AB_FLAG,
                                                                             Count = Count,
                                                                             CounterOutControl = CounterOutControl,
                                                                             InsRegControl = InsRegControl,
                                                                             RegAControl =  RegAControl,
                                                                             RegBControl = RegBControl,
                                                                             MainRegReadControl =  MainRegReadControl,
                                                                             LowJumpRegLoad = LowJumpRegLoad,
                                                                             HighJumpRegLoad = HighJumpRegLoad,
                                                                             JumpEnable = JumpEnable,
                                                                             MainRegOutputControl = MainRegOutputControl,
                                                                             MemOutEnable = MemOutEnable,
                                                                             MemWriteControl = MemWriteControl,
                                                                             Ram_LowControl = Ram_LowControl,
                                                                             Ram_HighControl = Ram_HighControl,
                                                                             Ram_Addr_Enable = Ram_Addr_Enable,
                                                                             StackCount = StackCount,
                                                                             StackOutControl = StackOutControl,
                                                                             DisplayControl = DisplayControl,
                                                                             LowStackJump = LowStackJump,
                                                                             HighStackJump = HighStackJump,
                                                                             StackCountDirection = StackCountDirection)
        code += line

with open("out.vhdl", "w") as output_file:
    output_file.write(code)
