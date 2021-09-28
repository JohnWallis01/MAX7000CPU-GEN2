library ieee;
use ieee.std_logic_1164.all;

entity Micro_Gen is
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
       Constants: out std_logic_vector (7 downto 0);
       Const_Enable: out std_logic
       );
end Micro_Gen;

architecture Micro_Gen_beh of Micro_Gen is

  -- signal

begin

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000010" or (Ins = "10000101" and AB_Flag = '1') or (Ins = "10000100" and Carry_Flag = '1') then
  JumpEnable <= '1';
  else
  JumpEnable <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000000" and Module_Read = '1' then
  A_Read <= '1';
  else
  A_Read <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000001" and Module_Read = '1' then
  B_Read <= '1';
  else
  B_Read <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins(7) = '1' and Ins(6)='1' and ModuleOuputEnable = '1' then
  ALU_Enable <= '1';
  else
  ALU_Enable <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000011" and Module_Read = '1' then
  DSP_Read <= '1';
  else
  DSP_Read <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000110" and Module_Read = '1' then
  JumpBuffer_Read_Low <= '1';
  else
  JumpBuffer_Read_Low <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10000111" and Module_Read = '1' then
  JumpBuffer_Read_High <= '1';
  else
  JumpBuffer_Read_High <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10100000" and Module_Read = '1' then
  Addr_Read_Low <= '1';
  else
  Addr_Read_Low <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10100001" and Module_Read = '1' then
  Addr_Read_High <= '1';
  else
  Addr_Read_High <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins(7 downto 4) = "1011" then
    if Ins(3 downto 0) = "0001" then
      --reading something from the ram
      StackOutControl <= '1'; --active low
      Ram_Addr_Enable <='0'; --active low
      MemOutEnable <= '0'; -- active low
      MemWriteControl <= '1'; -- active low
    elsif Ins(3 downto 0) = "0000" then
      --writing something into the ram
      StackOutControl <= '1'; --active low
      Ram_Addr_Enable <='0'; --active low
      MemWriteControl <= '0';
      --Mem out is dont care
    elsif Ins(3 downto 0) = "0011" then
      -- this is pulling something off the stack
      StackOutControl <= '0'; --active low
      Ram_Addr_Enable <='1'; --active low
      MemWriteControl <= '1'; --active low
      MemOutEnable <= '0'; --active low
      StackCountUp <= '1'; --this will move the pointer upwards (rember to maximise memory we start at 64k and count down when adding stuff to the memoery)
    elsif Ins(3 downto 0) = "0010" then
      --pushing something onto the stack
      StackOutControl <= '0'; --active low
      Ram_Addr_Enable <='1'; --active low
      MemWriteControl <= '0'; --active low
      -- mem out dont care
      StackCountDown <= '1'; --this will move the pointer upwards (rember to maximise memory we start at 64k and count down when adding stuff to the memoery)
    else
      --disable the ram otherwise
      StackOutControl <= '1'; --active low
      Ram_Addr_Enable <='1'; --active low
      MemOutEnable <='1'; --active low
      MemWriteControl <= '1'; -- active low
  end if;
  else
    --disabling ram other wise
    StackOutControl <= '1'; --active low
    Ram_Addr_Enable <='1'; --active low
    MemOutEnable <='1'; --active low
    MemWriteControl <= '1'; -- active low
  end if;
  end process;


  process(Ins, Carry_Flag, AB_Flag,Module_Read, ModuleOuputEnable)
  begin
  if Ins(7) = '0' then
  Constants(6 downto 0) <= Ins(6 downto 0);
  Constants(7) <= '0';
  Const_Enable <= ModuleOuputEnable;
  else
  Const_Enable <= '0';
  end if;
  end process;
--notes need to ensure the stack is never allowed to drive when the instruction fetch cyle is firing.

end architecture;
