library ieee;
use ieee.std_logic_1164.all;

entity KeyDecoder is
  port(
  Serial_CLK: in std_logic;
  Serial_Data: in std_logic;
  Scan_Code: out std_logic_vector (7 downto 0));
end KeyDecoder;

architecture KeyDecoder_arch of KeyDecoder is

  component undecal_shift_register
  port ( D   : in  std_logic;
         CLK : in  std_logic;
         Q : out std_logic_vector (10 downto 0));
  end component;

  signal nSerial_Clock: std_logic;
  signal key_buffer: std_logic_vector (21 downto 0);
  signal data: std_logic_vector(7 downto 0);
  begin
  nSerial_Clock <= not Serial_CLK;
  ShiftRegA: undecal_shift_register port map(Serial_Data, nSerial_Clock, key_buffer(21 downto 11));
  ShiftRegB: undecal_shift_register port map(key_buffer(11), nSerial_Clock, key_buffer(10 downto 0));

  data(7 downto 0) <= key_buffer(19 downto 12); -- this needs to be selected for the correct data sent by the keyboard
  Scan_Code (7 downto 0) <= data(7 downto 0);

end architecture;
