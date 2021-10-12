library ieee;
use ieee.std_logic_1164.all;

entity MircoCodeGen is
  port(Instruction: in std_logic_vector (7 downto 0);
       ABFlag: in std_logic;
       CarryFlag: in std_logic;
       Reset: in std_logic;
       clk: in std_logic;
       Count: out std_logic;
       CounterOutControl: out std_logic;
       InsRegControl: out std_logic;
       RegAControl: out std_logic;
       RegBControl: out std_logic;
       MainRegReadControl: out std_logic;
       LowJumpRegLoad: out std_logic;
       HighJumpRegLoad: out std_logic;
       JumpEnable: out std_logic;
       MainRegOutputControl: out std_logic;
       MemOutEnable: out std_logic;
       MemWriteControl: out std_logic;
       Ram_LowControl: out std_logic;
       Ram_HighControl: out std_logic;
       Ram_Addr_Enable: out std_logic;
       StackCount: out std_logic;
       StackOutControl: out std_logic;
       DisplayControl: out std_logic;
       LowStackJump: out std_logic;
       HighStackJump: out std_logic;
       StackCountDirection: out std_logic;
       Constants: out std_logic_vector (7 downto 0);
       Constant_Enable: out std_logic;
       ALU_Enable: out std_logic
  );

end MircoCodeGen;

architecture MircoCodeGen_Arch of MircoCodeGen_ is

  component D_flip_flop
  port (clk,Din,rst,en : in std_logic;
           Q: out std_logic;
           Qnot : out std_logic);
  end component;


  signal Q0, Qn0, Q1, Qn1, Q2, Qn2 : std_logic;

begin

-- state controller
D0 : D_flip_flop port map(clk, Qn2, Reset, '1', Q0, Qn0);
D1 : D_flip_flop port map(clk, Q0, Reset, '1', Q1, Qn1);
D2 : D_flip_flop port map(clk, Q1, Reset, '1', Q2, Qn2);


--phattest lookup table
process(Instruction, Q2, Q1, Q0)
begin
  if Instruction(7 downto 6) = "11" and Q0 = '0' and Q1 = '1' and Q2 = '1' then
    ALU_Enable <= '1';
  elsif Instruction(7 downto 6) = "11" and Q0 ='0' and Q1 = '0' and Q2 = '1' then
    ALU_Enable <= '1';
  else
    ALU_Enable <= '0';
  end if;
end process;


process(Instruction, Q2, Q1, Q0, ABFlag, CarryFlag)
begin
  if Instruction = "10111111" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10111111" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10111111" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10111111" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10111111" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10111111" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000000" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '1';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000001" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '1';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000010" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '1' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000101" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = '0' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = '1' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '1';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000100" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = '0' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000011" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='1';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000110" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '1';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10000111" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '1';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "11" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='0';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110001" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '1';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='0';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='0';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110000" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '0';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='0';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100000" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '1';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10100001" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '1';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '1';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '0';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110010" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '1';
                    MemWriteControl <= '0';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '0';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='0';

   elsif Instruction = "10110011" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '1';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10110011" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10110011" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10110011" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10110011" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '0';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10110011" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '0';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = '0' and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = '0' and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = '0' and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = '0' and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = '0' and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='1';
                    StackCountDirection <='1';
                    Constants(6 downto 0) <= Instruction(6 downto 0);
                    Constants(7) <= '0';


   elsif Instruction = '0' and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '0';
                    Constant_Enable<='1';
                    StackCountDirection <='1';
                    Constants(6 downto 0) <= Instruction(6 downto 0);
                    Constants(7) <= '0';

   elsif Instruction = "10100010" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100010" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100010" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100010" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100010" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100010" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='1';
                    HighStackJump <= '0';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '0' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 1
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '1';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '1' and Q1 = '0' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '1' and Q1 = '1' and Q2 = '0' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '1';
                    InsRegControl <= '1';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '1' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '1';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '0' and Q1 = '1' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';

   elsif Instruction = "10100100" and Q0 = '0' and Q1 = '0' and Q2 = '1' and CarryFlag = 'X' and ABFlag = 'X' then
                    Count <= 0
                    CounterOutControl <= '0';
                    InsRegControl <= '0';
                    RegAControl <= '0';
                    RegBControl <= '0';
                    MainRegReadControl <= '0';
                    LowJumpRegLoad <= '0';
                    HighJumpRegLoad <= '0';
                    JumpEnable <= '0';
                    MainRegOutputControl <= '0';
                    MemOutEnable <= '0';
                    MemWriteControl <= '1';
                    Ram_LowControl <= '0';
                    Ram_HighControl <= '0';
                    Ram_Addr_Enable <='1';
                    StackCount <= '0';
                    StackOutControl <= '1';
                    DisplayControl <='0';
                    LowStackJump <='0';
                    HighStackJump <= '1';
                    Constant_Enable<='0';
                    StackCountDirection <='1';
  else
                   Count <= 0
                   CounterOutControl <= '0';
                   InsRegControl <= '0';
                   RegAControl <= '0';
                   RegBControl <= '0';
                   MainRegReadControl <= '0';
                   LowJumpRegLoad <= '0';
                   HighJumpRegLoad <= '0';
                   JumpEnable <= '0';
                   MainRegOutputControl <= '1';
                   MemOutEnable <= '0';
                   MemWriteControl <= '1';
                   Ram_LowControl <= '0';
                   Ram_HighControl <= '0';
                   Ram_Addr_Enable <='1';
                   StackCount <= '0';
                   StackOutControl <= '1';
                   DisplayControl <='0';
                   LowStackJump <='0';
                   HighStackJump <= '0';
                   Constant_Enable<='0';
                   StackCountDirection <='1';
end if;
end process;





end architecture;
