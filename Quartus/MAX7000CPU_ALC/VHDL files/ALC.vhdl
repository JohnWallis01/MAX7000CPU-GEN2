library ieee;
use ieee.std_logic_1164.all;

entity AL_Controller is
  port(
  regA: in std_logic_vector (7 downto 0);
  regB: in std_logic_vector (7 downto 0);
  MainBus: out std_logic_vector (7 downto 0);
  Ins: in std_logic_vector(7 downto 0);
  Reset: in std_logic;
  UserCLK: in std_logic;
  SlowCLK: in std_logic;
  CLK_Select: in std_logic;
  CLK: out std_logic; -- this needs to be birectional
  Count: out std_logic;
  CounterOutControl: out std_logic;
  InsRegControl: buffer std_logic;
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
  SYNC: out std_logic; --bidirectional
  STATE: out std_logic --bidirectional
  );
end AL_Controller;

architecture AL_Controller_str of AL_Controller is

  component ALU
  port(
  A: in std_logic_vector (3 downto 0);
  B: in std_logic_vector (3 downto 0);
  S: in std_logic_vector (3 downto 0);
  M:  in std_logic;
  CarryIn: in std_logic;
  F: out std_logic_vector (3 downto 0);
  CarryOut: out std_logic;
  AequalB: out std_logic);
end component;

  component Octal_Bus_Driver
  port(
  A: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  En: in std_logic
  );
  end component;

  component Sig_Gen is
    port (clk : in std_logic;
  		    Reset : in std_logic;
          Count : out std_logic;
          InstructRead : out std_logic;
          ModRead : out std_logic;
          RamAddrAndModOut : out std_logic;
          CounterOut: out std_logic
          );
  end component;

  component D_flip_flop is
    port (clk,Din,rst,en : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic);
    end component;


signal interntalCLK, nClkSelectState, ClkSelectState, ModReadTSig, ModOutTSig, ALU_connect, ABLow, ABHigh, CarryFlag, ABLowHigh, ABFlag, ALU_Enable, CarryOut: std_logic;
signal ALU_Out : std_logic_vector (7 downto 0);
begin

  --signal buffering
  CLK <= interntalCLK;

  --clock selector
  CLKFLOP : D_flip_flop port map (CLK_Select, nClkSelectState, '0', '1', ClkSelectState, nClkSelectState);
  interntalCLK <= (UserCLK and nClkSelectState) or (SlowCLK and ClkSelectState);
  --timing generator
  SignalGenerator: Sig_Gen port map (interntalCLK, Reset, Count, InsRegControl, ModReadTSig, ModOutTSig, CounterOutControl);
  --instruction decoder

  --ALU
  ALU_Low: ALU port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), Ins(5), Ins(4), ALU_Out(3 downto 0), ALU_connect, ABLow);
  ALU_High: ALU port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), Ins(5), ALU_connect, ALU_Out(7 downto 4), CarryOut, ABHigh);
  CarryFlagFlop: D_flip_flop port map(InsRegControl, CarryOut, '0', '1', CarryFlag, open);
  ABLowHigh <= ABLow and ABHigh;
  ABFlagFlop: D_flip_flop port map(InsRegControl, ABLowHigh, '0', '1', ABFlag, open);
  ALU_Buffer: Octal_Bus_Driver port map(ALU_Out(7 downto 0), MainBus(7 downto 0), ALU_Enable);




end architecture;
