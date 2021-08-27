library ieee;
use ieee.std_logic_1164.all;

entity Sig_Gen is
  port (clk : in std_logic;
        Count : out std_logic;
        InstructRead : out std_logic;
        ModRead : out std_logic;
        RamAddrAndModOut : out std_logic;
        CounterOut: out std_logic
        );
end Sig_Gen;

architecture Sig_Gen_Arch of Sig_Gen is
  component D_flip_flop
  port (clk,Din : in std_logic;
           Q: out std_logic;
           Qnot : out std_logic);
  end component;


  signal

begin

D0 : D_flip_flop port map(clk, )


end architecture;
