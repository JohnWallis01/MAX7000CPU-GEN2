library ieee;
use ieee.std_logic_1164.all;

entity KeyDecoder is
  port(
  Serial_CLK: in std_logic;
  Serial_Data: in std_logic;
  Scan_Code: out std_logic_vector (7 downto 0);
  Output_Enable: in std_logic;
  System_CLK: in std_logic);
end KeyDecoder;

architecture KeyDecoder_arch of KeyDecoder is

  component undecal_shift_register
  port ( D   : in  std_logic;
         CLK : in  std_logic;
         Q : out std_logic_vector (10 downto 0));
  end component;

  component Octal_Bus_Driver
  port(
  A: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  En: in std_logic
  );
  end component;

  component Octal_Register
  port(D: in std_logic_vector(7 downto 0);
       CLK: in std_logic;
       Reset: in std_logic;
       Q: out std_logic_vector (7 downto 0));
  end component;

  component Set_Reset_Latch
      Port ( S : in    STD_LOGIC;
             R : in    STD_LOGIC;
             Q : inout STD_LOGIC);
  end component;


  signal nSerial_Clock, Reset, Key_Released : std_logic;
  signal key_buffer: std_logic_vector (21 downto 0);
  signal data: std_logic_vector(7 downto 0);
  begin
  nSerial_Clock <= not Serial_CLK;
  ShiftRegA: undecal_shift_register port map(Serial_Data, nSerial_Clock, key_buffer(21 downto 11));
  ShiftRegB: undecal_shift_register port map(key_buffer(11), nSerial_Clock, key_buffer(10 downto 0));




  --Reset the Buffer (After it has been read)
  ResetLatch: Set_Reset_Latch port map((not Output_Enable), System_CLK, Reset);



  --check has the key been released
  process(key_buffer)
  begin
    if(key_buffer(8 downto 1) = "11110000") then -- make sure that this will actually allow a read
    Key_Released <='1';
  else
    Key_Released <='0';
  end if;
end process;

  DataBuffer: Octal_Register port map(key_buffer(19 downto 12), Key_Released, Reset, data(7 downto 0));
  OuputBuffer: Octal_Bus_Driver port map(data(7 downto 0), Scan_Code(7 downto 0), Output_Enable);

end architecture;
