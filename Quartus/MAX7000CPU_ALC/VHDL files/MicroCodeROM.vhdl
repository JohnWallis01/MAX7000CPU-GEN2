library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; --might not need this

entity MicroCodeROM is
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
       Drive_Enable: out std_logic;
       ALU_Enable: out std_logic);
end MicroCodeROM;


architecture MicroCodeROM_arch of MicroCodeROM is

  type rom_type is array(0 to 8191) of std_logic_vector(22 downto 0);

constant mem:rom_type := ("SOME_ARRAY_WHICH_IS_PYTHON_GENERATED");

  component D_flip_flop
  port (clk,Din,rst,en : in std_logic;
           Q: out std_logic;
           Qnot : out std_logic);
  end component;

  signal Q0, Qn0, Q1, Qn1, Q2, Qn2 : std_logic;
  signal Index_Word: std_logic_vector(12 downto 0);
  signal Control_Word: std_logic_vector(22 downto 0);
  begin
  D0 : D_flip_flop port map(clk, Qn2, Reset, '1', Q0, Qn0);
  D1 : D_flip_flop port map(clk, Q0, Reset, '1', Q1, Qn1);
  D2 : D_flip_flop port map(clk, Q1, Reset, '1', Q2, Qn2);

  process(clk) is
    begin
      if(rising_edge(clock)) then
        Index_Word(7 downto 0) <= Instruction(7 downto 0);
        Index_Word(8) <= Q0;
        Index_Word(9) <= Q1;
        Index_Word(10) <= Q2;
        Index_Word(11) <= ABFlag;
        Index_Word(12) <= CarryFlag;
        Control_Word <= mem(conv_integer(unsigned(Index_Word)));

        --map the Control Word to the output ports

      end if;
    end process;

end architecture;
