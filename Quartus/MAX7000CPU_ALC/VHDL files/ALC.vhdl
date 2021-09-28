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
  MemOutEnable: buffer std_logic;
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
  STATE: out std_logic; --bidirectional
  debug_ALU_Enable: out std_logic
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

  component Micro_Gen is
    port(AB_Flag: in std_logic;
         Carry_Flag: in std_logic;
         Module_Read: in std_logic;
         Ins: in std_logic_vector (7 downto 0);
         ModuleOuputEnable: in std_logic;
         JumpEnable: out std_logic;
         B_Read: out std_logic;
         A_Read: out std_logic;
         DSP_Read: out std_logic;
         JumpBuffer_Read_Low: out std_logic;
         JumpBuffer_Read_High: out std_logic;
         Addr_Read_Low: out std_logic;
         Addr_Read_High: out std_logic;
         MemOutEnable: out std_logic;
         MemWriteControl: out std_logic;
         StackCountUp: out std_logic;
         StackCountDown: out std_logic;
         ALU_Enable: out std_logic;
         MainRegOut_Enable: out std_logic;
         StackOutControl: out std_logic;
         Ram_Addr_Enable: out std_logic;
         Constants: out std_logic_vector;
         Const_Enable: out std_logic
         );
    end component;


signal interntalCLK, nClkSelectState, ClkSelectState, ModReadTSig, ModOutTSig, ALU_connect, ABLow, ABHigh, CarryFlag, ABLowHigh, ABFlag, ALU_Enable, CarryOut, intmdStackEnable, intmdRamAddrEnable, intmdStackCountUp, intmdStackCountDown, intmdMainOut, intmdMemWriteControl, Const_Enable: std_logic;
signal ALU_Out, Constants : std_logic_vector (7 downto 0);
begin

  --Clock Based Circuitary All works
  --signal buffering
  CLK <= interntalCLK;

  --clock selector
  CLKFLOP : D_flip_flop port map (CLK_Select, nClkSelectState, Reset, '1', ClkSelectState, nClkSelectState);
  process(UserCLK, SlowCLK, ClkSelectState)
  begin
    if ClkSelectState = '1' then
      interntalCLK <= UserCLK;
    else
      interntalCLK <= SlowCLK;
    end if;
  end process;

  --This timing generator definetly works as intend
  --timing generator
  SignalGenerator: Sig_Gen port map (interntalCLK, Reset, Count, InsRegControl, ModReadTSig, ModOutTSig, CounterOutControl);

  --instruction decoder
  -- InstructionDecoder: Micro_Gen port map(ABFlag,
  --                                       CarryFlag,
  --                                       ModReadTSig,
  --                                       Ins,
  --                                       ModOutTSig,
  --                                       JumpEnable,
  --                                       RegBControl,
  --                                       RegAControl,
  --                                       DisplayControl,
  --                                       LowJumpRegLoad,
  --                                       HighJumpRegLoad,
  --                                       Ram_LowControl,
  --                                       Ram_HighControl,
  --                                       MemOutEnable,
  --                                       intmdMemWriteControl,
  --                                       intmdStackCountUp,
  --                                       intmdStackCountDown,
  --                                       ALU_Enable,
  --                                       intmdMainOut,
  --                                       intmdStackEnable,
  --                                       intmdRamAddrEnable,
  --                                       Constants,
  --                                       Const_Enable);
  --
  -- Constants_Buffer: Octal_Bus_Driver port map(Constants(7 downto 0), MainBus(7 downto 0), Const_Enable);
  -- MainRegOutputControl <= (not ALU_Enable) and (not MemOutEnable) and ModOutTSig;
  -- StackOutControl <= intmdStackEnable and ModOutTSig;
  -- Ram_Addr_Enable <= intmdRamAddrEnable and ModOutTSig;
  -- MemWriteControl <= intmdMemWriteControl and ModReadTSig;




  --ALU
  ALU_Low: ALU port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), Ins(5), Ins(4), ALU_Out(3 downto 0), ALU_connect, ABLow);
  ALU_High: ALU port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), Ins(5), ALU_connect, ALU_Out(7 downto 4), CarryOut, ABHigh);
  CarryFlagFlop: D_flip_flop port map(InsRegControl, CarryOut, '0', '1', CarryFlag, open);
  ABLowHigh <= ABLow and ABHigh;
  ABFlagFlop: D_flip_flop port map(InsRegControl, ABLowHigh, '0', '1', ABFlag, open);
  ALU_Buffer: Octal_Bus_Driver port map(ALU_Out(7 downto 0), MainBus(7 downto 0), ALU_Enable);

  process(Ins, ModOutTSig)
  begin
  if Ins(7) = '1' and Ins(6)='1' and ModOutTSig = '1' then
  ALU_Enable <= '1';
  else
  ALU_Enable <= '0';
  end if;
  end process;

  debug_ALU_Enable <= ALU_Enable;


end architecture;
