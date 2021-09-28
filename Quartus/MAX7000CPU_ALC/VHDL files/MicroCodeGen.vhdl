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
       Ram_Addr_Enable: out std_logic
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
---double check to make sure the main is disabled
  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10110001" then
  --StackOutControl <= '1'; --active low
  --Ram_Addr_Enable <='0'; --active low
  --MemOutEnable <= '1';
  MainRegOut_Enable <='1'; --check when this needs to actually be enabled might have to enable it every time a read is fired
  else
  --MemOutEnable <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10110000" then
  --StackOutControl <= '1'; --active low
  --Ram_Addr_Enable <='0'; --active low
  --MemWriteControl <= '1';
  else
  --MemWriteControl <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10110011" then
  --StackOutControl <= '0'; --active low
  --Ram_Addr_Enable <='1'; --active low
  --MemWriteControl <= '1';
  StackCountUp <= '1'; --this will move the pointer upwards (rember to maximise memory we start at 64k and count down when adding stuff to the memoery)
  else
  --MemWriteControl <= '0';
  end if;
  end process;

  process(Ins, Carry_Flag, AB_Flag,Module_Read)
  begin
  if Ins = "10110010" then
  --StackOutControl <= '0'; --active low
  --Ram_Addr_Enable <='1'; --active low
  --MemOutEnable <= '1';
  StackCountDown <= '1'; --this will move the pointer downwairs (rember to maximise memory we start at 64k and count down when adding stuff to the memoery)
  else
  MemOutEnable <= '0';
  end if;
  end process;

--notes need to ensure the stack is never allowed to drive when the instruction fetch cyle is firing.

end architecture;
