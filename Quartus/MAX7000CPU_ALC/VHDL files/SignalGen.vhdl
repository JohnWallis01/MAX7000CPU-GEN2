library ieee;
use ieee.std_logic_1164.all;

entity Sig_Gen is
  port (clk : in std_logic;
		    Reset : in std_logic;
        Count : out std_logic;
        InstructRead : out std_logic;
        ModRead : out std_logic;
        RamAddrAndModOut : out std_logic;
        CounterOut: out std_logic
        );
end Sig_Gen;

architecture Sig_Gen_Arch of Sig_Gen is
  component D_flip_flop
  port (clk,Din,rst,en : in std_logic;
           Q: out std_logic;
           Qnot : out std_logic);
  end component;


  signal Q0, Qn0, Q1, Qn1, Q2, Qn2 : std_logic;

begin
D0 : D_flip_flop port map(clk, Qn2, Reset, '1', Q0, Qn0);
D1 : D_flip_flop port map(clk, Q0, Reset, '1', Q1, Qn1);
D2 : D_flip_flop port map(clk, Q1, Reset, '1', Q2, Qn2);

Count <= Qn0 and Qn2;
CounterOut <= Q0 and Qn2;
InstructRead <= Q1 and Qn2;
ModRead <= Q2 and Qn1;
RamAddrAndModOut <= Q2 and Qn0;

end architecture;
