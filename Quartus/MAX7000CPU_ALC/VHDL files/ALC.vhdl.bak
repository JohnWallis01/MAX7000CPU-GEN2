library ieee;
use ieee.std_logic_1164.all;

entity AL_Controller is
  port(
  A: in std_logic_vector (7 downto 0);
  B: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  Ins: in std_logic_vector(7 downto 0);
  RegAControl: out std_logic;
  CarryFlagIn: in std_logic;
  CarryOut: out std_logic;
  AequalB_FlagIn: in std_logic;
  AequalB_Out: out std_logic;
  FlagIn: in std_logic_vector (5 downto 0);
  FlagOut: out std_logic_vector (5 downto 0);
  SlowCLK: in std_logic;
  FlagCLK: out std_logic;
  CLK_Select: in std_logic;
  UserCLK: in std_logic;
  FastCLK: in std_logic;
  Comm0: in std_logic; --note that these can be in/out depending on configuration of memory contorller
  CLK: out std_logic;
  Comm1: in std_logic; --note that this can be in/out depneidng on configuration of memory controller
  JumpEnable: out std_logic;
  JumpRegLoad: out std_logic;
  RegBControl: out std_logic
  );
end AL_Controller;

architecture AL_Controller_str of AL_Controller is

  component ALU
  port(
  A: in std_logic_vector (3 downto 0);
  B: in std_logic_vector (3 downto 0);
  S: in std_logic_vector (3 downto 0);
  M:  in std_logic;
  CarryIn: in std_logic;
  F: out std_logic_vector (3 downto 0);
  CarryOut: out std_logic;
  AequalB: out std_logic);
end component;

  component Octal_Bus_Driver
  port(
  A: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  En: in std_logic
  );
  end component;

begin
