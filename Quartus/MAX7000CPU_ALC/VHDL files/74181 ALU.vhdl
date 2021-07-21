library ieee;
use ieee.std_logic_1164.all;

entity ALU is
  port(
  A: in std_logic_vector (3 downto 0);
  B: in std_logic_vector (3 downto 0);
  S: in std_logic_vector (3 downto 0);
  M:  in std_logic;
  CarryIn: in std_logic;
  F: out std_logic_vector (3 downto 0);
  CarryOut: out std_logic;
  AequalB: out std_logic);
  end ALU;

  architecture ALU_str of ALU is

    component INV
      port (A: in std_logic;
      F: out std_logic);
    end component;

    component quad_NOR is
      port(A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      D: in std_logic;
      F: out std_logic);
    end component;

    component triple_NOR is
      port(A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      F: out std_logic);
    end component;

    component dual_NOR is
      port(A: in std_logic;
      B: in std_logic;
      F: out std_logic);
    end component;

    component dual_XOR is
      port(A: in std_logic;
      B: in std_logic;
      F: out std_logic);
    end component;

    component pent_AND is
      port (A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      D: in std_logic;
      E: in std_logic;
      F: out std_logic);
    end component;

    component quad_AND is
      port (A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      D: in std_logic;
      F: out std_logic);
    end component;

    component triple_AND is
      port (A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      F: out std_logic);
    end component;

    component dual_AND is
      port (A: in std_logic;
      B: in std_logic;
      F: out std_logic);
    end component;

    component BUF is
      port (A: in std_logic;
      F: out std_logic);
    end component;

    component quad_OR is
      port(A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      D: in std_logic;
      F: out std_logic);
    end component;

    component dual_NAND is
      port (A: in std_logic;
      B: in std_logic;
      F: out std_logic);
    end component;


    signal nM, Sig0, Sig1, Sig2, Sig3, Sig4, Sig5, Sig6, Sig7, Sig8, Sig9, Sig10, Sig11, Sig12, Sig13, Sig14, Sig15, Sig16, Sig17, Sig18, Sig19, Sig20, Sig21, Sig22, Sig23, Sig24, Sig25, Sig26, Sig27, Sig28, Sig29, Sig30, Sig31, Sig32, Sig33, Sig34, Sig35, Sig36, Sig37, Sig38, Sig39, Sig40, Sig41, NOR0, NOR1, NOR2, NOR3, NOR4, NOR5, NOR6, NOR7  :std_logic;
    signal nB, preF : std_logic_vector (3 downto 0);
    begin
      -- inverters
      MInverter: INV port map(M, nM);
      I0: INV port map(B(0), nB(0));
      I1: INV port map(B(1), nB(1));
      I2: INV port map(B(2), nB(2));
      I3: INV port map(B(3), nB(3));

      --block before triNOR0/dualNOR0
      dualAnd0: dual_AND port map(B(0), S(0), Sig0);
      dualAnd1: dual_AND port map(nB(0), S(1), Sig1);
      triAnd0: triple_AND port map (nB(0), A(0), S(2), Sig2);
      triAnd1: triple_AND port map (A(0), B(0), S(3), Sig3);

      --block before triNOR1/dualNOR1
      dualAnd2: dual_AND port map(B(1), S(0), Sig4);
      dualAnd3: dual_AND port map(nB(1), S(1), Sig5);
      triAnd2: triple_AND port map (nB(1), A(1), S(2), Sig6);
      triAnd3: triple_AND port map (A(1), B(1), S(3), Sig7);

      --block before triNOR2/dualNOR2
      dualAnd4: dual_AND port map(B(2), S(0), Sig8);
      dualAnd5: dual_AND port map(nB(2), S(1), Sig9);
      triAnd4: triple_AND port map (nB(2), A(2), S(2), Sig10);
      triAnd5: triple_AND port map (A(2), B(2), S(3), Sig11);

      --block before triNOR3/dualNOR3
      dualAnd6: dual_AND port map(B(3), S(0), Sig12);
      dualAnd7: dual_AND port map(nB(3), S(1), Sig13);
      triAnd6: triple_AND port map (nB(3), A(3), S(2), Sig14);
      triAnd7: triple_AND port map (A(3), B(3), S(3), Sig15);

      --NORgates
      triNOR0: triple_NOR port map(A(0), Sig0, Sig1, NOR0);
      triNOR1: triple_NOR port map(A(1), Sig4, Sig5, NOR2);
      triNOR2: triple_NOR port map(A(2), Sig8, Sig9, NOR4);
      triNOR3: triple_NOR port map(A(3), Sig12, Sig13, NOR6);
      dualNOR0: dual_NOR port map(Sig2, Sig3, NOR1);
      dualNOR1: dual_NOR port map(Sig6, Sig7, NOR3);
      dualNOR2: dual_NOR port map(Sig10, Sig11, NOR5);
      dualNOR3: dual_NOR port map(Sig14, Sig15, NOR7);

--stage two componentss

      dualNAND0: dual_NAND port map(CarryIn, nM, Sig16);
      I4: INV port map(NOR0, Sig17);
      dualAND8: dual_AND port map(nM, NOR0, Sig18);
      triAND8: triple_AND port map(nM, CarryIn, NOR1, Sig19);
      I5: INV port map(NOR2, Sig20);
      dualAND9: dual_AND port map(nM, NOR2, Sig21);
      triAND9: triple_AND port map(nM, NOR0, NOR3, Sig22);
      quadAND0: quad_AND port map(nM, CarryIn, NOR1, NOR3, Sig23);
      I6: INV port map(NOR4, Sig24);
      dualAND10: dual_AND port map(nM, NOR4, Sig25);
      triAND10: triple_AND port map(nM, NOR2, NOR5, Sig26);
      quadAND1: quad_AND port map(nM, NOR0, NOR3, NOR5, Sig27);
      pentAND0: pent_AND port map(nM, CarryIn, NOR1, NOR3, NOR5, Sig28);
      I7: INV port map(NOR6, Sig29);
      --quadNAND0 not required due to this being involved in generating the propagte siginal for carry lookahead
      --also note that the nors and nands will be rpelaced by standard logic as the generate signal does not need to be produec.
      pentNAND0: pent_AND port map(CarryIn, NOR1, NOR3, NOR5, NOR7, Sig30);
      quadAND2: quad_AND port map(NOR0, NOR3, NOR5, NOR7, Sig31);
      triAND11: triple_AND port map(NOR1, NOR5, NOR7, Sig32);
      dualAND11: dual_AND port map(NOR4, NOR7, Sig33);
      --next row
      dualAND12: dual_AND port map(Sig17, NOR1, Sig34);
      dualNOR4: dual_NOR port map(Sig18, Sig19, Sig35);
      dualAND13: dual_AND port map(Sig20, NOR3, Sig36);
      triNOR4: triple_NOR port map(Sig21, Sig22, Sig23, Sig37);
      dualAND14: dual_AND port map(Sig24, NOR5, Sig38);
      quadNOR0: quad_NOR port map(Sig25, Sig26, Sig27, Sig28, Sig39);
      dualAND15: dual_AND port map(Sig29, NOR7, Sig40);
      -- this is also resdigned due to the lack of generate siginals
      quadOR0: quad_OR port map(Sig31, Sig32, Sig33, NOR6, Sig41);
      --OUTPUT XORS
      XOR0: dual_XOR port map(Sig16, Sig34, preF(0));
      XOR1: dual_XOR port map(Sig35, Sig36, preF(1));
      XOR2: dual_XOR port map(Sig37, Sig38, preF(2));
      XOR3: dual_XOR port map(Sig39, Sig40, preF(3));
      -- buffers to allow the flags to be compared
      BUF0: BUF port map(preF(0), F(0));
      BUF1: BUF port map(preF(1), F(1));
      BUF2: BUF port map(preF(2), F(2));
      BUF3: BUF port map(preF(3), F(3));
      quadAND_X: quad_AND port map(preF(0), preF(1), preF(2), preF(3), AequalB);
      -- bit obesruce as to what this output is on the schematic
      dualNOR_X: dual_NOR port map(Sig30, Sig41, CarryOut);
		end architecture;
