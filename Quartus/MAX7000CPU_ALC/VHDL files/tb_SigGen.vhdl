library ieee;
use ieee.std_logic_1164.all;

entity SigGen_tb is
end SigGen_tb;

architecture SigGen_tb_arch of SigGen_tb is
  component Sig_Gen
  port (clk : in std_logic;
        Count : out std_logic;
        InstructRead : out std_logic;
        ModRead : out std_logic;
        RamAddrAndModOut : out std_logic;
        CounterOut: out std_logic
        );
  end component;
  signal clk, Count, InstructRead, ModRead, RamAddrAndModOut, CounterOut : std_logic;
begin

  test: Sig_Gen port map(clk => clk, Count => Count, InstructRead => InstructRead, ModRead => ModRead, RamAddrAndModOut => RamAddrAndModOut, CounterOut => CounterOut);

process begin

clk <= 'X';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';
wait for 1 ns;

clk <='0';

wait for 1 ns;

clk <='1';

assert false report "done";
wait;
end process;


end architecture;
