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
  STATE: out std_logic; --bidirectional
  StackCountDirection: out std_logic
  );
end AL_Controller;

architecture AL_Controller_str of AL_Controller is

--   component ALU
--   port(
--   A: in std_logic_vector (3 downto 0);
--   B: in std_logic_vector (3 downto 0);
--   S: in std_logic_vector (3 downto 0);
--   M:  in std_logic;
--   CarryIn: in std_logic;
--   F: out std_logic_vector (3 downto 0);
--   CarryOut: out std_logic;
--   AequalB: out std_logic);
-- end component;

  component Octal_Bus_Driver
  port(
  A: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  En: in std_logic
  );
  end component;
  --
  -- component Sig_Gen is
  --   port (clk : in std_logic;
  -- 		    Reset : in std_logic;
  --         Count : out std_logic;
  --         InstructRead : out std_logic;
  --         ModRead : out std_logic;
  --         RamAddrAndModOut : out std_logic;
  --         CounterOut: out std_logic
  --         );
  -- end component;

  component D_flip_flop is
    port (clk,Din,rst,en : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic);
    end component;

  -- component Micro_Gen is
  --   port(AB_Flag: in std_logic;
  --        Carry_Flag: in std_logic;
  --        Module_Read: in std_logic;
  --        Ins: in std_logic_vector (7 downto 0);
  --        ModuleOuputEnable: in std_logic;
  --        JumpEnable: out std_logic;
  --        B_Read: out std_logic;
  --        A_Read: out std_logic;
  --        DSP_Read: out std_logic;
  --        JumpBuffer_Read_Low: out std_logic;
  --        JumpBuffer_Read_High: out std_logic;
  --        Addr_Read_Low: out std_logic;
  --        Addr_Read_High: out std_logic;
  --        MemOutEnable: out std_logic;
  --        MemWriteControl: out std_logic;
  --        StackCountUp: out std_logic;
  --        StackCountDown: out std_logic;
  --        ALU_Enable: out std_logic;
  --        MainRegOut_Enable: out std_logic;
  --        StackOutControl: out std_logic;
  --        Ram_Addr_Enable: out std_logic;
  --        Constants: out std_logic_vector;
  --        Const_Enable: out std_logic;
  --        MainRegOutputControl: out std_logic
  --        );
  --   end component;

--verilog ALU

component Circuit74181b is
  port(A: in std_logic_vector(3 downto 0);
       B: in std_logic_vector (3 downto 0);
       S: in std_logic_vector (3 downto 0);
       CNb: in std_logic;
       M: in std_logic;
       F: out std_logic_vector (3 downto 0);
       AEB: out std_logic;
       X: out std_logic;
       Y: out std_logic;
       CN4b: out std_logic
  );
end component;


-- component MircoCodeGen is
--   port(Instruction: in std_logic_vector (7 downto 0);
--        ABFlag: in std_logic;
--        CarryFlag: in std_logic;
--        Reset: in std_logic;
--        clk: in std_logic;
--        Count: out std_logic;
--        CounterOutControl: out std_logic;
--        InsRegControl: out std_logic;
--        RegAControl: out std_logic;
--        RegBControl: out std_logic;
--        MainRegReadControl: out std_logic;
--        LowJumpRegLoad: out std_logic;
--        HighJumpRegLoad: out std_logic;
--        JumpEnable: out std_logic;
--        MainRegOutputControl: out std_logic;
--        MemOutEnable: out std_logic;
--        MemWriteControl: out std_logic;
--        Ram_LowControl: out std_logic;
--        Ram_HighControl: out std_logic;
--        Ram_Addr_Enable: out std_logic;
--        StackCount: out std_logic;
--        StackOutControl: out std_logic;
--        DisplayControl: out std_logic;
--        LowStackJump: out std_logic;
--        HighStackJump: out std_logic;
--        StackCountDirection: out std_logic;
--        Constants: out std_logic_vector (7 downto 0);
--        Constant_Enable: out std_logic;
--        ALU_Enable: out std_logic
--   );
--
-- end component;



component StandbyGen is
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

end component;


signal interntalCLK, nClkSelectState, ClkSelectState, ModReadTSig, ModOutTSig, ALU_connect, ABLow, ABHigh, CarryFlag, ABLowHigh, ABFlag, ALU_Enable, CarryOut, Constant_Enable: std_logic;
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
  -- SignalGenerator: Sig_Gen port map (interntalCLK, Reset, Count, InsRegControl, ModReadTSig, ModOutTSig, CounterOutControl);

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
  --                                       Const_Enable,
  --                                       MainRegOutputControl);
  --


  -- Control_Unit: MircoCodeGen port map(
  --      Ins (7 downto 0),
  --      ABFlag,
  --      CarryFlag,
  --      Reset,
  --      interntalCLK,
  --      Count,
  --      CounterOutControl,
  --      InsRegControl,
  --      RegAControl,
  --      RegBControl,
  --      MainRegReadControl,
  --      LowJumpRegLoad,
  --      HighJumpRegLoad,
  --      JumpEnable,
  --      MainRegOutputControl,
  --      MemOutEnable,
  --      MemWriteControl,
  --      Ram_LowControl,
  --      Ram_HighControl,
  --      Ram_Addr_Enable,
  --      StackCount,
  --      StackOutControl,
  --      DisplayControl,
  --      LowStackJump,
  --      HighStackJump,
  --      StackCountDirection,
  --      Constants (7 downto 0),
  --      Constant_Enable,
  --      ALU_Enable
  -- );


  Control_Unit: StandbyGen port map(
       Ins (7 downto 0),
       ABFlag,
       CarryFlag,
       Reset,
       interntalCLK,
       Count,
       CounterOutControl,
       InsRegControl,
       RegAControl,
       RegBControl,
       MainRegReadControl,
       LowJumpRegLoad,
       HighJumpRegLoad,
       JumpEnable,
       MainRegOutputControl,
       MemOutEnable,
       MemWriteControl,
       Ram_LowControl,
       Ram_HighControl,
       Ram_Addr_Enable,
       StackCount,
       StackOutControl,
       DisplayControl,
       LowStackJump,
       HighStackJump,
       StackCountDirection,
       Constants (7 downto 0),
       Constant_Enable,
       ALU_Enable
  );


  Constants_Buffer: Octal_Bus_Driver port map(Constants(7 downto 0), MainBus(7 downto 0), Constant_Enable);

  --ALU
  -- ALU_Low: ALU port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), Ins(5), Ins(4), ALU_Out(3 downto 0), ALU_connect, ABLow);
  -- ALU_High: ALU port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), Ins(5), ALU_connect, ALU_Out(7 downto 4), CarryOut, ABHigh);
  CarryFlagFlop: D_flip_flop port map(InsRegControl, CarryOut, '0', '1', CarryFlag, open);
  ABLowHigh <= ABLow and ABHigh;
  ABFlagFlop: D_flip_flop port map(InsRegControl, ABLowHigh, '0', '1', ABFlag, open);
  ALU_Buffer: Octal_Bus_Driver port map(ALU_Out(7 downto 0), MainBus(7 downto 0), ALU_Enable);


  --verilog implementation
  ALU_Low: Circuit74181b port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), not Ins(4), Ins(5),  ALU_Out(3 downto 0), ABLow, open, open, ALU_connect);
  ALU_High: Circuit74181b port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), ALU_connect, Ins(5),  ALU_Out(7 downto 4), ABHigh, open, open, CarryOut);

  --commands
                -- {"NOP": "10111111",
                -- "AIN": "10000000",
                -- "BIN": "10000001",
                -- "JMP": "10000010",
                -- "JPE": "10000101",
                -- "JPC": "10000100",
                -- "DSP": "10000011",
                -- "JBI": "10000110",
                -- "JBHI": "10000111",
                --
                -- "FLF": "11110011",
                -- "FLT": "11111100",
                -- "SUM": "11001001",
                -- "SUB": "11010110",
                -- "AOT": "11111111",
                -- "BOT": "11111010",
                -- "A--": "11001111",
                -- "NTA": "11110000",
                -- "NTB": "11110101",
                -- "XOR": "11111001",
                -- "AND": "11111110",
                -- "ORR": "11111011",
                -- "LSH": "11011100",
                --
                -- "MEO": "10110001",
                -- "MEN": "10110000",
                -- "SMA": "10100000",
                -- "SMAH": "10100001",
                --
                -- "STK": "10110010",
                -- "USK": "10110011",
                --
                -- }
                --

                -- need some set stack pointer commands
                --SSK 1010 0010
                --SSKH 1010 0100

end architecture;
