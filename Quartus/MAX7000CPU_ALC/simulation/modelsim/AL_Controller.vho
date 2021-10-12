-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/12/2021 19:37:06"

-- 
-- Device: Altera EPM7128SLC84-15 Package PLCC84
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	AL_Controller IS
    PORT (
	regA : IN std_logic_vector(7 DOWNTO 0);
	regB : IN std_logic_vector(7 DOWNTO 0);
	MainBus : OUT std_logic_vector(7 DOWNTO 0);
	Ins : IN std_logic_vector(7 DOWNTO 0);
	Reset : IN std_logic;
	UserCLK : IN std_logic;
	SlowCLK : IN std_logic;
	CLK_Select : IN std_logic;
	CLK : OUT std_logic;
	Count : OUT std_logic;
	CounterOutControl : OUT std_logic;
	InsRegControl : BUFFER std_logic;
	RegAControl : OUT std_logic;
	RegBControl : OUT std_logic;
	MainRegReadControl : OUT std_logic;
	LowJumpRegLoad : OUT std_logic;
	HighJumpRegLoad : OUT std_logic;
	JumpEnable : OUT std_logic;
	MainRegOutputControl : OUT std_logic;
	MemOutEnable : OUT std_logic;
	MemWriteControl : OUT std_logic;
	Ram_LowControl : OUT std_logic;
	Ram_HighControl : OUT std_logic;
	Ram_Addr_Enable : OUT std_logic;
	StackCount : OUT std_logic;
	StackOutControl : OUT std_logic;
	DisplayControl : OUT std_logic;
	LowStackJump : OUT std_logic;
	HighStackJump : OUT std_logic;
	SYNC : OUT std_logic;
	STATE : OUT std_logic;
	StackCountDirection : OUT std_logic
	);
END AL_Controller;

-- Design Ports Information
-- regA[0]	=>  Location: PIN_54
-- regA[1]	=>  Location: PIN_55
-- regA[2]	=>  Location: PIN_56
-- regA[3]	=>  Location: PIN_57
-- regA[4]	=>  Location: PIN_58
-- regA[5]	=>  Location: PIN_60
-- regA[6]	=>  Location: PIN_61
-- regA[7]	=>  Location: PIN_63
-- regB[0]	=>  Location: PIN_64
-- regB[1]	=>  Location: PIN_65
-- regB[2]	=>  Location: PIN_67
-- regB[3]	=>  Location: PIN_68
-- regB[4]	=>  Location: PIN_69
-- regB[5]	=>  Location: PIN_70
-- regB[6]	=>  Location: PIN_73
-- regB[7]	=>  Location: PIN_74
-- Ins[0]	=>  Location: PIN_4
-- Ins[1]	=>  Location: PIN_5
-- Ins[2]	=>  Location: PIN_6
-- Ins[3]	=>  Location: PIN_8
-- Ins[4]	=>  Location: PIN_9
-- Ins[5]	=>  Location: PIN_10
-- Ins[6]	=>  Location: PIN_11
-- Ins[7]	=>  Location: PIN_12
-- Reset	=>  Location: PIN_15
-- UserCLK	=>  Location: PIN_16
-- SlowCLK	=>  Location: PIN_17
-- CLK_Select	=>  Location: PIN_18
-- MemWriteControl	=>  Location: PIN_34
-- Ram_LowControl	=>  Location: PIN_35
-- Ram_HighControl	=>  Location: PIN_36
-- Ram_Addr_Enable	=>  Location: PIN_37
-- StackCount	=>  Location: PIN_39
-- StackOutControl	=>  Location: PIN_40
-- LowStackJump	=>  Location: PIN_75
-- HighStackJump	=>  Location: PIN_76
-- SYNC	=>  Location: PIN_80
-- STATE	=>  Location: PIN_81
-- StackCountDirection	=>  Location: PIN_77
-- CLK	=>  Location: PIN_79
-- MemOutEnable	=>  Location: PIN_33
-- CounterOutControl	=>  Location: PIN_21
-- InsRegControl	=>  Location: PIN_22
-- RegAControl	=>  Location: PIN_24
-- MainRegOutputControl	=>  Location: PIN_31
-- MainRegReadControl	=>  Location: PIN_27
-- Count	=>  Location: PIN_20
-- DisplayControl	=>  Location: PIN_41
-- RegBControl	=>  Location: PIN_25
-- JumpEnable	=>  Location: PIN_30
-- LowJumpRegLoad	=>  Location: PIN_28
-- HighJumpRegLoad	=>  Location: PIN_29
-- MainBus[0]	=>  Location: PIN_44
-- MainBus[1]	=>  Location: PIN_45
-- MainBus[2]	=>  Location: PIN_46
-- MainBus[3]	=>  Location: PIN_48
-- MainBus[4]	=>  Location: PIN_49
-- MainBus[5]	=>  Location: PIN_50
-- MainBus[6]	=>  Location: PIN_51
-- MainBus[7]	=>  Location: PIN_52


ARCHITECTURE structure OF AL_Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_regA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_regB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MainBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Ins : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset : std_logic;
SIGNAL ww_UserCLK : std_logic;
SIGNAL ww_SlowCLK : std_logic;
SIGNAL ww_CLK_Select : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Count : std_logic;
SIGNAL ww_CounterOutControl : std_logic;
SIGNAL ww_InsRegControl : std_logic;
SIGNAL ww_RegAControl : std_logic;
SIGNAL ww_RegBControl : std_logic;
SIGNAL ww_MainRegReadControl : std_logic;
SIGNAL ww_LowJumpRegLoad : std_logic;
SIGNAL ww_HighJumpRegLoad : std_logic;
SIGNAL ww_JumpEnable : std_logic;
SIGNAL ww_MainRegOutputControl : std_logic;
SIGNAL ww_MemOutEnable : std_logic;
SIGNAL ww_MemWriteControl : std_logic;
SIGNAL ww_Ram_LowControl : std_logic;
SIGNAL ww_Ram_HighControl : std_logic;
SIGNAL ww_Ram_Addr_Enable : std_logic;
SIGNAL ww_StackCount : std_logic;
SIGNAL ww_StackOutControl : std_logic;
SIGNAL ww_DisplayControl : std_logic;
SIGNAL ww_LowStackJump : std_logic;
SIGNAL ww_HighStackJump : std_logic;
SIGNAL ww_SYNC : std_logic;
SIGNAL ww_STATE : std_logic;
SIGNAL ww_StackCountDirection : std_logic;
SIGNAL \CLKFLOP|Q~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D2|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D0|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|D1|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|InsRegControl~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegAControl~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegOutputControl~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|MainRegReadControl~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|DisplayControl~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Count~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|RegBControl~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|JumpEnable~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|LowJumpRegLoad~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|HighJumpRegLoad~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|comb~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~33_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[0]~37_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[1]~41_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[2]~45_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[3]~49_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[4]~53_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[5]~57_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[6]~61_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Buffer|O[7]~65_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|ALU_Enable~22_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~13_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~14_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~13_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~14_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~15_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~16_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~17_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~25_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~26_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~28_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~29_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~30_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~31_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~39_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~40_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~41_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~42_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~8_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~16_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~17_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~18_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~19_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~27_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~28_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~29_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~30_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~38_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~39_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~40_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~41_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Control_Unit|Constant_Enable~2sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0~dataout\ : std_logic;
SIGNAL \~GND~0~dataout\ : std_logic;
SIGNAL \~GND~1~dataout\ : std_logic;
SIGNAL \~VCC~1~dataout\ : std_logic;
SIGNAL \~GND~2~dataout\ : std_logic;
SIGNAL \~VCC~2~dataout\ : std_logic;
SIGNAL \~GND~3~dataout\ : std_logic;
SIGNAL \~GND~4~dataout\ : std_logic;
SIGNAL \~GND~5~dataout\ : std_logic;
SIGNAL \~GND~6~dataout\ : std_logic;
SIGNAL \~GND~7~dataout\ : std_logic;
SIGNAL \SlowCLK~dataout\ : std_logic;
SIGNAL \CLK_Select~dataout\ : std_logic;
SIGNAL \Reset~dataout\ : std_logic;
SIGNAL \CLKFLOP|Q~en_dataout\ : std_logic;
SIGNAL \CLKFLOP|Q~reg0_dataout\ : std_logic;
SIGNAL \UserCLK~dataout\ : std_logic;
SIGNAL \interntalCLK~11_dataout\ : std_logic;
SIGNAL \interntalCLK~12_dataout\ : std_logic;
SIGNAL \interntalCLK~13_dataout\ : std_logic;
SIGNAL \interntalCLK~14_dataout\ : std_logic;
SIGNAL \Control_Unit|D0|Q~en_dataout\ : std_logic;
SIGNAL \Control_Unit|D1|Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|D2|Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|D0|Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|InsRegControl~9_dataout\ : std_logic;
SIGNAL \Control_Unit|InsRegControl~15_dataout\ : std_logic;
SIGNAL \Control_Unit|InsRegControl~20_dataout\ : std_logic;
SIGNAL \Control_Unit|RegAControl~3_dataout\ : std_logic;
SIGNAL \Control_Unit|MainRegOutputControl~3_dataout\ : std_logic;
SIGNAL \Control_Unit|MainRegReadControl~4_dataout\ : std_logic;
SIGNAL \Control_Unit|Count~22_dataout\ : std_logic;
SIGNAL \Control_Unit|DisplayControl~4_dataout\ : std_logic;
SIGNAL \Control_Unit|RegBControl~2_dataout\ : std_logic;
SIGNAL \Control_Unit|JumpEnable~6_dataout\ : std_logic;
SIGNAL \Control_Unit|LowJumpRegLoad~3_dataout\ : std_logic;
SIGNAL \Control_Unit|HighJumpRegLoad~4_dataout\ : std_logic;
SIGNAL \Control_Unit|comb~2_dataout\ : std_logic;
SIGNAL \Control_Unit|ALU_Enable~22_pexpout\ : std_logic;
SIGNAL \Control_Unit|ALU_Enable~9_dataout\ : std_logic;
SIGNAL \Control_Unit|ALU_Enable~21_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[0]~6_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[0]~37_dataout\ : std_logic;
SIGNAL \Control_Unit|Constant_Enable~2sexpand0_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[0]~33_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~13_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~14_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~15_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~16_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~17_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[1]~18_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[1]~41_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~48_pexpout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~54_pexpout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~25_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~26_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~28_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~29_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~30_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~31_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[2]~32_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[2]~45_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pexpout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pexpout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pexpout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~39_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~40_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~41_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~42_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Summod4|F[3]~43_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[3]~49_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Emod1|E~18_dataout\ : std_logic;
SIGNAL \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~6_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~7_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~8_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~9_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[0]~10_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[4]~53_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Emod1|E~18_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~16_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~17_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~18_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~19_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[1]~20_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[5]~57_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~49_pexpout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Emod1|E~21_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~18_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~27_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~28_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~29_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~30_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[2]~31_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[6]~61_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Emod1|E~24_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Dmod2|D~22_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~51_pexpout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~38_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~39_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~40_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~41_dataout\ : std_logic;
SIGNAL \ALU_High|Ckt74181b|Summod4|F[3]~42_dataout\ : std_logic;
SIGNAL \ALU_Buffer|O[7]~65_dataout\ : std_logic;
SIGNAL \regB~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ins~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regA~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SlowCLK~dataout\ : std_logic;
SIGNAL \ALT_INV_UserCLK~dataout\ : std_logic;
SIGNAL \ALT_INV_Ins~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_regB~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_regA~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_Low|Ckt74181b|Summod4|ALT_INV_F[2]~32_dataout\ : std_logic;
SIGNAL \ALU_Buffer|ALT_INV_O[0]~33_dataout\ : std_logic;
SIGNAL \Control_Unit|ALT_INV_ALU_Enable~21_dataout\ : std_logic;
SIGNAL \Control_Unit|ALT_INV_ALU_Enable~9_dataout\ : std_logic;
SIGNAL \Control_Unit|D1|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|D0|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|D2|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \Control_Unit|D0|ALT_INV_Q~en_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Q~en_dataout\ : std_logic;

BEGIN

ww_regA <= regA;
ww_regB <= regB;
MainBus <= ww_MainBus;
ww_Ins <= Ins;
ww_Reset <= Reset;
ww_UserCLK <= UserCLK;
ww_SlowCLK <= SlowCLK;
ww_CLK_Select <= CLK_Select;
CLK <= ww_CLK;
Count <= ww_Count;
CounterOutControl <= ww_CounterOutControl;
InsRegControl <= ww_InsRegControl;
RegAControl <= ww_RegAControl;
RegBControl <= ww_RegBControl;
MainRegReadControl <= ww_MainRegReadControl;
LowJumpRegLoad <= ww_LowJumpRegLoad;
HighJumpRegLoad <= ww_HighJumpRegLoad;
JumpEnable <= ww_JumpEnable;
MainRegOutputControl <= ww_MainRegOutputControl;
MemOutEnable <= ww_MemOutEnable;
MemWriteControl <= ww_MemWriteControl;
Ram_LowControl <= ww_Ram_LowControl;
Ram_HighControl <= ww_Ram_HighControl;
Ram_Addr_Enable <= ww_Ram_Addr_Enable;
StackCount <= ww_StackCount;
StackOutControl <= ww_StackOutControl;
DisplayControl <= ww_DisplayControl;
LowStackJump <= ww_LowStackJump;
HighStackJump <= ww_HighStackJump;
SYNC <= ww_SYNC;
STATE <= ww_STATE;
StackCountDirection <= ww_StackCountDirection;

\CLKFLOP|Q~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Q~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Q~en_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\CLKFLOP|Q~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLKFLOP|Q~en_dataout\ & \CLKFLOP|Q~reg0_dataout\);

\CLKFLOP|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Q~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\CLKFLOP|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLKFLOP|Q~en_dataout\ & NOT \CLKFLOP|Q~reg0_dataout\ & \SlowCLK~dataout\);

\interntalCLK~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \UserCLK~dataout\ & \CLKFLOP|Q~reg0_dataout\);

\interntalCLK~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \UserCLK~dataout\ & \CLKFLOP|Q~en_dataout\);

\interntalCLK~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\interntalCLK~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\ & \interntalCLK~12_dataout\);

\Control_Unit|D0|Q~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|D0|Q~en_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\Control_Unit|D0|Q~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\);

\Control_Unit|D2|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D2|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\ & \interntalCLK~12_dataout\);

\Control_Unit|D2|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|D2|Q~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\Control_Unit|D2|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\);

\Control_Unit|D0|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D0|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\ & \interntalCLK~12_dataout\);

\Control_Unit|D0|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|D0|Q~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\Control_Unit|D0|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & 
\Ins~dataout\(1));

\Control_Unit|InsRegControl~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3));

\Control_Unit|InsRegControl~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(6) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\);

\Control_Unit|InsRegControl~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(7) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\);

\Control_Unit|InsRegControl~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|InsRegControl~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\);

\Control_Unit|D1|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|D1|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\ & \interntalCLK~12_dataout\);

\Control_Unit|D1|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|D1|Q~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\Control_Unit|D1|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & 
\Ins~dataout\(1));

\Control_Unit|InsRegControl~15_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3));

\Control_Unit|InsRegControl~15_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(6) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\);

\Control_Unit|InsRegControl~15_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(7) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\);

\Control_Unit|InsRegControl~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|InsRegControl~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & 
NOT \Ins~dataout\(3) & \Ins~dataout\(1));

\Control_Unit|InsRegControl~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & 
NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3));

\Control_Unit|InsRegControl~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(6) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\);

\Control_Unit|InsRegControl~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(7) & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\);

\Control_Unit|InsRegControl~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|InsRegControl~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|InsRegControl~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(0) & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(1) & NOT 
\Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\);

\Control_Unit|RegAControl~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|RegAControl~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegAControl~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT 
\Ins~dataout\(4) & NOT \Ins~dataout\(3) & \Ins~dataout\(1));

\Control_Unit|MainRegOutputControl~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT 
\Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3));

\Control_Unit|MainRegOutputControl~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|MainRegOutputControl~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegOutputControl~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Ins~dataout\(6));

\Control_Unit|MainRegReadControl~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(7) & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\);

\Control_Unit|MainRegReadControl~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|MainRegReadControl~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|MainRegReadControl~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & 
NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(0) & \Ins~dataout\(1));

\Control_Unit|DisplayControl~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|DisplayControl~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|DisplayControl~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|Count~22_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Ins~dataout\(7));

\Control_Unit|Count~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT 
\Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\Control_Unit|Count~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & 
NOT \Ins~dataout\(3) & \Ins~dataout\(1));

\Control_Unit|Count~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & 
NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2));

\Control_Unit|Count~22_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & \Ins~dataout\(6));

\Control_Unit|Count~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|Count~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|Count~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|Count~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|Count~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|Count~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT 
\Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(0) & NOT \Ins~dataout\(1));

\Control_Unit|RegBControl~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|RegBControl~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|RegBControl~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(0) & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & \Ins~dataout\(1) & 
\Control_Unit|D2|Q~reg0_dataout\ & \Control_Unit|D1|Q~reg0_dataout\);

\Control_Unit|JumpEnable~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(0) & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & 
\Ins~dataout\(1) & NOT \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|JumpEnable~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|D0|Q~en_dataout\ & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(0) & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & 
\Ins~dataout\(1));

\Control_Unit|JumpEnable~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|JumpEnable~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|JumpEnable~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & 
NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\Control_Unit|LowJumpRegLoad~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|LowJumpRegLoad~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|LowJumpRegLoad~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Ins~dataout\(7) & NOT \Ins~dataout\(6) & NOT \Ins~dataout\(5) & 
NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & \Ins~dataout\(2) & \Ins~dataout\(1) & \Ins~dataout\(0));

\Control_Unit|HighJumpRegLoad~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|HighJumpRegLoad~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|HighJumpRegLoad~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|comb~2_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D1|Q~reg0_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|comb~2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(7) & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|comb~2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(6) & \Ins~dataout\(7));

\Control_Unit|comb~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|comb~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|comb~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~9_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(7));

\Control_Unit|ALU_Enable~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D1|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|ALU_Enable~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D1|Q~reg0_dataout\ & \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\);

\Control_Unit|ALU_Enable~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\Control_Unit|ALU_Enable~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(6));

\Control_Unit|ALU_Enable~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|ALU_Enable~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|ALU_Enable~21_dataout\ & NOT \Control_Unit|ALU_Enable~9_dataout\ & \Control_Unit|comb~2_dataout\);

\Control_Unit|ALU_Enable~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(7) & \Ins~dataout\(6) & NOT \Control_Unit|D0|Q~reg0_dataout\ & NOT \Control_Unit|D0|Q~en_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & \Control_Unit|comb~2_dataout\);

\Control_Unit|ALU_Enable~21_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|ALU_Enable~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Control_Unit|Constant_Enable~2sexpand0_dataout\ & NOT \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[0]~33_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[0]~33_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~33_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(0) & NOT \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(0) & \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(0) & \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(0) & NOT \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4));

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[0]~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[0]~6_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[0]~37_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(0));

\ALU_Buffer|O[0]~37_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[0]~37_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[0]~37_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(1) & NOT \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(1) & NOT \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[1]~17_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[1]~16_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[1]~15_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[1]~14_dataout\
& \ALU_Low|Ckt74181b|Summod4|F[1]~13_dataout\ & NOT \Ins~dataout\(5));

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[1]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[1]~18_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[1]~41_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(1));

\ALU_Buffer|O[1]~41_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[1]~41_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[1]~41_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(0) & NOT \regB~dataout\(1) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4));

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & \regB~dataout\(0) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & \ALU_Low|Ckt74181b|Summod4|F[2]~25_dataout\);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & \ALU_Low|Ckt74181b|Summod4|F[2]~26_dataout\ & NOT \Ins~dataout\(5) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(0) & \regB~dataout\(1) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3));

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[2]~31_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[2]~30_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[2]~29_dataout\ & 
\ALU_Low|Ckt74181b|Summod4|F[2]~28_dataout\);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~32_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Low|Ckt74181b|Summod4|F[2]~32_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[2]~45_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(2));

\ALU_Buffer|O[2]~45_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[2]~45_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[2]~45_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(2) & \Ins~dataout\(0));

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(2));

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2));

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Dmod2|D~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(0) & \Ins~dataout\(4) & NOT \regB~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(0) & \Ins~dataout\(4) & \regB~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & \regA~dataout\(0) & \Ins~dataout\(4) & NOT \regB~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \Ins~dataout\(1) & \regA~dataout\(0) & \regB~dataout\(0) & NOT \regB~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & \Ins~dataout\(1) & \regA~dataout\(0) & NOT \regB~dataout\(0) & NOT \regB~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[3]~42_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[3]~41_dataout\ & \ALU_Low|Ckt74181b|Summod4|F[3]~40_dataout\ & 
\ALU_Low|Ckt74181b|Summod4|F[3]~39_dataout\);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[3]~43_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Summod4|F[3]~43_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[3]~49_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(3));

\ALU_Buffer|O[3]~49_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[3]~49_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[3]~49_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(3) & \regA~dataout\(3));

\ALU_Low|Ckt74181b|Emod1|E~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(3) & \regA~dataout\(3));

\ALU_Low|Ckt74181b|Emod1|E~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Emod1|E~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Emod1|E~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & \Ins~dataout\(0));

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(3));

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(3));

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Dmod2|D~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Dmod2|D~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_Low|Ckt74181b|Emod1|E~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[0]~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[0]~9_dataout\ & \ALU_High|Ckt74181b|Summod4|F[0]~8_dataout\ & \ALU_High|Ckt74181b|Summod4|F[0]~7_dataout\ & 
\ALU_High|Ckt74181b|Summod4|F[0]~6_dataout\);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[0]~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[0]~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[0]~10_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[4]~53_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(4));

\ALU_Buffer|O[4]~53_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[4]~53_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[4]~53_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|Ckt74181b|Emod1|E~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|Ckt74181b|Emod1|E~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Emod1|E~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(4) & \Ins~dataout\(0));

\ALU_High|Ckt74181b|Dmod2|D~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(4));

\ALU_High|Ckt74181b|Dmod2|D~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(4));

\ALU_High|Ckt74181b|Dmod2|D~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Dmod2|D~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_High|Ckt74181b|Emod1|E~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_Low|Ckt74181b|Emod1|E~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[1]~19_dataout\ & \ALU_High|Ckt74181b|Summod4|F[1]~18_dataout\ & \ALU_High|Ckt74181b|Summod4|F[1]~17_dataout\ & 
\ALU_High|Ckt74181b|Summod4|F[1]~16_dataout\);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[1]~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[1]~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[1]~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[1]~20_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[5]~57_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(5));

\ALU_Buffer|O[5]~57_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[5]~57_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[5]~57_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(5) & \regA~dataout\(5));

\ALU_High|Ckt74181b|Emod1|E~21_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(5) & \regA~dataout\(5));

\ALU_High|Ckt74181b|Emod1|E~21_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Emod1|E~21_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~21_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(5) & \Ins~dataout\(0));

\ALU_High|Ckt74181b|Dmod2|D~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(5));

\ALU_High|Ckt74181b|Dmod2|D~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(5));

\ALU_High|Ckt74181b|Dmod2|D~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Dmod2|D~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & 
\ALU_High|Ckt74181b|Dmod2|D~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Emod1|E~21_dataout\);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_High|Ckt74181b|Emod1|E~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_Low|Ckt74181b|Emod1|E~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[2]~30_dataout\ & \ALU_High|Ckt74181b|Summod4|F[2]~29_dataout\ & \ALU_High|Ckt74181b|Summod4|F[2]~28_dataout\ & 
\ALU_High|Ckt74181b|Summod4|F[2]~27_dataout\);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[2]~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[2]~31_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[6]~61_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7) & NOT \Ins~dataout\(6));

\ALU_Buffer|O[6]~61_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[6]~61_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[6]~61_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(6) & \regA~dataout\(6));

\ALU_High|Ckt74181b|Emod1|E~24_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(6) & \regA~dataout\(6));

\ALU_High|Ckt74181b|Emod1|E~24_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Emod1|E~24_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Emod1|E~24_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(6) & \Ins~dataout\(0));

\ALU_High|Ckt74181b|Dmod2|D~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(6));

\ALU_High|Ckt74181b|Dmod2|D~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(6));

\ALU_High|Ckt74181b|Dmod2|D~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Dmod2|D~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Dmod2|D~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & 
\ALU_High|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~22_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~22_dataout\ & \ALU_High|Ckt74181b|Emod1|E~21_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_High|Ckt74181b|Emod1|E~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~22_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\ & \ALU_Low|Ckt74181b|Emod1|E~18_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~14_dataout\ & \ALU_High|Ckt74181b|Dmod2|D~18_dataout\ & 
\ALU_High|Ckt74181b|Dmod2|D~22_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[3]~41_dataout\ & \ALU_High|Ckt74181b|Summod4|F[3]~40_dataout\ & \ALU_High|Ckt74181b|Summod4|F[3]~39_dataout\ & 
\ALU_High|Ckt74181b|Summod4|F[3]~38_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~42_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[3]~42_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~42_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Summod4|F[3]~42_dataout\ & \Control_Unit|ALU_Enable~21_dataout\);

\ALU_Buffer|O[7]~65_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7));

\ALU_Buffer|O[7]~65_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Buffer|O[7]~65_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Buffer|O[7]~65_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \Ins~dataout\(1));

\Control_Unit|ALU_Enable~22_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3));

\Control_Unit|ALU_Enable~22_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(4));

\Control_Unit|ALU_Enable~22_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Control_Unit|ALU_Enable~22_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Control_Unit|ALU_Enable~22_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \Ins~dataout\(0) & \regB~dataout\(1) & NOT \Ins~dataout\(3) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5));

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4));

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(1) & NOT \Ins~dataout\(5) & NOT \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \Ins~dataout\(0) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~48_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(1) & NOT \Ins~dataout\(2) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regB~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & NOT \regB~dataout\(1) & NOT \Ins~dataout\(2) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & \regB~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regA~dataout\(1) & NOT \regB~dataout\(1) & NOT \Ins~dataout\(5));

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regA~dataout\(1) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regB~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(1) & \regB~dataout\(1) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regB~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|Summod4|F[2]~54_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & \Ins~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(0) & \regA~dataout\(0) & \Ins~dataout\(2) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & \regA~dataout\(1) & \Ins~dataout\(3));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(4) & \regA~dataout\(0) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & \regA~dataout\(0) & \regA~dataout\(1) & \Ins~dataout\(3));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & \regA~dataout\(0) & \regB~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(0));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(0) & \Ins~dataout\(4) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(0) & \Ins~dataout\(4) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0) & \regB~dataout\(1) & \Ins~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regA~dataout\(0) & \regB~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(0));

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|Ckt74181b|CLAmod3|CN4b~20_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[2]~49_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[2]~49_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|Ckt74181b|Dmod2|D~22_dataout\ & \ALU_High|Ckt74181b|Emod1|E~24_dataout\);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|Ckt74181b|Summod4|F[3]~51_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|Ckt74181b|Summod4|F[3]~51_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~VCC~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~VCC~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~VCC~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLKFLOP|Q~en_dataout\ & NOT \CLKFLOP|Q~reg0_dataout\ & NOT \SlowCLK~dataout\);

\interntalCLK~13_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \UserCLK~dataout\ & \CLKFLOP|Q~reg0_dataout\);

\interntalCLK~14_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \UserCLK~dataout\ & \CLKFLOP|Q~en_dataout\);

\ALU_Low|Ckt74181b|Summod4|F[1]~13_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(4) & \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[1]~14_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & \regA~dataout\(0) & \Ins~dataout\(3));

\ALU_Low|Ckt74181b|Summod4|F[1]~15_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(0) & \Ins~dataout\(2) & \regA~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[1]~16_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & \Ins~dataout\(4) & \Ins~dataout\(0));

\ALU_Low|Ckt74181b|Summod4|F[1]~17_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|Ckt74181b|Summod4|F[2]~25_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[2]~26_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|Ckt74181b|Summod4|F[2]~28_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|Ckt74181b|Summod4|F[2]~29_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|Ckt74181b|Summod4|F[2]~30_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(2) & NOT \regA~dataout\(2));

\ALU_Low|Ckt74181b|Summod4|F[2]~31_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(2) & NOT \regA~dataout\(2));

\ALU_Low|Ckt74181b|Summod4|F[3]~39_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(3) & \regA~dataout\(3));

\ALU_Low|Ckt74181b|Summod4|F[3]~40_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(3) & \regA~dataout\(3));

\ALU_Low|Ckt74181b|Summod4|F[3]~41_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_Low|Ckt74181b|Summod4|F[3]~42_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_High|Ckt74181b|Summod4|F[0]~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|Ckt74181b|Summod4|F[0]~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|Ckt74181b|Summod4|F[0]~8_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|Ckt74181b|Summod4|F[0]~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|Ckt74181b|Summod4|F[1]~16_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(5) & \regA~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[1]~17_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(5) & \regA~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[1]~18_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(5) & NOT \regA~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[1]~19_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(5) & NOT \regA~dataout\(5));

\ALU_High|Ckt74181b|Summod4|F[2]~27_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(6) & \regA~dataout\(6));

\ALU_High|Ckt74181b|Summod4|F[2]~28_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(6) & \regA~dataout\(6));

\ALU_High|Ckt74181b|Summod4|F[2]~29_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(6) & NOT \regA~dataout\(6));

\ALU_High|Ckt74181b|Summod4|F[2]~30_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(6) & NOT \regA~dataout\(6));

\ALU_High|Ckt74181b|Summod4|F[3]~38_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(7) & \regA~dataout\(7));

\ALU_High|Ckt74181b|Summod4|F[3]~39_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(7) & \regA~dataout\(7));

\ALU_High|Ckt74181b|Summod4|F[3]~40_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(7) & NOT \regA~dataout\(7));

\ALU_High|Ckt74181b|Summod4|F[3]~41_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(7) & NOT \regA~dataout\(7));

\Control_Unit|Constant_Enable~2sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Control_Unit|D0|Q~en_dataout\ & NOT \Control_Unit|D0|Q~reg0_dataout\ & \Control_Unit|D2|Q~reg0_dataout\ & NOT \Ins~dataout\(7));
\ALT_INV_SlowCLK~dataout\ <= NOT \SlowCLK~dataout\;
\ALT_INV_UserCLK~dataout\ <= NOT \UserCLK~dataout\;
\ALT_INV_Ins~dataout\(6) <= NOT \Ins~dataout\(6);
\ALT_INV_Ins~dataout\(7) <= NOT \Ins~dataout\(7);
\ALT_INV_Ins~dataout\(5) <= NOT \Ins~dataout\(5);
\ALT_INV_Ins~dataout\(4) <= NOT \Ins~dataout\(4);
\ALT_INV_Ins~dataout\(3) <= NOT \Ins~dataout\(3);
\ALT_INV_Ins~dataout\(2) <= NOT \Ins~dataout\(2);
\ALT_INV_Ins~dataout\(1) <= NOT \Ins~dataout\(1);
\ALT_INV_Ins~dataout\(0) <= NOT \Ins~dataout\(0);
\ALT_INV_regB~dataout\(7) <= NOT \regB~dataout\(7);
\ALT_INV_regB~dataout\(6) <= NOT \regB~dataout\(6);
\ALT_INV_regB~dataout\(5) <= NOT \regB~dataout\(5);
\ALT_INV_regB~dataout\(4) <= NOT \regB~dataout\(4);
\ALT_INV_regB~dataout\(3) <= NOT \regB~dataout\(3);
\ALT_INV_regB~dataout\(2) <= NOT \regB~dataout\(2);
\ALT_INV_regB~dataout\(1) <= NOT \regB~dataout\(1);
\ALT_INV_regB~dataout\(0) <= NOT \regB~dataout\(0);
\ALT_INV_regA~dataout\(7) <= NOT \regA~dataout\(7);
\ALT_INV_regA~dataout\(6) <= NOT \regA~dataout\(6);
\ALT_INV_regA~dataout\(5) <= NOT \regA~dataout\(5);
\ALT_INV_regA~dataout\(4) <= NOT \regA~dataout\(4);
\ALT_INV_regA~dataout\(3) <= NOT \regA~dataout\(3);
\ALT_INV_regA~dataout\(2) <= NOT \regA~dataout\(2);
\ALT_INV_regA~dataout\(1) <= NOT \regA~dataout\(1);
\ALT_INV_regA~dataout\(0) <= NOT \regA~dataout\(0);
\ALU_Low|Ckt74181b|Summod4|ALT_INV_F[2]~32_dataout\ <= NOT \ALU_Low|Ckt74181b|Summod4|F[2]~32_dataout\;
\ALU_Buffer|ALT_INV_O[0]~33_dataout\ <= NOT \ALU_Buffer|O[0]~33_dataout\;
\Control_Unit|ALT_INV_ALU_Enable~21_dataout\ <= NOT \Control_Unit|ALU_Enable~21_dataout\;
\Control_Unit|ALT_INV_ALU_Enable~9_dataout\ <= NOT \Control_Unit|ALU_Enable~9_dataout\;
\Control_Unit|D1|ALT_INV_Q~reg0_dataout\ <= NOT \Control_Unit|D1|Q~reg0_dataout\;
\Control_Unit|D0|ALT_INV_Q~reg0_dataout\ <= NOT \Control_Unit|D0|Q~reg0_dataout\;
\Control_Unit|D2|ALT_INV_Q~reg0_dataout\ <= NOT \Control_Unit|D2|Q~reg0_dataout\;
\Control_Unit|D0|ALT_INV_Q~en_dataout\ <= NOT \Control_Unit|D0|Q~en_dataout\;
\CLKFLOP|ALT_INV_Q~reg0_dataout\ <= NOT \CLKFLOP|Q~reg0_dataout\;
\CLKFLOP|ALT_INV_Q~en_dataout\ <= NOT \CLKFLOP|Q~en_dataout\;

-- Location: PIN_63
\regA[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(7),
	dataout => \regA~dataout\(7));

-- Location: LC61
\~VCC~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~VCC~0_pterm0_bus\,
	pterm1 => \~VCC~0_pterm1_bus\,
	pterm2 => \~VCC~0_pterm2_bus\,
	pterm3 => \~VCC~0_pterm3_bus\,
	pterm4 => \~VCC~0_pterm4_bus\,
	pterm5 => \~VCC~0_pterm5_bus\,
	pxor => \~VCC~0_pxor_bus\,
	pclk => \~VCC~0_pclk_bus\,
	papre => \~VCC~0_papre_bus\,
	paclr => \~VCC~0_paclr_bus\,
	pena => \~VCC~0_pena_bus\,
	dataout => \~VCC~0~dataout\);

-- Location: LC59
\~GND~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~0_pterm0_bus\,
	pterm1 => \~GND~0_pterm1_bus\,
	pterm2 => \~GND~0_pterm2_bus\,
	pterm3 => \~GND~0_pterm3_bus\,
	pterm4 => \~GND~0_pterm4_bus\,
	pterm5 => \~GND~0_pterm5_bus\,
	pxor => \~GND~0_pxor_bus\,
	pclk => \~GND~0_pclk_bus\,
	papre => \~GND~0_papre_bus\,
	paclr => \~GND~0_paclr_bus\,
	pena => \~GND~0_pena_bus\,
	dataout => \~GND~0~dataout\);

-- Location: LC57
\~GND~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~1_pterm0_bus\,
	pterm1 => \~GND~1_pterm1_bus\,
	pterm2 => \~GND~1_pterm2_bus\,
	pterm3 => \~GND~1_pterm3_bus\,
	pterm4 => \~GND~1_pterm4_bus\,
	pterm5 => \~GND~1_pterm5_bus\,
	pxor => \~GND~1_pxor_bus\,
	pclk => \~GND~1_pclk_bus\,
	papre => \~GND~1_papre_bus\,
	paclr => \~GND~1_paclr_bus\,
	pena => \~GND~1_pena_bus\,
	dataout => \~GND~1~dataout\);

-- Location: LC56
\~VCC~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~VCC~1_pterm0_bus\,
	pterm1 => \~VCC~1_pterm1_bus\,
	pterm2 => \~VCC~1_pterm2_bus\,
	pterm3 => \~VCC~1_pterm3_bus\,
	pterm4 => \~VCC~1_pterm4_bus\,
	pterm5 => \~VCC~1_pterm5_bus\,
	pxor => \~VCC~1_pxor_bus\,
	pclk => \~VCC~1_pclk_bus\,
	papre => \~VCC~1_papre_bus\,
	paclr => \~VCC~1_paclr_bus\,
	pena => \~VCC~1_pena_bus\,
	dataout => \~VCC~1~dataout\);

-- Location: LC53
\~GND~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~2_pterm0_bus\,
	pterm1 => \~GND~2_pterm1_bus\,
	pterm2 => \~GND~2_pterm2_bus\,
	pterm3 => \~GND~2_pterm3_bus\,
	pterm4 => \~GND~2_pterm4_bus\,
	pterm5 => \~GND~2_pterm5_bus\,
	pxor => \~GND~2_pxor_bus\,
	pclk => \~GND~2_pclk_bus\,
	papre => \~GND~2_papre_bus\,
	paclr => \~GND~2_paclr_bus\,
	pena => \~GND~2_pena_bus\,
	dataout => \~GND~2~dataout\);

-- Location: LC51
\~VCC~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~VCC~2_pterm0_bus\,
	pterm1 => \~VCC~2_pterm1_bus\,
	pterm2 => \~VCC~2_pterm2_bus\,
	pterm3 => \~VCC~2_pterm3_bus\,
	pterm4 => \~VCC~2_pterm4_bus\,
	pterm5 => \~VCC~2_pterm5_bus\,
	pxor => \~VCC~2_pxor_bus\,
	pclk => \~VCC~2_pclk_bus\,
	papre => \~VCC~2_papre_bus\,
	paclr => \~VCC~2_paclr_bus\,
	pena => \~VCC~2_pena_bus\,
	dataout => \~VCC~2~dataout\);

-- Location: LC118
\~GND~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~3_pterm0_bus\,
	pterm1 => \~GND~3_pterm1_bus\,
	pterm2 => \~GND~3_pterm2_bus\,
	pterm3 => \~GND~3_pterm3_bus\,
	pterm4 => \~GND~3_pterm4_bus\,
	pterm5 => \~GND~3_pterm5_bus\,
	pxor => \~GND~3_pxor_bus\,
	pclk => \~GND~3_pclk_bus\,
	papre => \~GND~3_papre_bus\,
	paclr => \~GND~3_paclr_bus\,
	pena => \~GND~3_pena_bus\,
	dataout => \~GND~3~dataout\);

-- Location: LC120
\~GND~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~4_pterm0_bus\,
	pterm1 => \~GND~4_pterm1_bus\,
	pterm2 => \~GND~4_pterm2_bus\,
	pterm3 => \~GND~4_pterm3_bus\,
	pterm4 => \~GND~4_pterm4_bus\,
	pterm5 => \~GND~4_pterm5_bus\,
	pxor => \~GND~4_pxor_bus\,
	pclk => \~GND~4_pclk_bus\,
	papre => \~GND~4_papre_bus\,
	paclr => \~GND~4_paclr_bus\,
	pena => \~GND~4_pena_bus\,
	dataout => \~GND~4~dataout\);

-- Location: LC126
\~GND~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~5_pterm0_bus\,
	pterm1 => \~GND~5_pterm1_bus\,
	pterm2 => \~GND~5_pterm2_bus\,
	pterm3 => \~GND~5_pterm3_bus\,
	pterm4 => \~GND~5_pterm4_bus\,
	pterm5 => \~GND~5_pterm5_bus\,
	pxor => \~GND~5_pxor_bus\,
	pclk => \~GND~5_pclk_bus\,
	papre => \~GND~5_papre_bus\,
	paclr => \~GND~5_paclr_bus\,
	pena => \~GND~5_pena_bus\,
	dataout => \~GND~5~dataout\);

-- Location: LC128
\~GND~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~6_pterm0_bus\,
	pterm1 => \~GND~6_pterm1_bus\,
	pterm2 => \~GND~6_pterm2_bus\,
	pterm3 => \~GND~6_pterm3_bus\,
	pterm4 => \~GND~6_pterm4_bus\,
	pterm5 => \~GND~6_pterm5_bus\,
	pxor => \~GND~6_pxor_bus\,
	pclk => \~GND~6_pclk_bus\,
	papre => \~GND~6_papre_bus\,
	paclr => \~GND~6_paclr_bus\,
	pena => \~GND~6_pena_bus\,
	dataout => \~GND~6~dataout\);

-- Location: LC123
\~GND~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~7_pterm0_bus\,
	pterm1 => \~GND~7_pterm1_bus\,
	pterm2 => \~GND~7_pterm2_bus\,
	pterm3 => \~GND~7_pterm3_bus\,
	pterm4 => \~GND~7_pterm4_bus\,
	pterm5 => \~GND~7_pterm5_bus\,
	pxor => \~GND~7_pxor_bus\,
	pclk => \~GND~7_pclk_bus\,
	papre => \~GND~7_papre_bus\,
	paclr => \~GND~7_paclr_bus\,
	pena => \~GND~7_pena_bus\,
	dataout => \~GND~7~dataout\);

-- Location: PIN_17
\SlowCLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SlowCLK,
	dataout => \SlowCLK~dataout\);

-- Location: PIN_18
\CLK_Select~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK_Select,
	dataout => \CLK_Select~dataout\);

-- Location: PIN_15
\Reset~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	dataout => \Reset~dataout\);

-- Location: LC10
\CLKFLOP|Q~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Q~en_pterm0_bus\,
	pterm1 => \CLKFLOP|Q~en_pterm1_bus\,
	pterm2 => \CLKFLOP|Q~en_pterm2_bus\,
	pterm3 => \CLKFLOP|Q~en_pterm3_bus\,
	pterm4 => \CLKFLOP|Q~en_pterm4_bus\,
	pterm5 => \CLKFLOP|Q~en_pterm5_bus\,
	pxor => \CLKFLOP|Q~en_pxor_bus\,
	pclk => \CLKFLOP|Q~en_pclk_bus\,
	papre => \CLKFLOP|Q~en_papre_bus\,
	paclr => \CLKFLOP|Q~en_paclr_bus\,
	pena => \CLKFLOP|Q~en_pena_bus\,
	dataout => \CLKFLOP|Q~en_dataout\);

-- Location: LC48
\CLKFLOP|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Q~reg0_pterm0_bus\,
	pterm1 => \CLKFLOP|Q~reg0_pterm1_bus\,
	pterm2 => \CLKFLOP|Q~reg0_pterm2_bus\,
	pterm3 => \CLKFLOP|Q~reg0_pterm3_bus\,
	pterm4 => \CLKFLOP|Q~reg0_pterm4_bus\,
	pterm5 => \CLKFLOP|Q~reg0_pterm5_bus\,
	pxor => \CLKFLOP|Q~reg0_pxor_bus\,
	pclk => \CLKFLOP|Q~reg0_pclk_bus\,
	papre => \CLKFLOP|Q~reg0_papre_bus\,
	paclr => \CLKFLOP|Q~reg0_paclr_bus\,
	pena => \CLKFLOP|Q~reg0_pena_bus\,
	dataout => \CLKFLOP|Q~reg0_dataout\);

-- Location: PIN_16
\UserCLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_UserCLK,
	dataout => \UserCLK~dataout\);

-- Location: LC125
\interntalCLK~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \interntalCLK~11_pterm0_bus\,
	pterm1 => \interntalCLK~11_pterm1_bus\,
	pterm2 => \interntalCLK~11_pterm2_bus\,
	pterm3 => \interntalCLK~11_pterm3_bus\,
	pterm4 => \interntalCLK~11_pterm4_bus\,
	pterm5 => \interntalCLK~11_pterm5_bus\,
	pxor => \interntalCLK~11_pxor_bus\,
	pclk => \interntalCLK~11_pclk_bus\,
	papre => \interntalCLK~11_papre_bus\,
	paclr => \interntalCLK~11_paclr_bus\,
	pena => \interntalCLK~11_pena_bus\,
	dataout => \interntalCLK~11_dataout\);

-- Location: PIN_5
\Ins[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(1),
	dataout => \Ins~dataout\(1));

-- Location: PIN_8
\Ins[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(3),
	dataout => \Ins~dataout\(3));

-- Location: PIN_9
\Ins[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(4),
	dataout => \Ins~dataout\(4));

-- Location: PIN_10
\Ins[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(5),
	dataout => \Ins~dataout\(5));

-- Location: SEXP40
\interntalCLK~12\ : max_sexp
PORT MAP (
	datain => \interntalCLK~12_datain_bus\,
	dataout => \interntalCLK~12_dataout\);

-- Location: SEXP39
\interntalCLK~13\ : max_sexp
PORT MAP (
	datain => \interntalCLK~13_datain_bus\,
	dataout => \interntalCLK~13_dataout\);

-- Location: SEXP38
\interntalCLK~14\ : max_sexp
PORT MAP (
	datain => \interntalCLK~14_datain_bus\,
	dataout => \interntalCLK~14_dataout\);

-- Location: LC42
\Control_Unit|D0|Q~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|D0|Q~en_pterm0_bus\,
	pterm1 => \Control_Unit|D0|Q~en_pterm1_bus\,
	pterm2 => \Control_Unit|D0|Q~en_pterm2_bus\,
	pterm3 => \Control_Unit|D0|Q~en_pterm3_bus\,
	pterm4 => \Control_Unit|D0|Q~en_pterm4_bus\,
	pterm5 => \Control_Unit|D0|Q~en_pterm5_bus\,
	pxor => \Control_Unit|D0|Q~en_pxor_bus\,
	pclk => \Control_Unit|D0|Q~en_pclk_bus\,
	papre => \Control_Unit|D0|Q~en_papre_bus\,
	paclr => \Control_Unit|D0|Q~en_paclr_bus\,
	pena => \Control_Unit|D0|Q~en_pena_bus\,
	dataout => \Control_Unit|D0|Q~en_dataout\);

-- Location: LC44
\Control_Unit|D1|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|D1|Q~reg0_pterm0_bus\,
	pterm1 => \Control_Unit|D1|Q~reg0_pterm1_bus\,
	pterm2 => \Control_Unit|D1|Q~reg0_pterm2_bus\,
	pterm3 => \Control_Unit|D1|Q~reg0_pterm3_bus\,
	pterm4 => \Control_Unit|D1|Q~reg0_pterm4_bus\,
	pterm5 => \Control_Unit|D1|Q~reg0_pterm5_bus\,
	pxor => \Control_Unit|D1|Q~reg0_pxor_bus\,
	pclk => \Control_Unit|D1|Q~reg0_pclk_bus\,
	papre => \Control_Unit|D1|Q~reg0_papre_bus\,
	paclr => \Control_Unit|D1|Q~reg0_paclr_bus\,
	pena => \Control_Unit|D1|Q~reg0_pena_bus\,
	dataout => \Control_Unit|D1|Q~reg0_dataout\);

-- Location: LC41
\Control_Unit|D2|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|D2|Q~reg0_pterm0_bus\,
	pterm1 => \Control_Unit|D2|Q~reg0_pterm1_bus\,
	pterm2 => \Control_Unit|D2|Q~reg0_pterm2_bus\,
	pterm3 => \Control_Unit|D2|Q~reg0_pterm3_bus\,
	pterm4 => \Control_Unit|D2|Q~reg0_pterm4_bus\,
	pterm5 => \Control_Unit|D2|Q~reg0_pterm5_bus\,
	pxor => \Control_Unit|D2|Q~reg0_pxor_bus\,
	pclk => \Control_Unit|D2|Q~reg0_pclk_bus\,
	papre => \Control_Unit|D2|Q~reg0_papre_bus\,
	paclr => \Control_Unit|D2|Q~reg0_paclr_bus\,
	pena => \Control_Unit|D2|Q~reg0_pena_bus\,
	dataout => \Control_Unit|D2|Q~reg0_dataout\);

-- Location: LC36
\Control_Unit|D0|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|D0|Q~reg0_pterm0_bus\,
	pterm1 => \Control_Unit|D0|Q~reg0_pterm1_bus\,
	pterm2 => \Control_Unit|D0|Q~reg0_pterm2_bus\,
	pterm3 => \Control_Unit|D0|Q~reg0_pterm3_bus\,
	pterm4 => \Control_Unit|D0|Q~reg0_pterm4_bus\,
	pterm5 => \Control_Unit|D0|Q~reg0_pterm5_bus\,
	pxor => \Control_Unit|D0|Q~reg0_pxor_bus\,
	pclk => \Control_Unit|D0|Q~reg0_pclk_bus\,
	papre => \Control_Unit|D0|Q~reg0_papre_bus\,
	paclr => \Control_Unit|D0|Q~reg0_paclr_bus\,
	pena => \Control_Unit|D0|Q~reg0_pena_bus\,
	dataout => \Control_Unit|D0|Q~reg0_dataout\);

-- Location: PIN_6
\Ins[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(2),
	dataout => \Ins~dataout\(2));

-- Location: PIN_11
\Ins[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(6),
	dataout => \Ins~dataout\(6));

-- Location: PIN_12
\Ins[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(7),
	dataout => \Ins~dataout\(7));

-- Location: LC64
\Control_Unit|InsRegControl~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|InsRegControl~9_pterm0_bus\,
	pterm1 => \Control_Unit|InsRegControl~9_pterm1_bus\,
	pterm2 => \Control_Unit|InsRegControl~9_pterm2_bus\,
	pterm3 => \Control_Unit|InsRegControl~9_pterm3_bus\,
	pterm4 => \Control_Unit|InsRegControl~9_pterm4_bus\,
	pterm5 => \Control_Unit|InsRegControl~9_pterm5_bus\,
	pxor => \Control_Unit|InsRegControl~9_pxor_bus\,
	pclk => \Control_Unit|InsRegControl~9_pclk_bus\,
	papre => \Control_Unit|InsRegControl~9_papre_bus\,
	paclr => \Control_Unit|InsRegControl~9_paclr_bus\,
	pena => \Control_Unit|InsRegControl~9_pena_bus\,
	dataout => \Control_Unit|InsRegControl~9_dataout\);

-- Location: LC19
\Control_Unit|InsRegControl~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|InsRegControl~15_pterm0_bus\,
	pterm1 => \Control_Unit|InsRegControl~15_pterm1_bus\,
	pterm2 => \Control_Unit|InsRegControl~15_pterm2_bus\,
	pterm3 => \Control_Unit|InsRegControl~15_pterm3_bus\,
	pterm4 => \Control_Unit|InsRegControl~15_pterm4_bus\,
	pterm5 => \Control_Unit|InsRegControl~15_pterm5_bus\,
	pxor => \Control_Unit|InsRegControl~15_pxor_bus\,
	pclk => \Control_Unit|InsRegControl~15_pclk_bus\,
	papre => \Control_Unit|InsRegControl~15_papre_bus\,
	paclr => \Control_Unit|InsRegControl~15_paclr_bus\,
	pena => \Control_Unit|InsRegControl~15_pena_bus\,
	dataout => \Control_Unit|InsRegControl~15_dataout\);

-- Location: LC17
\Control_Unit|InsRegControl~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|InsRegControl~20_pterm0_bus\,
	pterm1 => \Control_Unit|InsRegControl~20_pterm1_bus\,
	pterm2 => \Control_Unit|InsRegControl~20_pterm2_bus\,
	pterm3 => \Control_Unit|InsRegControl~20_pterm3_bus\,
	pterm4 => \Control_Unit|InsRegControl~20_pterm4_bus\,
	pterm5 => \Control_Unit|InsRegControl~20_pterm5_bus\,
	pxor => \Control_Unit|InsRegControl~20_pxor_bus\,
	pclk => \Control_Unit|InsRegControl~20_pclk_bus\,
	papre => \Control_Unit|InsRegControl~20_papre_bus\,
	paclr => \Control_Unit|InsRegControl~20_paclr_bus\,
	pena => \Control_Unit|InsRegControl~20_pena_bus\,
	dataout => \Control_Unit|InsRegControl~20_dataout\);

-- Location: PIN_4
\Ins[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(0),
	dataout => \Ins~dataout\(0));

-- Location: LC46
\Control_Unit|RegAControl~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|RegAControl~3_pterm0_bus\,
	pterm1 => \Control_Unit|RegAControl~3_pterm1_bus\,
	pterm2 => \Control_Unit|RegAControl~3_pterm2_bus\,
	pterm3 => \Control_Unit|RegAControl~3_pterm3_bus\,
	pterm4 => \Control_Unit|RegAControl~3_pterm4_bus\,
	pterm5 => \Control_Unit|RegAControl~3_pterm5_bus\,
	pxor => \Control_Unit|RegAControl~3_pxor_bus\,
	pclk => \Control_Unit|RegAControl~3_pclk_bus\,
	papre => \Control_Unit|RegAControl~3_papre_bus\,
	paclr => \Control_Unit|RegAControl~3_paclr_bus\,
	pena => \Control_Unit|RegAControl~3_pena_bus\,
	dataout => \Control_Unit|RegAControl~3_dataout\);

-- Location: LC35
\Control_Unit|MainRegOutputControl~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|MainRegOutputControl~3_pterm0_bus\,
	pterm1 => \Control_Unit|MainRegOutputControl~3_pterm1_bus\,
	pterm2 => \Control_Unit|MainRegOutputControl~3_pterm2_bus\,
	pterm3 => \Control_Unit|MainRegOutputControl~3_pterm3_bus\,
	pterm4 => \Control_Unit|MainRegOutputControl~3_pterm4_bus\,
	pterm5 => \Control_Unit|MainRegOutputControl~3_pterm5_bus\,
	pxor => \Control_Unit|MainRegOutputControl~3_pxor_bus\,
	pclk => \Control_Unit|MainRegOutputControl~3_pclk_bus\,
	papre => \Control_Unit|MainRegOutputControl~3_papre_bus\,
	paclr => \Control_Unit|MainRegOutputControl~3_paclr_bus\,
	pena => \Control_Unit|MainRegOutputControl~3_pena_bus\,
	dataout => \Control_Unit|MainRegOutputControl~3_dataout\);

-- Location: LC43
\Control_Unit|MainRegReadControl~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|MainRegReadControl~4_pterm0_bus\,
	pterm1 => \Control_Unit|MainRegReadControl~4_pterm1_bus\,
	pterm2 => \Control_Unit|MainRegReadControl~4_pterm2_bus\,
	pterm3 => \Control_Unit|MainRegReadControl~4_pterm3_bus\,
	pterm4 => \Control_Unit|MainRegReadControl~4_pterm4_bus\,
	pterm5 => \Control_Unit|MainRegReadControl~4_pterm5_bus\,
	pxor => \Control_Unit|MainRegReadControl~4_pxor_bus\,
	pclk => \Control_Unit|MainRegReadControl~4_pclk_bus\,
	papre => \Control_Unit|MainRegReadControl~4_papre_bus\,
	paclr => \Control_Unit|MainRegReadControl~4_paclr_bus\,
	pena => \Control_Unit|MainRegReadControl~4_pena_bus\,
	dataout => \Control_Unit|MainRegReadControl~4_dataout\);

-- Location: LC21
\Control_Unit|Count~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|Count~22_pterm0_bus\,
	pterm1 => \Control_Unit|Count~22_pterm1_bus\,
	pterm2 => \Control_Unit|Count~22_pterm2_bus\,
	pterm3 => \Control_Unit|Count~22_pterm3_bus\,
	pterm4 => \Control_Unit|Count~22_pterm4_bus\,
	pterm5 => \Control_Unit|Count~22_pterm5_bus\,
	pxor => \Control_Unit|Count~22_pxor_bus\,
	pclk => \Control_Unit|Count~22_pclk_bus\,
	papre => \Control_Unit|Count~22_papre_bus\,
	paclr => \Control_Unit|Count~22_paclr_bus\,
	pena => \Control_Unit|Count~22_pena_bus\,
	dataout => \Control_Unit|Count~22_dataout\);

-- Location: LC49
\Control_Unit|DisplayControl~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|DisplayControl~4_pterm0_bus\,
	pterm1 => \Control_Unit|DisplayControl~4_pterm1_bus\,
	pterm2 => \Control_Unit|DisplayControl~4_pterm2_bus\,
	pterm3 => \Control_Unit|DisplayControl~4_pterm3_bus\,
	pterm4 => \Control_Unit|DisplayControl~4_pterm4_bus\,
	pterm5 => \Control_Unit|DisplayControl~4_pterm5_bus\,
	pxor => \Control_Unit|DisplayControl~4_pxor_bus\,
	pclk => \Control_Unit|DisplayControl~4_pclk_bus\,
	papre => \Control_Unit|DisplayControl~4_papre_bus\,
	paclr => \Control_Unit|DisplayControl~4_paclr_bus\,
	pena => \Control_Unit|DisplayControl~4_pena_bus\,
	dataout => \Control_Unit|DisplayControl~4_dataout\);

-- Location: LC45
\Control_Unit|RegBControl~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|RegBControl~2_pterm0_bus\,
	pterm1 => \Control_Unit|RegBControl~2_pterm1_bus\,
	pterm2 => \Control_Unit|RegBControl~2_pterm2_bus\,
	pterm3 => \Control_Unit|RegBControl~2_pterm3_bus\,
	pterm4 => \Control_Unit|RegBControl~2_pterm4_bus\,
	pterm5 => \Control_Unit|RegBControl~2_pterm5_bus\,
	pxor => \Control_Unit|RegBControl~2_pxor_bus\,
	pclk => \Control_Unit|RegBControl~2_pclk_bus\,
	papre => \Control_Unit|RegBControl~2_papre_bus\,
	paclr => \Control_Unit|RegBControl~2_paclr_bus\,
	pena => \Control_Unit|RegBControl~2_pena_bus\,
	dataout => \Control_Unit|RegBControl~2_dataout\);

-- Location: LC37
\Control_Unit|JumpEnable~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|JumpEnable~6_pterm0_bus\,
	pterm1 => \Control_Unit|JumpEnable~6_pterm1_bus\,
	pterm2 => \Control_Unit|JumpEnable~6_pterm2_bus\,
	pterm3 => \Control_Unit|JumpEnable~6_pterm3_bus\,
	pterm4 => \Control_Unit|JumpEnable~6_pterm4_bus\,
	pterm5 => \Control_Unit|JumpEnable~6_pterm5_bus\,
	pxor => \Control_Unit|JumpEnable~6_pxor_bus\,
	pclk => \Control_Unit|JumpEnable~6_pclk_bus\,
	papre => \Control_Unit|JumpEnable~6_papre_bus\,
	paclr => \Control_Unit|JumpEnable~6_paclr_bus\,
	pena => \Control_Unit|JumpEnable~6_pena_bus\,
	dataout => \Control_Unit|JumpEnable~6_dataout\);

-- Location: LC40
\Control_Unit|LowJumpRegLoad~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|LowJumpRegLoad~3_pterm0_bus\,
	pterm1 => \Control_Unit|LowJumpRegLoad~3_pterm1_bus\,
	pterm2 => \Control_Unit|LowJumpRegLoad~3_pterm2_bus\,
	pterm3 => \Control_Unit|LowJumpRegLoad~3_pterm3_bus\,
	pterm4 => \Control_Unit|LowJumpRegLoad~3_pterm4_bus\,
	pterm5 => \Control_Unit|LowJumpRegLoad~3_pterm5_bus\,
	pxor => \Control_Unit|LowJumpRegLoad~3_pxor_bus\,
	pclk => \Control_Unit|LowJumpRegLoad~3_pclk_bus\,
	papre => \Control_Unit|LowJumpRegLoad~3_papre_bus\,
	paclr => \Control_Unit|LowJumpRegLoad~3_paclr_bus\,
	pena => \Control_Unit|LowJumpRegLoad~3_pena_bus\,
	dataout => \Control_Unit|LowJumpRegLoad~3_dataout\);

-- Location: LC38
\Control_Unit|HighJumpRegLoad~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|HighJumpRegLoad~4_pterm0_bus\,
	pterm1 => \Control_Unit|HighJumpRegLoad~4_pterm1_bus\,
	pterm2 => \Control_Unit|HighJumpRegLoad~4_pterm2_bus\,
	pterm3 => \Control_Unit|HighJumpRegLoad~4_pterm3_bus\,
	pterm4 => \Control_Unit|HighJumpRegLoad~4_pterm4_bus\,
	pterm5 => \Control_Unit|HighJumpRegLoad~4_pterm5_bus\,
	pxor => \Control_Unit|HighJumpRegLoad~4_pxor_bus\,
	pclk => \Control_Unit|HighJumpRegLoad~4_pclk_bus\,
	papre => \Control_Unit|HighJumpRegLoad~4_papre_bus\,
	paclr => \Control_Unit|HighJumpRegLoad~4_paclr_bus\,
	pena => \Control_Unit|HighJumpRegLoad~4_pena_bus\,
	dataout => \Control_Unit|HighJumpRegLoad~4_dataout\);

-- Location: LC29
\Control_Unit|comb~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|comb~2_pterm0_bus\,
	pterm1 => \Control_Unit|comb~2_pterm1_bus\,
	pterm2 => \Control_Unit|comb~2_pterm2_bus\,
	pterm3 => \Control_Unit|comb~2_pterm3_bus\,
	pterm4 => \Control_Unit|comb~2_pterm4_bus\,
	pterm5 => \Control_Unit|comb~2_pterm5_bus\,
	pxor => \Control_Unit|comb~2_pxor_bus\,
	pclk => \Control_Unit|comb~2_pclk_bus\,
	papre => \Control_Unit|comb~2_papre_bus\,
	paclr => \Control_Unit|comb~2_paclr_bus\,
	pena => \Control_Unit|comb~2_pena_bus\,
	dataout => \Control_Unit|comb~2_dataout\);

-- Location: LC33
\Control_Unit|ALU_Enable~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|ALU_Enable~22_pterm0_bus\,
	pterm1 => \Control_Unit|ALU_Enable~22_pterm1_bus\,
	pterm2 => \Control_Unit|ALU_Enable~22_pterm2_bus\,
	pterm3 => \Control_Unit|ALU_Enable~22_pterm3_bus\,
	pterm4 => \Control_Unit|ALU_Enable~22_pterm4_bus\,
	pterm5 => \Control_Unit|ALU_Enable~22_pterm5_bus\,
	pxor => \Control_Unit|ALU_Enable~22_pxor_bus\,
	pclk => \Control_Unit|ALU_Enable~22_pclk_bus\,
	papre => \Control_Unit|ALU_Enable~22_papre_bus\,
	paclr => \Control_Unit|ALU_Enable~22_paclr_bus\,
	pena => \Control_Unit|ALU_Enable~22_pena_bus\,
	pexpout => \Control_Unit|ALU_Enable~22_pexpout\);

-- Location: LC34
\Control_Unit|ALU_Enable~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Control_Unit|ALU_Enable~22_pexpout\,
	pterm0 => \Control_Unit|ALU_Enable~9_pterm0_bus\,
	pterm1 => \Control_Unit|ALU_Enable~9_pterm1_bus\,
	pterm2 => \Control_Unit|ALU_Enable~9_pterm2_bus\,
	pterm3 => \Control_Unit|ALU_Enable~9_pterm3_bus\,
	pterm4 => \Control_Unit|ALU_Enable~9_pterm4_bus\,
	pterm5 => \Control_Unit|ALU_Enable~9_pterm5_bus\,
	pxor => \Control_Unit|ALU_Enable~9_pxor_bus\,
	pclk => \Control_Unit|ALU_Enable~9_pclk_bus\,
	papre => \Control_Unit|ALU_Enable~9_papre_bus\,
	paclr => \Control_Unit|ALU_Enable~9_paclr_bus\,
	pena => \Control_Unit|ALU_Enable~9_pena_bus\,
	dataout => \Control_Unit|ALU_Enable~9_dataout\);

-- Location: LC70
\Control_Unit|ALU_Enable~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Control_Unit|ALU_Enable~21_pterm0_bus\,
	pterm1 => \Control_Unit|ALU_Enable~21_pterm1_bus\,
	pterm2 => \Control_Unit|ALU_Enable~21_pterm2_bus\,
	pterm3 => \Control_Unit|ALU_Enable~21_pterm3_bus\,
	pterm4 => \Control_Unit|ALU_Enable~21_pterm4_bus\,
	pterm5 => \Control_Unit|ALU_Enable~21_pterm5_bus\,
	pxor => \Control_Unit|ALU_Enable~21_pxor_bus\,
	pclk => \Control_Unit|ALU_Enable~21_pclk_bus\,
	papre => \Control_Unit|ALU_Enable~21_papre_bus\,
	paclr => \Control_Unit|ALU_Enable~21_paclr_bus\,
	pena => \Control_Unit|ALU_Enable~21_pena_bus\,
	dataout => \Control_Unit|ALU_Enable~21_dataout\);

-- Location: PIN_54
\regA[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(0),
	dataout => \regA~dataout\(0));

-- Location: PIN_64
\regB[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(0),
	dataout => \regB~dataout\(0));

-- Location: LC14
\ALU_Low|Ckt74181b|Summod4|F[0]~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[0]~6_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[0]~6_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[0]~6_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[0]~6_dataout\);

-- Location: LC65
\ALU_Buffer|O[0]~37\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[0]~37_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[0]~37_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[0]~37_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[0]~37_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[0]~37_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[0]~37_pterm5_bus\,
	pxor => \ALU_Buffer|O[0]~37_pxor_bus\,
	pclk => \ALU_Buffer|O[0]~37_pclk_bus\,
	papre => \ALU_Buffer|O[0]~37_papre_bus\,
	paclr => \ALU_Buffer|O[0]~37_paclr_bus\,
	pena => \ALU_Buffer|O[0]~37_pena_bus\,
	dataout => \ALU_Buffer|O[0]~37_dataout\);

-- Location: SEXP83
\Control_Unit|Constant_Enable~2sexpand0\ : max_sexp
PORT MAP (
	datain => \Control_Unit|Constant_Enable~2sexpand0_datain_bus\,
	dataout => \Control_Unit|Constant_Enable~2sexpand0_dataout\);

-- Location: LC83
\ALU_Buffer|O[0]~33\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[0]~33_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[0]~33_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[0]~33_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[0]~33_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[0]~33_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[0]~33_pterm5_bus\,
	pxor => \ALU_Buffer|O[0]~33_pxor_bus\,
	pclk => \ALU_Buffer|O[0]~33_pclk_bus\,
	papre => \ALU_Buffer|O[0]~33_papre_bus\,
	paclr => \ALU_Buffer|O[0]~33_paclr_bus\,
	pena => \ALU_Buffer|O[0]~33_pena_bus\,
	dataout => \ALU_Buffer|O[0]~33_dataout\);

-- Location: PIN_55
\regA[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(1),
	dataout => \regA~dataout\(1));

-- Location: PIN_65
\regB[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(1),
	dataout => \regB~dataout\(1));

-- Location: SEXP56
\ALU_Low|Ckt74181b|Summod4|F[1]~13\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[1]~13_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~13_dataout\);

-- Location: SEXP53
\ALU_Low|Ckt74181b|Summod4|F[1]~14\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[1]~14_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~14_dataout\);

-- Location: SEXP51
\ALU_Low|Ckt74181b|Summod4|F[1]~15\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[1]~15_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~15_dataout\);

-- Location: SEXP49
\ALU_Low|Ckt74181b|Summod4|F[1]~16\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[1]~16_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~16_dataout\);

-- Location: SEXP57
\ALU_Low|Ckt74181b|Summod4|F[1]~17\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[1]~17_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~17_dataout\);

-- Location: LC50
\ALU_Low|Ckt74181b|Summod4|F[1]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[1]~18_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[1]~18_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[1]~18_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[1]~18_dataout\);

-- Location: LC67
\ALU_Buffer|O[1]~41\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[1]~41_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[1]~41_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[1]~41_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[1]~41_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[1]~41_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[1]~41_pterm5_bus\,
	pxor => \ALU_Buffer|O[1]~41_pxor_bus\,
	pclk => \ALU_Buffer|O[1]~41_pclk_bus\,
	papre => \ALU_Buffer|O[1]~41_papre_bus\,
	paclr => \ALU_Buffer|O[1]~41_paclr_bus\,
	pena => \ALU_Buffer|O[1]~41_pena_bus\,
	dataout => \ALU_Buffer|O[1]~41_dataout\);

-- Location: LC5
\ALU_Low|Ckt74181b|Summod4|F[2]~48\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[2]~48_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[2]~48_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pena_bus\,
	pexpout => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pexpout\);

-- Location: LC6
\ALU_Low|Ckt74181b|Summod4|F[2]~54\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|Ckt74181b|Summod4|F[2]~48_pexpout\,
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[2]~54_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[2]~54_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pena_bus\,
	pexpout => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pexpout\);

-- Location: SEXP9
\ALU_Low|Ckt74181b|Summod4|F[2]~25\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~25_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~25_dataout\);

-- Location: SEXP12
\ALU_Low|Ckt74181b|Summod4|F[2]~26\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~26_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~26_dataout\);

-- Location: PIN_67
\regB[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(2),
	dataout => \regB~dataout\(2));

-- Location: SEXP11
\ALU_Low|Ckt74181b|Summod4|F[2]~28\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~28_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~28_dataout\);

-- Location: SEXP10
\ALU_Low|Ckt74181b|Summod4|F[2]~29\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~29_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~29_dataout\);

-- Location: SEXP8
\ALU_Low|Ckt74181b|Summod4|F[2]~30\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~30_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~30_dataout\);

-- Location: SEXP1
\ALU_Low|Ckt74181b|Summod4|F[2]~31\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[2]~31_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~31_dataout\);

-- Location: LC7
\ALU_Low|Ckt74181b|Summod4|F[2]~32\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|Ckt74181b|Summod4|F[2]~54_pexpout\,
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[2]~32_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[2]~32_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[2]~32_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[2]~32_dataout\);

-- Location: LC69
\ALU_Buffer|O[2]~45\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[2]~45_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[2]~45_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[2]~45_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[2]~45_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[2]~45_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[2]~45_pterm5_bus\,
	pxor => \ALU_Buffer|O[2]~45_pxor_bus\,
	pclk => \ALU_Buffer|O[2]~45_pclk_bus\,
	papre => \ALU_Buffer|O[2]~45_papre_bus\,
	paclr => \ALU_Buffer|O[2]~45_paclr_bus\,
	pena => \ALU_Buffer|O[2]~45_pena_bus\,
	dataout => \ALU_Buffer|O[2]~45_dataout\);

-- Location: PIN_56
\regA[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(2),
	dataout => \regA~dataout\(2));

-- Location: LC8
\ALU_Low|Ckt74181b|Dmod2|D~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Dmod2|D~14_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Dmod2|D~14_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Dmod2|D~14_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Dmod2|D~14_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Dmod2|D~14_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Dmod2|D~14_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Dmod2|D~14_dataout\);

-- Location: LC1
\ALU_Low|Ckt74181b|CLAmod3|CN4b~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pena_bus\,
	pexpout => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pexpout\);

-- Location: LC2
\ALU_Low|Ckt74181b|CLAmod3|CN4b~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|Ckt74181b|CLAmod3|CN4b~10_pexpout\,
	pterm0 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pena_bus\,
	pexpout => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pexpout\);

-- Location: LC3
\ALU_Low|Ckt74181b|CLAmod3|CN4b~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|Ckt74181b|CLAmod3|CN4b~14_pexpout\,
	pterm0 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pena_bus\,
	pexpout => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pexpout\);

-- Location: LC4
\ALU_Low|Ckt74181b|CLAmod3|CN4b~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|Ckt74181b|CLAmod3|CN4b~20_pexpout\,
	pterm0 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|CLAmod3|CN4b~9_dataout\);

-- Location: PIN_68
\regB[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(3),
	dataout => \regB~dataout\(3));

-- Location: SEXP44
\ALU_Low|Ckt74181b|Summod4|F[3]~39\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[3]~39_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[3]~39_dataout\);

-- Location: SEXP43
\ALU_Low|Ckt74181b|Summod4|F[3]~40\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[3]~40_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[3]~40_dataout\);

-- Location: SEXP42
\ALU_Low|Ckt74181b|Summod4|F[3]~41\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[3]~41_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[3]~41_dataout\);

-- Location: SEXP41
\ALU_Low|Ckt74181b|Summod4|F[3]~42\ : max_sexp
PORT MAP (
	datain => \ALU_Low|Ckt74181b|Summod4|F[3]~42_datain_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[3]~42_dataout\);

-- Location: LC39
\ALU_Low|Ckt74181b|Summod4|F[3]~43\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Summod4|F[3]~43_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Summod4|F[3]~43_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Summod4|F[3]~43_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Summod4|F[3]~43_dataout\);

-- Location: LC72
\ALU_Buffer|O[3]~49\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[3]~49_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[3]~49_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[3]~49_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[3]~49_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[3]~49_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[3]~49_pterm5_bus\,
	pxor => \ALU_Buffer|O[3]~49_pxor_bus\,
	pclk => \ALU_Buffer|O[3]~49_pclk_bus\,
	papre => \ALU_Buffer|O[3]~49_papre_bus\,
	paclr => \ALU_Buffer|O[3]~49_paclr_bus\,
	pena => \ALU_Buffer|O[3]~49_pena_bus\,
	dataout => \ALU_Buffer|O[3]~49_dataout\);

-- Location: PIN_57
\regA[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(3),
	dataout => \regA~dataout\(3));

-- Location: LC20
\ALU_Low|Ckt74181b|Emod1|E~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Emod1|E~18_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Emod1|E~18_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Emod1|E~18_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Emod1|E~18_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Emod1|E~18_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Emod1|E~18_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Emod1|E~18_dataout\);

-- Location: LC26
\ALU_Low|Ckt74181b|Dmod2|D~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm0_bus\,
	pterm1 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm1_bus\,
	pterm2 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm2_bus\,
	pterm3 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm3_bus\,
	pterm4 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm4_bus\,
	pterm5 => \ALU_Low|Ckt74181b|Dmod2|D~18_pterm5_bus\,
	pxor => \ALU_Low|Ckt74181b|Dmod2|D~18_pxor_bus\,
	pclk => \ALU_Low|Ckt74181b|Dmod2|D~18_pclk_bus\,
	papre => \ALU_Low|Ckt74181b|Dmod2|D~18_papre_bus\,
	paclr => \ALU_Low|Ckt74181b|Dmod2|D~18_paclr_bus\,
	pena => \ALU_Low|Ckt74181b|Dmod2|D~18_pena_bus\,
	dataout => \ALU_Low|Ckt74181b|Dmod2|D~18_dataout\);

-- Location: PIN_69
\regB[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(4),
	dataout => \regB~dataout\(4));

-- Location: SEXP37
\ALU_High|Ckt74181b|Summod4|F[0]~6\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[0]~6_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[0]~6_dataout\);

-- Location: SEXP33
\ALU_High|Ckt74181b|Summod4|F[0]~7\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[0]~7_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[0]~7_dataout\);

-- Location: SEXP36
\ALU_High|Ckt74181b|Summod4|F[0]~8\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[0]~8_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[0]~8_dataout\);

-- Location: SEXP35
\ALU_High|Ckt74181b|Summod4|F[0]~9\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[0]~9_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[0]~9_dataout\);

-- Location: LC47
\ALU_High|Ckt74181b|Summod4|F[0]~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[0]~10_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[0]~10_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[0]~10_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[0]~10_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[0]~10_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[0]~10_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[0]~10_dataout\);

-- Location: LC73
\ALU_Buffer|O[4]~53\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[4]~53_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[4]~53_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[4]~53_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[4]~53_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[4]~53_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[4]~53_pterm5_bus\,
	pxor => \ALU_Buffer|O[4]~53_pxor_bus\,
	pclk => \ALU_Buffer|O[4]~53_pclk_bus\,
	papre => \ALU_Buffer|O[4]~53_papre_bus\,
	paclr => \ALU_Buffer|O[4]~53_paclr_bus\,
	pena => \ALU_Buffer|O[4]~53_pena_bus\,
	dataout => \ALU_Buffer|O[4]~53_dataout\);

-- Location: PIN_58
\regA[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(4),
	dataout => \regA~dataout\(4));

-- Location: LC12
\ALU_High|Ckt74181b|Emod1|E~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Emod1|E~18_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Emod1|E~18_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Emod1|E~18_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Emod1|E~18_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Emod1|E~18_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Emod1|E~18_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Emod1|E~18_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Emod1|E~18_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Emod1|E~18_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Emod1|E~18_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Emod1|E~18_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Emod1|E~18_dataout\);

-- Location: LC11
\ALU_High|Ckt74181b|Dmod2|D~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Dmod2|D~14_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Dmod2|D~14_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Dmod2|D~14_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Dmod2|D~14_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Dmod2|D~14_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Dmod2|D~14_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Dmod2|D~14_dataout\);

-- Location: PIN_70
\regB[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(5),
	dataout => \regB~dataout\(5));

-- Location: SEXP18
\ALU_High|Ckt74181b|Summod4|F[1]~16\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[1]~16_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[1]~16_dataout\);

-- Location: SEXP17
\ALU_High|Ckt74181b|Summod4|F[1]~17\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[1]~17_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[1]~17_dataout\);

-- Location: SEXP32
\ALU_High|Ckt74181b|Summod4|F[1]~18\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[1]~18_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[1]~18_dataout\);

-- Location: SEXP27
\ALU_High|Ckt74181b|Summod4|F[1]~19\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[1]~19_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[1]~19_dataout\);

-- Location: LC28
\ALU_High|Ckt74181b|Summod4|F[1]~20\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[1]~20_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[1]~20_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[1]~20_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[1]~20_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[1]~20_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[1]~20_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[1]~20_dataout\);

-- Location: LC75
\ALU_Buffer|O[5]~57\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[5]~57_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[5]~57_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[5]~57_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[5]~57_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[5]~57_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[5]~57_pterm5_bus\,
	pxor => \ALU_Buffer|O[5]~57_pxor_bus\,
	pclk => \ALU_Buffer|O[5]~57_pclk_bus\,
	papre => \ALU_Buffer|O[5]~57_papre_bus\,
	paclr => \ALU_Buffer|O[5]~57_paclr_bus\,
	pena => \ALU_Buffer|O[5]~57_pena_bus\,
	dataout => \ALU_Buffer|O[5]~57_dataout\);

-- Location: LC24
\ALU_High|Ckt74181b|Summod4|F[2]~49\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[2]~49_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[2]~49_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[2]~49_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[2]~49_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[2]~49_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[2]~49_pena_bus\,
	pexpout => \ALU_High|Ckt74181b|Summod4|F[2]~49_pexpout\);

-- Location: PIN_60
\regA[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(5),
	dataout => \regA~dataout\(5));

-- Location: LC32
\ALU_High|Ckt74181b|Emod1|E~21\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Emod1|E~21_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Emod1|E~21_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Emod1|E~21_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Emod1|E~21_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Emod1|E~21_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Emod1|E~21_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Emod1|E~21_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Emod1|E~21_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Emod1|E~21_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Emod1|E~21_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Emod1|E~21_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Emod1|E~21_dataout\);

-- Location: LC31
\ALU_High|Ckt74181b|Dmod2|D~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Dmod2|D~18_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Dmod2|D~18_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Dmod2|D~18_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Dmod2|D~18_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Dmod2|D~18_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Dmod2|D~18_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Dmod2|D~18_dataout\);

-- Location: PIN_73
\regB[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(6),
	dataout => \regB~dataout\(6));

-- Location: SEXP31
\ALU_High|Ckt74181b|Summod4|F[2]~27\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[2]~27_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[2]~27_dataout\);

-- Location: SEXP30
\ALU_High|Ckt74181b|Summod4|F[2]~28\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[2]~28_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[2]~28_dataout\);

-- Location: SEXP29
\ALU_High|Ckt74181b|Summod4|F[2]~29\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[2]~29_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[2]~29_dataout\);

-- Location: SEXP26
\ALU_High|Ckt74181b|Summod4|F[2]~30\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[2]~30_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[2]~30_dataout\);

-- Location: LC25
\ALU_High|Ckt74181b|Summod4|F[2]~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_High|Ckt74181b|Summod4|F[2]~49_pexpout\,
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[2]~31_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[2]~31_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[2]~31_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[2]~31_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[2]~31_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[2]~31_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[2]~31_dataout\);

-- Location: LC77
\ALU_Buffer|O[6]~61\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[6]~61_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[6]~61_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[6]~61_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[6]~61_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[6]~61_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[6]~61_pterm5_bus\,
	pxor => \ALU_Buffer|O[6]~61_pxor_bus\,
	pclk => \ALU_Buffer|O[6]~61_pclk_bus\,
	papre => \ALU_Buffer|O[6]~61_papre_bus\,
	paclr => \ALU_Buffer|O[6]~61_paclr_bus\,
	pena => \ALU_Buffer|O[6]~61_pena_bus\,
	dataout => \ALU_Buffer|O[6]~61_dataout\);

-- Location: PIN_61
\regA[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(6),
	dataout => \regA~dataout\(6));

-- Location: LC30
\ALU_High|Ckt74181b|Emod1|E~24\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Emod1|E~24_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Emod1|E~24_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Emod1|E~24_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Emod1|E~24_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Emod1|E~24_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Emod1|E~24_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Emod1|E~24_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Emod1|E~24_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Emod1|E~24_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Emod1|E~24_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Emod1|E~24_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Emod1|E~24_dataout\);

-- Location: LC18
\ALU_High|Ckt74181b|Dmod2|D~22\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Dmod2|D~22_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Dmod2|D~22_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Dmod2|D~22_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Dmod2|D~22_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Dmod2|D~22_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Dmod2|D~22_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Dmod2|D~22_dataout\);

-- Location: LC22
\ALU_High|Ckt74181b|Summod4|F[3]~51\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[3]~51_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[3]~51_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[3]~51_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[3]~51_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[3]~51_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[3]~51_pena_bus\,
	pexpout => \ALU_High|Ckt74181b|Summod4|F[3]~51_pexpout\);

-- Location: PIN_74
\regB[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(7),
	dataout => \regB~dataout\(7));

-- Location: SEXP24
\ALU_High|Ckt74181b|Summod4|F[3]~38\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[3]~38_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[3]~38_dataout\);

-- Location: SEXP22
\ALU_High|Ckt74181b|Summod4|F[3]~39\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[3]~39_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[3]~39_dataout\);

-- Location: SEXP20
\ALU_High|Ckt74181b|Summod4|F[3]~40\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[3]~40_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[3]~40_dataout\);

-- Location: SEXP19
\ALU_High|Ckt74181b|Summod4|F[3]~41\ : max_sexp
PORT MAP (
	datain => \ALU_High|Ckt74181b|Summod4|F[3]~41_datain_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[3]~41_dataout\);

-- Location: LC23
\ALU_High|Ckt74181b|Summod4|F[3]~42\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_High|Ckt74181b|Summod4|F[3]~51_pexpout\,
	pterm0 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm0_bus\,
	pterm1 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm1_bus\,
	pterm2 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm2_bus\,
	pterm3 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm3_bus\,
	pterm4 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm4_bus\,
	pterm5 => \ALU_High|Ckt74181b|Summod4|F[3]~42_pterm5_bus\,
	pxor => \ALU_High|Ckt74181b|Summod4|F[3]~42_pxor_bus\,
	pclk => \ALU_High|Ckt74181b|Summod4|F[3]~42_pclk_bus\,
	papre => \ALU_High|Ckt74181b|Summod4|F[3]~42_papre_bus\,
	paclr => \ALU_High|Ckt74181b|Summod4|F[3]~42_paclr_bus\,
	pena => \ALU_High|Ckt74181b|Summod4|F[3]~42_pena_bus\,
	dataout => \ALU_High|Ckt74181b|Summod4|F[3]~42_dataout\);

-- Location: LC80
\ALU_Buffer|O[7]~65\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Buffer|O[7]~65_pterm0_bus\,
	pterm1 => \ALU_Buffer|O[7]~65_pterm1_bus\,
	pterm2 => \ALU_Buffer|O[7]~65_pterm2_bus\,
	pterm3 => \ALU_Buffer|O[7]~65_pterm3_bus\,
	pterm4 => \ALU_Buffer|O[7]~65_pterm4_bus\,
	pterm5 => \ALU_Buffer|O[7]~65_pterm5_bus\,
	pxor => \ALU_Buffer|O[7]~65_pxor_bus\,
	pclk => \ALU_Buffer|O[7]~65_pclk_bus\,
	papre => \ALU_Buffer|O[7]~65_papre_bus\,
	paclr => \ALU_Buffer|O[7]~65_paclr_bus\,
	pena => \ALU_Buffer|O[7]~65_pena_bus\,
	dataout => \ALU_Buffer|O[7]~65_dataout\);

-- Location: PIN_34
\MemWriteControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~VCC~0~dataout\,
	oe => VCC,
	padio => ww_MemWriteControl);

-- Location: PIN_35
\Ram_LowControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~0~dataout\,
	oe => VCC,
	padio => ww_Ram_LowControl);

-- Location: PIN_36
\Ram_HighControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~1~dataout\,
	oe => VCC,
	padio => ww_Ram_HighControl);

-- Location: PIN_37
\Ram_Addr_Enable~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~VCC~1~dataout\,
	oe => VCC,
	padio => ww_Ram_Addr_Enable);

-- Location: PIN_39
\StackCount~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~2~dataout\,
	oe => VCC,
	padio => ww_StackCount);

-- Location: PIN_40
\StackOutControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~VCC~2~dataout\,
	oe => VCC,
	padio => ww_StackOutControl);

-- Location: PIN_75
\LowStackJump~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~3~dataout\,
	oe => VCC,
	padio => ww_LowStackJump);

-- Location: PIN_76
\HighStackJump~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~4~dataout\,
	oe => VCC,
	padio => ww_HighStackJump);

-- Location: PIN_80
\SYNC~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~5~dataout\,
	oe => VCC,
	padio => ww_SYNC);

-- Location: PIN_81
\STATE~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~6~dataout\,
	oe => VCC,
	padio => ww_STATE);

-- Location: PIN_77
\StackCountDirection~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~7~dataout\,
	oe => VCC,
	padio => ww_StackCountDirection);

-- Location: PIN_79
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \interntalCLK~11_dataout\,
	oe => VCC,
	padio => ww_CLK);

-- Location: PIN_33
\MemOutEnable~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|InsRegControl~9_dataout\,
	oe => VCC,
	padio => ww_MemOutEnable);

-- Location: PIN_21
\CounterOutControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|InsRegControl~15_dataout\,
	oe => VCC,
	padio => ww_CounterOutControl);

-- Location: PIN_22
\InsRegControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|InsRegControl~20_dataout\,
	oe => VCC,
	padio => ww_InsRegControl);

-- Location: PIN_24
\RegAControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|RegAControl~3_dataout\,
	oe => VCC,
	padio => ww_RegAControl);

-- Location: PIN_31
\MainRegOutputControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|MainRegOutputControl~3_dataout\,
	oe => VCC,
	padio => ww_MainRegOutputControl);

-- Location: PIN_27
\MainRegReadControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|MainRegReadControl~4_dataout\,
	oe => VCC,
	padio => ww_MainRegReadControl);

-- Location: PIN_20
\Count~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|Count~22_dataout\,
	oe => VCC,
	padio => ww_Count);

-- Location: PIN_41
\DisplayControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|DisplayControl~4_dataout\,
	oe => VCC,
	padio => ww_DisplayControl);

-- Location: PIN_25
\RegBControl~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|RegBControl~2_dataout\,
	oe => VCC,
	padio => ww_RegBControl);

-- Location: PIN_30
\JumpEnable~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|JumpEnable~6_dataout\,
	oe => VCC,
	padio => ww_JumpEnable);

-- Location: PIN_28
\LowJumpRegLoad~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|LowJumpRegLoad~3_dataout\,
	oe => VCC,
	padio => ww_LowJumpRegLoad);

-- Location: PIN_29
\HighJumpRegLoad~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Control_Unit|HighJumpRegLoad~4_dataout\,
	oe => VCC,
	padio => ww_HighJumpRegLoad);

-- Location: PIN_44
\MainBus[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[0]~37_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(0));

-- Location: PIN_45
\MainBus[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[1]~41_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(1));

-- Location: PIN_46
\MainBus[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[2]~45_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(2));

-- Location: PIN_48
\MainBus[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[3]~49_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(3));

-- Location: PIN_49
\MainBus[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[4]~53_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(4));

-- Location: PIN_50
\MainBus[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[5]~57_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(5));

-- Location: PIN_51
\MainBus[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[6]~61_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(6));

-- Location: PIN_52
\MainBus[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ALU_Buffer|O[7]~65_dataout\,
	oe => \ALU_Buffer|ALT_INV_O[0]~33_dataout\,
	padio => ww_MainBus(7));
END structure;


