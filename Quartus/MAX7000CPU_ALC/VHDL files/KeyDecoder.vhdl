library ieee;
use ieee.std_logic_1164.all;

entity KeyDecoder is
  port(
  Serial_CLK: in std_logic;
  Serial_Data: in std_logic;
  Scan_Code: out std_logic_vector (7 downto 0);
  Enable: in std_logic);
end KeyDecoder;

architecture KeyDecoder_arch of KeyDecoder is

  component undecal_shift_register
  port ( D   : in  std_logic;
         CLK : in  std_logic;
         Q : out std_logic_vector (10 downto 0));
  end component;

  component Octal_Bus_Driver
  port(
  A: In std_logic_vector (7 downto 0);
  O: Out std_logic_vector (7 downto 0);
  En: In std_logic
  );
end component;

  signal output_enable: std_logic;
  signal key_buffer: std_logic_vector (21 downto 0);
  signal data: std_logic_vector(7 downto 0);
  begin
  OutputBuffer: Octal_Bus_Driver port map(data, Scan_Code, output_enable);
  ShiftRegA: undecal_shift_register port map(Serial_Data, Serial_CLK, key_buffer(10 downto 0));
  ShiftRegB: undecal_shift_register port map(Serial_Data, Serial_CLK, key_buffer(21 downto 11));

  output_enable <= Enable;
  data(7 downto 0) <= key_buffer(8 downto 1);


end architecture;
