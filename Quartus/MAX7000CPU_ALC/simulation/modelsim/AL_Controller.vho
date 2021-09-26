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

-- DATE "09/26/2021 22:11:28"

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
	STATE : OUT std_logic
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
-- RegAControl	=>  Location: PIN_24
-- RegBControl	=>  Location: PIN_25
-- MainRegReadControl	=>  Location: PIN_27
-- LowJumpRegLoad	=>  Location: PIN_28
-- HighJumpRegLoad	=>  Location: PIN_29
-- JumpEnable	=>  Location: PIN_30
-- MainRegOutputControl	=>  Location: PIN_31
-- MemOutEnable	=>  Location: PIN_33
-- MemWriteControl	=>  Location: PIN_34
-- Ram_LowControl	=>  Location: PIN_35
-- Ram_HighControl	=>  Location: PIN_36
-- Ram_Addr_Enable	=>  Location: PIN_37
-- StackCount	=>  Location: PIN_39
-- StackOutControl	=>  Location: PIN_40
-- DisplayControl	=>  Location: PIN_41
-- LowStackJump	=>  Location: PIN_75
-- HighStackJump	=>  Location: PIN_76
-- SYNC	=>  Location: PIN_80
-- STATE	=>  Location: PIN_81
-- MainBus[0]	=>  Location: PIN_44
-- CLK	=>  Location: PIN_79
-- MainBus[1]	=>  Location: PIN_45
-- MainBus[2]	=>  Location: PIN_46
-- MainBus[3]	=>  Location: PIN_48
-- MainBus[4]	=>  Location: PIN_49
-- MainBus[5]	=>  Location: PIN_50
-- MainBus[6]	=>  Location: PIN_51
-- Count	=>  Location: PIN_20
-- CounterOutControl	=>  Location: PIN_21
-- InsRegControl	=>  Location: PIN_22
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
SIGNAL \CLKFLOP|Qnot~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Qnot~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR0|F~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D0|Qnot~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR2|F~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D1|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|triNOR3|F~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR0|F~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|D2|Qnot~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|CounterOut~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|InstructRead~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR0|F~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR1|F~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \SignalGenerator|Count~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|triNOR2|F~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|quadNOR0|F~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|dualNOR_X|F~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
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
SIGNAL \~GND~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~17_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR1|F~0bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR2|F~0bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Low|XOR3|F~0bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR3|F~0bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~13_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~14_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~15_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|XOR1|F~3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|dualNOR0|F~6sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|dualNOR0|F~6sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|dualNOR2|F~6sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_High|dualNOR2|F~6sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0~dataout\ : std_logic;
SIGNAL \~GND~1~dataout\ : std_logic;
SIGNAL \~GND~2~dataout\ : std_logic;
SIGNAL \~GND~3~dataout\ : std_logic;
SIGNAL \~GND~4~dataout\ : std_logic;
SIGNAL \~GND~5~dataout\ : std_logic;
SIGNAL \~GND~6~dataout\ : std_logic;
SIGNAL \~GND~7~dataout\ : std_logic;
SIGNAL \~GND~8~dataout\ : std_logic;
SIGNAL \~GND~9~dataout\ : std_logic;
SIGNAL \~GND~10~dataout\ : std_logic;
SIGNAL \~GND~11~dataout\ : std_logic;
SIGNAL \~GND~12~dataout\ : std_logic;
SIGNAL \~GND~13~dataout\ : std_logic;
SIGNAL \~GND~14~dataout\ : std_logic;
SIGNAL \~GND~15~dataout\ : std_logic;
SIGNAL \~GND~16~dataout\ : std_logic;
SIGNAL \~GND~17~dataout\ : std_logic;
SIGNAL \~GND~18~dataout\ : std_logic;
SIGNAL \ALU_Low|XOR0|F~0_dataout\ : std_logic;
SIGNAL \UserCLK~dataout\ : std_logic;
SIGNAL \CLK_Select~dataout\ : std_logic;
SIGNAL \CLKFLOP|Qnot~en_dataout\ : std_logic;
SIGNAL \CLKFLOP|Qnot~reg0_dataout\ : std_logic;
SIGNAL \SlowCLK~dataout\ : std_logic;
SIGNAL \interntalCLK~12_dataout\ : std_logic;
SIGNAL \ALU_Low|XOR1|F~0bal_dataout\ : std_logic;
SIGNAL \ALU_Low|XOR1|F~5_dataout\ : std_logic;
SIGNAL \ALU_Low|quadNOR0|F~12_pexpout\ : std_logic;
SIGNAL \ALU_Low|quadNOR0|F~18_pexpout\ : std_logic;
SIGNAL \ALU_Low|quadNOR0|F~5_dataout\ : std_logic;
SIGNAL \ALU_Low|XOR2|F~0_dataout\ : std_logic;
SIGNAL \ALU_Low|XOR3|F~11_pexpout\ : std_logic;
SIGNAL \ALU_Low|XOR3|F~0bal_dataout\ : std_logic;
SIGNAL \ALU_Low|XOR3|F~4_dataout\ : std_logic;
SIGNAL \ALU_Low|triNOR3|F~6_dataout\ : std_logic;
SIGNAL \ALU_Low|dualNOR_X|F~12_pexpout\ : std_logic;
SIGNAL \ALU_Low|dualNOR_X|F~11_dataout\ : std_logic;
SIGNAL \ALU_High|XOR0|F~0_dataout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~11_pexpout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~0_dataout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~1_dataout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~2_dataout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~3_dataout\ : std_logic;
SIGNAL \ALU_High|XOR1|F~4_dataout\ : std_logic;
SIGNAL \ALU_High|triNOR0|F~6_dataout\ : std_logic;
SIGNAL \ALU_High|triNOR1|F~6_dataout\ : std_logic;
SIGNAL \ALU_High|XOR2|F~0bal_dataout\ : std_logic;
SIGNAL \ALU_High|dualNOR0|F~6sexp1_dataout\ : std_logic;
SIGNAL \ALU_High|dualNOR0|F~6sexp2_dataout\ : std_logic;
SIGNAL \ALU_High|XOR2|F~5_dataout\ : std_logic;
SIGNAL \interntalCLK~13_dataout\ : std_logic;
SIGNAL \interntalCLK~14_dataout\ : std_logic;
SIGNAL \interntalCLK~15_dataout\ : std_logic;
SIGNAL \Reset~dataout\ : std_logic;
SIGNAL \SignalGenerator|D0|Qnot~en_dataout\ : std_logic;
SIGNAL \SignalGenerator|D1|Q~reg0_dataout\ : std_logic;
SIGNAL \SignalGenerator|D2|Qnot~reg0_dataout\ : std_logic;
SIGNAL \SignalGenerator|D0|Qnot~reg0_dataout\ : std_logic;
SIGNAL \SignalGenerator|Count~3_dataout\ : std_logic;
SIGNAL \SignalGenerator|CounterOut~1_dataout\ : std_logic;
SIGNAL \SignalGenerator|InstructRead~1_dataout\ : std_logic;
SIGNAL \ALU_High|triNOR2|F~6_dataout\ : std_logic;
SIGNAL \ALU_High|XOR3|F~0bal_dataout\ : std_logic;
SIGNAL \ALU_High|dualNOR2|F~6sexp1_dataout\ : std_logic;
SIGNAL \ALU_High|dualNOR2|F~6sexp2_dataout\ : std_logic;
SIGNAL \ALU_High|XOR3|F~4_dataout\ : std_logic;
SIGNAL \regB~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regA~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ins~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SlowCLK~dataout\ : std_logic;
SIGNAL \ALT_INV_UserCLK~dataout\ : std_logic;
SIGNAL \ALT_INV_Ins~dataout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_regB~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_regA~dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SignalGenerator|D2|ALT_INV_Qnot~reg0_dataout\ : std_logic;
SIGNAL \ALU_Low|dualNOR_X|ALT_INV_F~11_dataout\ : std_logic;
SIGNAL \ALU_Low|triNOR3|ALT_INV_F~6_dataout\ : std_logic;
SIGNAL \SignalGenerator|D1|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \ALU_Low|quadNOR0|ALT_INV_F~5_dataout\ : std_logic;
SIGNAL \SignalGenerator|D0|ALT_INV_Qnot~reg0_dataout\ : std_logic;
SIGNAL \SignalGenerator|D0|ALT_INV_Qnot~en_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Qnot~reg0_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Qnot~en_dataout\ : std_logic;

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

\CLKFLOP|Qnot~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Qnot~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Qnot~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Qnot~en_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLKFLOP|Qnot~en_dataout\ & NOT \CLKFLOP|Qnot~reg0_dataout\);

\CLKFLOP|Qnot~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Qnot~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Qnot~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Qnot~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR0|F~0_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(0) & NOT \regA~dataout\(0));

\ALU_Low|XOR0|F~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR0|F~0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(0) & \regA~dataout\(0) & \Ins~dataout\(2));

\ALU_Low|XOR0|F~0_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(0) & \regA~dataout\(0));

\ALU_Low|XOR0|F~0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(0) & NOT \regA~dataout\(0));

\ALU_Low|XOR0|F~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR0|F~0_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & \Ins~dataout\(4));

\ALU_Low|XOR0|F~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR0|F~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR0|F~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR0|F~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLKFLOP|Qnot~reg0_dataout\ & \UserCLK~dataout\);

\interntalCLK~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CLKFLOP|Qnot~en_dataout\ & \UserCLK~dataout\);

\interntalCLK~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SlowCLK~dataout\ & NOT \CLKFLOP|Qnot~reg0_dataout\);

\interntalCLK~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SlowCLK~dataout\ & NOT \CLKFLOP|Qnot~en_dataout\);

\interntalCLK~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\interntalCLK~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~15_dataout\ & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\);

\SignalGenerator|D0|Qnot~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|D0|Qnot~en_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\SignalGenerator|D0|Qnot~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(1) & NOT \regA~dataout\(1));

\ALU_Low|XOR1|F~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \regA~dataout\(1) & \Ins~dataout\(2));

\ALU_Low|XOR1|F~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(1) & \regA~dataout\(1));

\ALU_Low|XOR1|F~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(1) & NOT \regA~dataout\(1));

\ALU_Low|XOR1|F~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & \ALU_Low|XOR1|F~0bal_dataout\);

\ALU_Low|XOR1|F~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR1|F~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SignalGenerator|D2|Qnot~reg0_dataout\ & NOT \SignalGenerator|D0|Qnot~en_dataout\);

\SignalGenerator|D0|Qnot~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D0|Qnot~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~15_dataout\ & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\);

\SignalGenerator|D0|Qnot~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|D0|Qnot~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\SignalGenerator|D0|Qnot~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(1) & \regA~dataout\(0) & NOT \regA~dataout\(1));

\ALU_Low|quadNOR0|F~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0) & NOT \regA~dataout\(1) & NOT \regB~dataout\(0) & \Ins~dataout\(4) & NOT \Ins~dataout\(2));

\ALU_Low|quadNOR0|F~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \Ins~dataout\(0) & \regA~dataout\(0) & NOT \regA~dataout\(1));

\ALU_Low|quadNOR0|F~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regA~dataout\(0) & NOT \regA~dataout\(1) & \regB~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0));

\ALU_Low|quadNOR0|F~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|quadNOR0|F~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR2|F~0_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(2) & NOT \regA~dataout\(2));

\ALU_Low|XOR2|F~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR2|F~0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \regA~dataout\(2) & \Ins~dataout\(2));

\ALU_Low|XOR2|F~0_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|XOR2|F~0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(2) & NOT \regA~dataout\(2));

\ALU_Low|XOR2|F~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR2|F~0_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Low|quadNOR0|F~5_dataout\ & NOT \Ins~dataout\(5));

\ALU_Low|XOR2|F~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR2|F~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR2|F~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR2|F~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SignalGenerator|D0|Qnot~en_dataout\ & NOT \SignalGenerator|D0|Qnot~reg0_dataout\);

\SignalGenerator|D1|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D1|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~15_dataout\ & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\);

\SignalGenerator|D1|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|D1|Q~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\SignalGenerator|D1|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~4_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & \ALU_Low|quadNOR0|F~5_dataout\ & NOT \regB~dataout\(2));

\ALU_Low|XOR3|F~4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(2) & \regA~dataout\(2));

\ALU_Low|XOR3|F~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|quadNOR0|F~5_dataout\ & \regA~dataout\(2));

\ALU_Low|XOR3|F~4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \ALU_Low|quadNOR0|F~5_dataout\ & \regB~dataout\(2));

\ALU_Low|XOR3|F~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|XOR3|F~0bal_dataout\);

\ALU_Low|XOR3|F~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR3|F~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_Low|triNOR3|F~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_Low|triNOR3|F~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|triNOR3|F~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|triNOR3|F~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~11_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regA~dataout\(0) & \regB~dataout\(0) & \Ins~dataout\(3) & \regB~dataout\(2));

\ALU_Low|dualNOR_X|F~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2) & \Ins~dataout\(2));

\ALU_Low|dualNOR_X|F~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0) & \regB~dataout\(0) & \Ins~dataout\(3) & \regA~dataout\(2));

\ALU_Low|dualNOR_X|F~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regA~dataout\(2) & \regB~dataout\(2));

\ALU_Low|dualNOR_X|F~11_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regA~dataout\(0) & NOT \regB~dataout\(0) & \regB~dataout\(2) & \Ins~dataout\(2));

\ALU_Low|dualNOR_X|F~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|dualNOR_X|F~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR0|F~0_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|XOR0|F~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR0|F~0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(4) & \regA~dataout\(4) & \Ins~dataout\(2));

\ALU_High|XOR0|F~0_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|XOR0|F~0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|XOR0|F~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR0|F~0_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Low|dualNOR_X|F~11_dataout\ & NOT \ALU_Low|triNOR3|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR0|F~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR0|F~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR0|F~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR0|F~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SignalGenerator|D1|Q~reg0_dataout\ & NOT \SignalGenerator|D0|Qnot~en_dataout\);

\SignalGenerator|D2|Qnot~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|D2|Qnot~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \interntalCLK~15_dataout\ & \interntalCLK~14_dataout\ & \interntalCLK~13_dataout\);

\SignalGenerator|D2|Qnot~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|D2|Qnot~reg0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Reset~dataout\);

\SignalGenerator|D2|Qnot~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~4_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_High|XOR1|F~4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Low|dualNOR_X|F~11_dataout\ & \Ins~dataout\(1) & NOT \regB~dataout\(4));

\ALU_High|XOR1|F~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regA~dataout\(4) & \regB~dataout\(4));

\ALU_High|XOR1|F~4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & \regA~dataout\(4) & NOT \regB~dataout\(4));

\ALU_High|XOR1|F~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|XOR1|F~3_dataout\ & \ALU_High|XOR1|F~2_dataout\ & \ALU_High|XOR1|F~1_dataout\ & \ALU_High|XOR1|F~0_dataout\);

\ALU_High|XOR1|F~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR1|F~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SignalGenerator|D2|Qnot~reg0_dataout\ & \SignalGenerator|D0|Qnot~reg0_dataout\);

\SignalGenerator|CounterOut~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SignalGenerator|D0|Qnot~en_dataout\);

\SignalGenerator|CounterOut~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|CounterOut~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|CounterOut~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SignalGenerator|D1|Q~reg0_dataout\ & NOT \SignalGenerator|D2|Qnot~reg0_dataout\);

\SignalGenerator|InstructRead~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SignalGenerator|D0|Qnot~en_dataout\);

\SignalGenerator|InstructRead~1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|InstructRead~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|InstructRead~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|triNOR0|F~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(4) & NOT \regA~dataout\(4));

\ALU_High|triNOR0|F~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|triNOR0|F~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR0|F~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(5) & NOT \regA~dataout\(5));

\ALU_High|triNOR1|F~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(5) & NOT \regA~dataout\(5));

\ALU_High|triNOR1|F~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|triNOR1|F~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR1|F~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|XOR1|F~1_dataout\ & \ALU_High|XOR1|F~0_dataout\ & \ALU_High|dualNOR0|F~6sexp2_dataout\ & \ALU_High|dualNOR0|F~6sexp1_dataout\ & NOT \Ins~dataout\(5) & \ALU_Low|dualNOR_X|F~11_dataout\ & NOT 
\ALU_Low|triNOR3|F~6_dataout\);

\ALU_High|XOR2|F~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|XOR1|F~1_dataout\ & \ALU_High|XOR1|F~0_dataout\ & \ALU_High|triNOR0|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR2|F~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|triNOR1|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR2|F~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|XOR2|F~0bal_dataout\);

\ALU_High|XOR2|F~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR2|F~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SignalGenerator|D2|Qnot~reg0_dataout\ & NOT \SignalGenerator|D0|Qnot~reg0_dataout\);

\SignalGenerator|Count~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \SignalGenerator|D0|Qnot~en_dataout\);

\SignalGenerator|Count~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\SignalGenerator|Count~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\SignalGenerator|Count~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(6) & NOT \regA~dataout\(6));

\ALU_High|triNOR2|F~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(6) & NOT \regA~dataout\(6));

\ALU_High|triNOR2|F~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|triNOR2|F~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|triNOR2|F~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~4_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|triNOR2|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR3|F~4_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|dualNOR2|F~6sexp2_dataout\ & \ALU_High|dualNOR2|F~6sexp1_dataout\ & \ALU_High|XOR1|F~1_dataout\ & \ALU_High|XOR1|F~0_dataout\ & \ALU_High|dualNOR0|F~6sexp2_dataout\ & \ALU_High|dualNOR0|F~6sexp1_dataout\ & 
NOT \Ins~dataout\(5) & \ALU_Low|dualNOR_X|F~11_dataout\ & NOT \ALU_Low|triNOR3|F~6_dataout\);

\ALU_High|XOR3|F~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|dualNOR2|F~6sexp2_dataout\ & \ALU_High|dualNOR2|F~6sexp1_dataout\ & \ALU_High|XOR1|F~1_dataout\ & \ALU_High|XOR1|F~0_dataout\ & \ALU_High|triNOR0|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR3|F~4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|dualNOR2|F~6sexp2_dataout\ & \ALU_High|dualNOR2|F~6sexp1_dataout\ & \ALU_High|triNOR1|F~6_dataout\ & NOT \Ins~dataout\(5));

\ALU_High|XOR3|F~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~4_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_High|XOR3|F~0bal_dataout\);

\ALU_High|XOR3|F~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR3|F~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \regA~dataout\(0) & \regB~dataout\(0) & NOT \Ins~dataout\(4) & \Ins~dataout\(0));

\ALU_Low|quadNOR0|F~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(0) & \regA~dataout\(1) & \regB~dataout\(0) & NOT \Ins~dataout\(4) & \Ins~dataout\(0));

\ALU_Low|quadNOR0|F~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regA~dataout\(0) & \regA~dataout\(1) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \Ins~dataout\(2) & NOT \regA~dataout\(0) & \regA~dataout\(1));

\ALU_Low|quadNOR0|F~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(1) & NOT \regA~dataout\(0) & \regA~dataout\(1));

\ALU_Low|quadNOR0|F~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|quadNOR0|F~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~18_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(3) & \regA~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(0) & \Ins~dataout\(1) & NOT \regB~dataout\(1) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & NOT \regA~dataout\(0) & \Ins~dataout\(1) & NOT \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regA~dataout\(0) & \regB~dataout\(1) & \regB~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & \regA~dataout\(0) & NOT \regB~dataout\(1) & NOT \regB~dataout\(0) & \Ins~dataout\(4));

\ALU_Low|quadNOR0|F~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|quadNOR0|F~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|quadNOR0|F~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5));

\ALU_Low|XOR3|F~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \regA~dataout\(2) & \Ins~dataout\(2));

\ALU_Low|XOR3|F~11_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR3|F~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & \regA~dataout\(0) & NOT \regB~dataout\(0) & \Ins~dataout\(2));

\ALU_Low|dualNOR_X|F~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & \regA~dataout\(3) & NOT \regB~dataout\(3));

\ALU_Low|dualNOR_X|F~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regA~dataout\(3) & \regB~dataout\(3));

\ALU_Low|dualNOR_X|F~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \regA~dataout\(0) & NOT \regB~dataout\(0) & \Ins~dataout\(1) & \Ins~dataout\(2));

\ALU_Low|dualNOR_X|F~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \regA~dataout\(0) & \regB~dataout\(0) & \Ins~dataout\(1) & \Ins~dataout\(3));

\ALU_Low|dualNOR_X|F~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|dualNOR_X|F~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|dualNOR_X|F~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~11_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Low|dualNOR_X|F~11_dataout\ & \Ins~dataout\(0) & \regB~dataout\(4));

\ALU_High|XOR1|F~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(4) & \ALU_Low|triNOR3|F~6_dataout\);

\ALU_High|XOR1|F~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(4) & \ALU_Low|triNOR3|F~6_dataout\);

\ALU_High|XOR1|F~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(4) & \ALU_Low|triNOR3|F~6_dataout\);

\ALU_High|XOR1|F~11_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Low|dualNOR_X|F~11_dataout\ & \regA~dataout\(4));

\ALU_High|XOR1|F~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR1|F~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR1|F~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

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

\~GND~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~17_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~17_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~0bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(0) & \regA~dataout\(0));

\ALU_Low|XOR1|F~0bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|XOR1|F~0bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|XOR1|F~0bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(4));

\ALU_Low|XOR1|F~0bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(0) & \regA~dataout\(0));

\ALU_Low|XOR1|F~0bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~0bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~0bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~0bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR1|F~0bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR1|F~0bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~0bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(6) & \regA~dataout\(6) & NOT \Ins~dataout\(3));

\ALU_High|XOR2|F~0bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & NOT \Ins~dataout\(3) & \Ins~dataout\(1) & NOT \Ins~dataout\(2));

\ALU_High|XOR2|F~0bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & \regA~dataout\(6) & NOT \Ins~dataout\(2));

\ALU_High|XOR2|F~0bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & NOT \regA~dataout\(6) & \Ins~dataout\(1));

\ALU_High|XOR2|F~0bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(6) & NOT \regA~dataout\(6) & \Ins~dataout\(0));

\ALU_High|XOR2|F~0bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~0bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~0bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~0bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR2|F~0bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR2|F~0bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3) & \Ins~dataout\(2));

\ALU_Low|XOR3|F~0bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(3) & \regA~dataout\(3));

\ALU_Low|XOR3|F~0bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(1) & NOT \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_Low|XOR3|F~0bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(3) & NOT \regA~dataout\(3));

\ALU_Low|XOR3|F~0bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Low|XOR3|F~0bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Low|XOR3|F~0bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & NOT \regA~dataout\(7) & \Ins~dataout\(1));

\ALU_High|XOR3|F~0bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(0) & \regB~dataout\(7) & NOT \regA~dataout\(7));

\ALU_High|XOR3|F~0bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(3) & \regB~dataout\(7) & \regA~dataout\(7));

\ALU_High|XOR3|F~0bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(2) & NOT \regB~dataout\(7) & \regA~dataout\(7));

\ALU_High|XOR3|F~0bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_High|XOR3|F~0bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_High|XOR3|F~0bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~13_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLKFLOP|Qnot~en_dataout\ & \CLKFLOP|Qnot~reg0_dataout\ & NOT \UserCLK~dataout\);

\interntalCLK~14_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SlowCLK~dataout\ & NOT \UserCLK~dataout\);

\interntalCLK~15_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \SlowCLK~dataout\ & \CLKFLOP|Qnot~en_dataout\ & NOT \CLKFLOP|Qnot~reg0_dataout\);

\ALU_High|XOR1|F~0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(5) & \Ins~dataout\(2));

\ALU_High|XOR1|F~1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(5) & \regA~dataout\(5) & \Ins~dataout\(3));

\ALU_High|XOR1|F~2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & NOT \regA~dataout\(5) & NOT \Ins~dataout\(1));

\ALU_High|XOR1|F~3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & \regB~dataout\(5) & NOT \regA~dataout\(5));

\ALU_High|dualNOR0|F~6sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|dualNOR0|F~6sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(4) & \regA~dataout\(4));

\ALU_High|dualNOR2|F~6sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regB~dataout\(6) & \regA~dataout\(6));

\ALU_High|dualNOR2|F~6sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & \regB~dataout\(6) & \regA~dataout\(6));
\ALT_INV_SlowCLK~dataout\ <= NOT \SlowCLK~dataout\;
\ALT_INV_UserCLK~dataout\ <= NOT \UserCLK~dataout\;
\ALT_INV_Ins~dataout\(5) <= NOT \Ins~dataout\(5);
\ALT_INV_Ins~dataout\(3) <= NOT \Ins~dataout\(3);
\ALT_INV_Ins~dataout\(2) <= NOT \Ins~dataout\(2);
\ALT_INV_Ins~dataout\(4) <= NOT \Ins~dataout\(4);
\ALT_INV_Ins~dataout\(0) <= NOT \Ins~dataout\(0);
\ALT_INV_Ins~dataout\(1) <= NOT \Ins~dataout\(1);
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
\SignalGenerator|D2|ALT_INV_Qnot~reg0_dataout\ <= NOT \SignalGenerator|D2|Qnot~reg0_dataout\;
\ALU_Low|dualNOR_X|ALT_INV_F~11_dataout\ <= NOT \ALU_Low|dualNOR_X|F~11_dataout\;
\ALU_Low|triNOR3|ALT_INV_F~6_dataout\ <= NOT \ALU_Low|triNOR3|F~6_dataout\;
\SignalGenerator|D1|ALT_INV_Q~reg0_dataout\ <= NOT \SignalGenerator|D1|Q~reg0_dataout\;
\ALU_Low|quadNOR0|ALT_INV_F~5_dataout\ <= NOT \ALU_Low|quadNOR0|F~5_dataout\;
\SignalGenerator|D0|ALT_INV_Qnot~reg0_dataout\ <= NOT \SignalGenerator|D0|Qnot~reg0_dataout\;
\SignalGenerator|D0|ALT_INV_Qnot~en_dataout\ <= NOT \SignalGenerator|D0|Qnot~en_dataout\;
\CLKFLOP|ALT_INV_Qnot~reg0_dataout\ <= NOT \CLKFLOP|Qnot~reg0_dataout\;
\CLKFLOP|ALT_INV_Qnot~en_dataout\ <= NOT \CLKFLOP|Qnot~en_dataout\;

-- Location: LC46
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

-- Location: LC45
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

-- Location: LC43
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

-- Location: LC40
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

-- Location: LC38
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

-- Location: LC37
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

-- Location: LC35
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

-- Location: LC64
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

-- Location: LC61
\~GND~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~8_pterm0_bus\,
	pterm1 => \~GND~8_pterm1_bus\,
	pterm2 => \~GND~8_pterm2_bus\,
	pterm3 => \~GND~8_pterm3_bus\,
	pterm4 => \~GND~8_pterm4_bus\,
	pterm5 => \~GND~8_pterm5_bus\,
	pxor => \~GND~8_pxor_bus\,
	pclk => \~GND~8_pclk_bus\,
	papre => \~GND~8_papre_bus\,
	paclr => \~GND~8_paclr_bus\,
	pena => \~GND~8_pena_bus\,
	dataout => \~GND~8~dataout\);

-- Location: LC59
\~GND~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~9_pterm0_bus\,
	pterm1 => \~GND~9_pterm1_bus\,
	pterm2 => \~GND~9_pterm2_bus\,
	pterm3 => \~GND~9_pterm3_bus\,
	pterm4 => \~GND~9_pterm4_bus\,
	pterm5 => \~GND~9_pterm5_bus\,
	pxor => \~GND~9_pxor_bus\,
	pclk => \~GND~9_pclk_bus\,
	papre => \~GND~9_papre_bus\,
	paclr => \~GND~9_paclr_bus\,
	pena => \~GND~9_pena_bus\,
	dataout => \~GND~9~dataout\);

-- Location: LC57
\~GND~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~10_pterm0_bus\,
	pterm1 => \~GND~10_pterm1_bus\,
	pterm2 => \~GND~10_pterm2_bus\,
	pterm3 => \~GND~10_pterm3_bus\,
	pterm4 => \~GND~10_pterm4_bus\,
	pterm5 => \~GND~10_pterm5_bus\,
	pxor => \~GND~10_pxor_bus\,
	pclk => \~GND~10_pclk_bus\,
	papre => \~GND~10_papre_bus\,
	paclr => \~GND~10_paclr_bus\,
	pena => \~GND~10_pena_bus\,
	dataout => \~GND~10~dataout\);

-- Location: LC56
\~GND~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~11_pterm0_bus\,
	pterm1 => \~GND~11_pterm1_bus\,
	pterm2 => \~GND~11_pterm2_bus\,
	pterm3 => \~GND~11_pterm3_bus\,
	pterm4 => \~GND~11_pterm4_bus\,
	pterm5 => \~GND~11_pterm5_bus\,
	pxor => \~GND~11_pxor_bus\,
	pclk => \~GND~11_pclk_bus\,
	papre => \~GND~11_papre_bus\,
	paclr => \~GND~11_paclr_bus\,
	pena => \~GND~11_pena_bus\,
	dataout => \~GND~11~dataout\);

-- Location: LC53
\~GND~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~12_pterm0_bus\,
	pterm1 => \~GND~12_pterm1_bus\,
	pterm2 => \~GND~12_pterm2_bus\,
	pterm3 => \~GND~12_pterm3_bus\,
	pterm4 => \~GND~12_pterm4_bus\,
	pterm5 => \~GND~12_pterm5_bus\,
	pxor => \~GND~12_pxor_bus\,
	pclk => \~GND~12_pclk_bus\,
	papre => \~GND~12_papre_bus\,
	paclr => \~GND~12_paclr_bus\,
	pena => \~GND~12_pena_bus\,
	dataout => \~GND~12~dataout\);

-- Location: LC51
\~GND~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~13_pterm0_bus\,
	pterm1 => \~GND~13_pterm1_bus\,
	pterm2 => \~GND~13_pterm2_bus\,
	pterm3 => \~GND~13_pterm3_bus\,
	pterm4 => \~GND~13_pterm4_bus\,
	pterm5 => \~GND~13_pterm5_bus\,
	pxor => \~GND~13_pxor_bus\,
	pclk => \~GND~13_pclk_bus\,
	papre => \~GND~13_papre_bus\,
	paclr => \~GND~13_paclr_bus\,
	pena => \~GND~13_pena_bus\,
	dataout => \~GND~13~dataout\);

-- Location: LC49
\~GND~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~14_pterm0_bus\,
	pterm1 => \~GND~14_pterm1_bus\,
	pterm2 => \~GND~14_pterm2_bus\,
	pterm3 => \~GND~14_pterm3_bus\,
	pterm4 => \~GND~14_pterm4_bus\,
	pterm5 => \~GND~14_pterm5_bus\,
	pxor => \~GND~14_pxor_bus\,
	pclk => \~GND~14_pclk_bus\,
	papre => \~GND~14_papre_bus\,
	paclr => \~GND~14_paclr_bus\,
	pena => \~GND~14_pena_bus\,
	dataout => \~GND~14~dataout\);

-- Location: LC118
\~GND~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~15_pterm0_bus\,
	pterm1 => \~GND~15_pterm1_bus\,
	pterm2 => \~GND~15_pterm2_bus\,
	pterm3 => \~GND~15_pterm3_bus\,
	pterm4 => \~GND~15_pterm4_bus\,
	pterm5 => \~GND~15_pterm5_bus\,
	pxor => \~GND~15_pxor_bus\,
	pclk => \~GND~15_pclk_bus\,
	papre => \~GND~15_papre_bus\,
	paclr => \~GND~15_paclr_bus\,
	pena => \~GND~15_pena_bus\,
	dataout => \~GND~15~dataout\);

-- Location: LC120
\~GND~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~16_pterm0_bus\,
	pterm1 => \~GND~16_pterm1_bus\,
	pterm2 => \~GND~16_pterm2_bus\,
	pterm3 => \~GND~16_pterm3_bus\,
	pterm4 => \~GND~16_pterm4_bus\,
	pterm5 => \~GND~16_pterm5_bus\,
	pxor => \~GND~16_pxor_bus\,
	pclk => \~GND~16_pclk_bus\,
	papre => \~GND~16_papre_bus\,
	paclr => \~GND~16_paclr_bus\,
	pena => \~GND~16_pena_bus\,
	dataout => \~GND~16~dataout\);

-- Location: LC126
\~GND~17\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~17_pterm0_bus\,
	pterm1 => \~GND~17_pterm1_bus\,
	pterm2 => \~GND~17_pterm2_bus\,
	pterm3 => \~GND~17_pterm3_bus\,
	pterm4 => \~GND~17_pterm4_bus\,
	pterm5 => \~GND~17_pterm5_bus\,
	pxor => \~GND~17_pxor_bus\,
	pclk => \~GND~17_pclk_bus\,
	papre => \~GND~17_papre_bus\,
	paclr => \~GND~17_paclr_bus\,
	pena => \~GND~17_pena_bus\,
	dataout => \~GND~17~dataout\);

-- Location: LC128
\~GND~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~18_pterm0_bus\,
	pterm1 => \~GND~18_pterm1_bus\,
	pterm2 => \~GND~18_pterm2_bus\,
	pterm3 => \~GND~18_pterm3_bus\,
	pterm4 => \~GND~18_pterm4_bus\,
	pterm5 => \~GND~18_pterm5_bus\,
	pxor => \~GND~18_pxor_bus\,
	pclk => \~GND~18_pclk_bus\,
	papre => \~GND~18_papre_bus\,
	paclr => \~GND~18_paclr_bus\,
	pena => \~GND~18_pena_bus\,
	dataout => \~GND~18~dataout\);

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

-- Location: LC65
\ALU_Low|XOR0|F~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR0|F~0_pterm0_bus\,
	pterm1 => \ALU_Low|XOR0|F~0_pterm1_bus\,
	pterm2 => \ALU_Low|XOR0|F~0_pterm2_bus\,
	pterm3 => \ALU_Low|XOR0|F~0_pterm3_bus\,
	pterm4 => \ALU_Low|XOR0|F~0_pterm4_bus\,
	pterm5 => \ALU_Low|XOR0|F~0_pterm5_bus\,
	pxor => \ALU_Low|XOR0|F~0_pxor_bus\,
	pclk => \ALU_Low|XOR0|F~0_pclk_bus\,
	papre => \ALU_Low|XOR0|F~0_papre_bus\,
	paclr => \ALU_Low|XOR0|F~0_paclr_bus\,
	pena => \ALU_Low|XOR0|F~0_pena_bus\,
	dataout => \ALU_Low|XOR0|F~0_dataout\);

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

-- Location: LC119
\CLKFLOP|Qnot~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Qnot~en_pterm0_bus\,
	pterm1 => \CLKFLOP|Qnot~en_pterm1_bus\,
	pterm2 => \CLKFLOP|Qnot~en_pterm2_bus\,
	pterm3 => \CLKFLOP|Qnot~en_pterm3_bus\,
	pterm4 => \CLKFLOP|Qnot~en_pterm4_bus\,
	pterm5 => \CLKFLOP|Qnot~en_pterm5_bus\,
	pxor => \CLKFLOP|Qnot~en_pxor_bus\,
	pclk => \CLKFLOP|Qnot~en_pclk_bus\,
	papre => \CLKFLOP|Qnot~en_papre_bus\,
	paclr => \CLKFLOP|Qnot~en_paclr_bus\,
	pena => \CLKFLOP|Qnot~en_pena_bus\,
	dataout => \CLKFLOP|Qnot~en_dataout\);

-- Location: LC121
\CLKFLOP|Qnot~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Qnot~reg0_pterm0_bus\,
	pterm1 => \CLKFLOP|Qnot~reg0_pterm1_bus\,
	pterm2 => \CLKFLOP|Qnot~reg0_pterm2_bus\,
	pterm3 => \CLKFLOP|Qnot~reg0_pterm3_bus\,
	pterm4 => \CLKFLOP|Qnot~reg0_pterm4_bus\,
	pterm5 => \CLKFLOP|Qnot~reg0_pterm5_bus\,
	pxor => \CLKFLOP|Qnot~reg0_pxor_bus\,
	pclk => \CLKFLOP|Qnot~reg0_pclk_bus\,
	papre => \CLKFLOP|Qnot~reg0_papre_bus\,
	paclr => \CLKFLOP|Qnot~reg0_paclr_bus\,
	pena => \CLKFLOP|Qnot~reg0_pena_bus\,
	dataout => \CLKFLOP|Qnot~reg0_dataout\);

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

-- Location: LC125
\interntalCLK~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \interntalCLK~12_pterm0_bus\,
	pterm1 => \interntalCLK~12_pterm1_bus\,
	pterm2 => \interntalCLK~12_pterm2_bus\,
	pterm3 => \interntalCLK~12_pterm3_bus\,
	pterm4 => \interntalCLK~12_pterm4_bus\,
	pterm5 => \interntalCLK~12_pterm5_bus\,
	pxor => \interntalCLK~12_pxor_bus\,
	pclk => \interntalCLK~12_pclk_bus\,
	papre => \interntalCLK~12_papre_bus\,
	paclr => \interntalCLK~12_paclr_bus\,
	pena => \interntalCLK~12_pena_bus\,
	dataout => \interntalCLK~12_dataout\);

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

-- Location: LC11
\ALU_Low|XOR1|F~0bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR1|F~0bal_pterm0_bus\,
	pterm1 => \ALU_Low|XOR1|F~0bal_pterm1_bus\,
	pterm2 => \ALU_Low|XOR1|F~0bal_pterm2_bus\,
	pterm3 => \ALU_Low|XOR1|F~0bal_pterm3_bus\,
	pterm4 => \ALU_Low|XOR1|F~0bal_pterm4_bus\,
	pterm5 => \ALU_Low|XOR1|F~0bal_pterm5_bus\,
	pxor => \ALU_Low|XOR1|F~0bal_pxor_bus\,
	pclk => \ALU_Low|XOR1|F~0bal_pclk_bus\,
	papre => \ALU_Low|XOR1|F~0bal_papre_bus\,
	paclr => \ALU_Low|XOR1|F~0bal_paclr_bus\,
	pena => \ALU_Low|XOR1|F~0bal_pena_bus\,
	dataout => \ALU_Low|XOR1|F~0bal_dataout\);

-- Location: LC67
\ALU_Low|XOR1|F~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR1|F~5_pterm0_bus\,
	pterm1 => \ALU_Low|XOR1|F~5_pterm1_bus\,
	pterm2 => \ALU_Low|XOR1|F~5_pterm2_bus\,
	pterm3 => \ALU_Low|XOR1|F~5_pterm3_bus\,
	pterm4 => \ALU_Low|XOR1|F~5_pterm4_bus\,
	pterm5 => \ALU_Low|XOR1|F~5_pterm5_bus\,
	pxor => \ALU_Low|XOR1|F~5_pxor_bus\,
	pclk => \ALU_Low|XOR1|F~5_pclk_bus\,
	papre => \ALU_Low|XOR1|F~5_papre_bus\,
	paclr => \ALU_Low|XOR1|F~5_paclr_bus\,
	pena => \ALU_Low|XOR1|F~5_pena_bus\,
	dataout => \ALU_Low|XOR1|F~5_dataout\);

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

-- Location: LC1
\ALU_Low|quadNOR0|F~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|quadNOR0|F~12_pterm0_bus\,
	pterm1 => \ALU_Low|quadNOR0|F~12_pterm1_bus\,
	pterm2 => \ALU_Low|quadNOR0|F~12_pterm2_bus\,
	pterm3 => \ALU_Low|quadNOR0|F~12_pterm3_bus\,
	pterm4 => \ALU_Low|quadNOR0|F~12_pterm4_bus\,
	pterm5 => \ALU_Low|quadNOR0|F~12_pterm5_bus\,
	pxor => \ALU_Low|quadNOR0|F~12_pxor_bus\,
	pclk => \ALU_Low|quadNOR0|F~12_pclk_bus\,
	papre => \ALU_Low|quadNOR0|F~12_papre_bus\,
	paclr => \ALU_Low|quadNOR0|F~12_paclr_bus\,
	pena => \ALU_Low|quadNOR0|F~12_pena_bus\,
	pexpout => \ALU_Low|quadNOR0|F~12_pexpout\);

-- Location: LC2
\ALU_Low|quadNOR0|F~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|quadNOR0|F~12_pexpout\,
	pterm0 => \ALU_Low|quadNOR0|F~18_pterm0_bus\,
	pterm1 => \ALU_Low|quadNOR0|F~18_pterm1_bus\,
	pterm2 => \ALU_Low|quadNOR0|F~18_pterm2_bus\,
	pterm3 => \ALU_Low|quadNOR0|F~18_pterm3_bus\,
	pterm4 => \ALU_Low|quadNOR0|F~18_pterm4_bus\,
	pterm5 => \ALU_Low|quadNOR0|F~18_pterm5_bus\,
	pxor => \ALU_Low|quadNOR0|F~18_pxor_bus\,
	pclk => \ALU_Low|quadNOR0|F~18_pclk_bus\,
	papre => \ALU_Low|quadNOR0|F~18_papre_bus\,
	paclr => \ALU_Low|quadNOR0|F~18_paclr_bus\,
	pena => \ALU_Low|quadNOR0|F~18_pena_bus\,
	pexpout => \ALU_Low|quadNOR0|F~18_pexpout\);

-- Location: LC3
\ALU_Low|quadNOR0|F~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|quadNOR0|F~18_pexpout\,
	pterm0 => \ALU_Low|quadNOR0|F~5_pterm0_bus\,
	pterm1 => \ALU_Low|quadNOR0|F~5_pterm1_bus\,
	pterm2 => \ALU_Low|quadNOR0|F~5_pterm2_bus\,
	pterm3 => \ALU_Low|quadNOR0|F~5_pterm3_bus\,
	pterm4 => \ALU_Low|quadNOR0|F~5_pterm4_bus\,
	pterm5 => \ALU_Low|quadNOR0|F~5_pterm5_bus\,
	pxor => \ALU_Low|quadNOR0|F~5_pxor_bus\,
	pclk => \ALU_Low|quadNOR0|F~5_pclk_bus\,
	papre => \ALU_Low|quadNOR0|F~5_papre_bus\,
	paclr => \ALU_Low|quadNOR0|F~5_paclr_bus\,
	pena => \ALU_Low|quadNOR0|F~5_pena_bus\,
	dataout => \ALU_Low|quadNOR0|F~5_dataout\);

-- Location: LC69
\ALU_Low|XOR2|F~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR2|F~0_pterm0_bus\,
	pterm1 => \ALU_Low|XOR2|F~0_pterm1_bus\,
	pterm2 => \ALU_Low|XOR2|F~0_pterm2_bus\,
	pterm3 => \ALU_Low|XOR2|F~0_pterm3_bus\,
	pterm4 => \ALU_Low|XOR2|F~0_pterm4_bus\,
	pterm5 => \ALU_Low|XOR2|F~0_pterm5_bus\,
	pxor => \ALU_Low|XOR2|F~0_pxor_bus\,
	pclk => \ALU_Low|XOR2|F~0_pclk_bus\,
	papre => \ALU_Low|XOR2|F~0_papre_bus\,
	paclr => \ALU_Low|XOR2|F~0_paclr_bus\,
	pena => \ALU_Low|XOR2|F~0_pena_bus\,
	dataout => \ALU_Low|XOR2|F~0_dataout\);

-- Location: LC71
\ALU_Low|XOR3|F~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR3|F~11_pterm0_bus\,
	pterm1 => \ALU_Low|XOR3|F~11_pterm1_bus\,
	pterm2 => \ALU_Low|XOR3|F~11_pterm2_bus\,
	pterm3 => \ALU_Low|XOR3|F~11_pterm3_bus\,
	pterm4 => \ALU_Low|XOR3|F~11_pterm4_bus\,
	pterm5 => \ALU_Low|XOR3|F~11_pterm5_bus\,
	pxor => \ALU_Low|XOR3|F~11_pxor_bus\,
	pclk => \ALU_Low|XOR3|F~11_pclk_bus\,
	papre => \ALU_Low|XOR3|F~11_papre_bus\,
	paclr => \ALU_Low|XOR3|F~11_paclr_bus\,
	pena => \ALU_Low|XOR3|F~11_pena_bus\,
	pexpout => \ALU_Low|XOR3|F~11_pexpout\);

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

-- Location: LC14
\ALU_Low|XOR3|F~0bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|XOR3|F~0bal_pterm0_bus\,
	pterm1 => \ALU_Low|XOR3|F~0bal_pterm1_bus\,
	pterm2 => \ALU_Low|XOR3|F~0bal_pterm2_bus\,
	pterm3 => \ALU_Low|XOR3|F~0bal_pterm3_bus\,
	pterm4 => \ALU_Low|XOR3|F~0bal_pterm4_bus\,
	pterm5 => \ALU_Low|XOR3|F~0bal_pterm5_bus\,
	pxor => \ALU_Low|XOR3|F~0bal_pxor_bus\,
	pclk => \ALU_Low|XOR3|F~0bal_pclk_bus\,
	papre => \ALU_Low|XOR3|F~0bal_papre_bus\,
	paclr => \ALU_Low|XOR3|F~0bal_paclr_bus\,
	pena => \ALU_Low|XOR3|F~0bal_pena_bus\,
	dataout => \ALU_Low|XOR3|F~0bal_dataout\);

-- Location: LC72
\ALU_Low|XOR3|F~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|XOR3|F~11_pexpout\,
	pterm0 => \ALU_Low|XOR3|F~4_pterm0_bus\,
	pterm1 => \ALU_Low|XOR3|F~4_pterm1_bus\,
	pterm2 => \ALU_Low|XOR3|F~4_pterm2_bus\,
	pterm3 => \ALU_Low|XOR3|F~4_pterm3_bus\,
	pterm4 => \ALU_Low|XOR3|F~4_pterm4_bus\,
	pterm5 => \ALU_Low|XOR3|F~4_pterm5_bus\,
	pxor => \ALU_Low|XOR3|F~4_pxor_bus\,
	pclk => \ALU_Low|XOR3|F~4_pclk_bus\,
	papre => \ALU_Low|XOR3|F~4_papre_bus\,
	paclr => \ALU_Low|XOR3|F~4_paclr_bus\,
	pena => \ALU_Low|XOR3|F~4_pena_bus\,
	dataout => \ALU_Low|XOR3|F~4_dataout\);

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

-- Location: LC9
\ALU_Low|triNOR3|F~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|triNOR3|F~6_pterm0_bus\,
	pterm1 => \ALU_Low|triNOR3|F~6_pterm1_bus\,
	pterm2 => \ALU_Low|triNOR3|F~6_pterm2_bus\,
	pterm3 => \ALU_Low|triNOR3|F~6_pterm3_bus\,
	pterm4 => \ALU_Low|triNOR3|F~6_pterm4_bus\,
	pterm5 => \ALU_Low|triNOR3|F~6_pterm5_bus\,
	pxor => \ALU_Low|triNOR3|F~6_pxor_bus\,
	pclk => \ALU_Low|triNOR3|F~6_pclk_bus\,
	papre => \ALU_Low|triNOR3|F~6_papre_bus\,
	paclr => \ALU_Low|triNOR3|F~6_paclr_bus\,
	pena => \ALU_Low|triNOR3|F~6_pena_bus\,
	dataout => \ALU_Low|triNOR3|F~6_dataout\);

-- Location: LC4
\ALU_Low|dualNOR_X|F~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Low|dualNOR_X|F~12_pterm0_bus\,
	pterm1 => \ALU_Low|dualNOR_X|F~12_pterm1_bus\,
	pterm2 => \ALU_Low|dualNOR_X|F~12_pterm2_bus\,
	pterm3 => \ALU_Low|dualNOR_X|F~12_pterm3_bus\,
	pterm4 => \ALU_Low|dualNOR_X|F~12_pterm4_bus\,
	pterm5 => \ALU_Low|dualNOR_X|F~12_pterm5_bus\,
	pxor => \ALU_Low|dualNOR_X|F~12_pxor_bus\,
	pclk => \ALU_Low|dualNOR_X|F~12_pclk_bus\,
	papre => \ALU_Low|dualNOR_X|F~12_papre_bus\,
	paclr => \ALU_Low|dualNOR_X|F~12_paclr_bus\,
	pena => \ALU_Low|dualNOR_X|F~12_pena_bus\,
	pexpout => \ALU_Low|dualNOR_X|F~12_pexpout\);

-- Location: LC5
\ALU_Low|dualNOR_X|F~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_Low|dualNOR_X|F~12_pexpout\,
	pterm0 => \ALU_Low|dualNOR_X|F~11_pterm0_bus\,
	pterm1 => \ALU_Low|dualNOR_X|F~11_pterm1_bus\,
	pterm2 => \ALU_Low|dualNOR_X|F~11_pterm2_bus\,
	pterm3 => \ALU_Low|dualNOR_X|F~11_pterm3_bus\,
	pterm4 => \ALU_Low|dualNOR_X|F~11_pterm4_bus\,
	pterm5 => \ALU_Low|dualNOR_X|F~11_pterm5_bus\,
	pxor => \ALU_Low|dualNOR_X|F~11_pxor_bus\,
	pclk => \ALU_Low|dualNOR_X|F~11_pclk_bus\,
	papre => \ALU_Low|dualNOR_X|F~11_papre_bus\,
	paclr => \ALU_Low|dualNOR_X|F~11_paclr_bus\,
	pena => \ALU_Low|dualNOR_X|F~11_pena_bus\,
	dataout => \ALU_Low|dualNOR_X|F~11_dataout\);

-- Location: LC73
\ALU_High|XOR0|F~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR0|F~0_pterm0_bus\,
	pterm1 => \ALU_High|XOR0|F~0_pterm1_bus\,
	pterm2 => \ALU_High|XOR0|F~0_pterm2_bus\,
	pterm3 => \ALU_High|XOR0|F~0_pterm3_bus\,
	pterm4 => \ALU_High|XOR0|F~0_pterm4_bus\,
	pterm5 => \ALU_High|XOR0|F~0_pterm5_bus\,
	pxor => \ALU_High|XOR0|F~0_pxor_bus\,
	pclk => \ALU_High|XOR0|F~0_pclk_bus\,
	papre => \ALU_High|XOR0|F~0_papre_bus\,
	paclr => \ALU_High|XOR0|F~0_paclr_bus\,
	pena => \ALU_High|XOR0|F~0_pena_bus\,
	dataout => \ALU_High|XOR0|F~0_dataout\);

-- Location: LC74
\ALU_High|XOR1|F~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR1|F~11_pterm0_bus\,
	pterm1 => \ALU_High|XOR1|F~11_pterm1_bus\,
	pterm2 => \ALU_High|XOR1|F~11_pterm2_bus\,
	pterm3 => \ALU_High|XOR1|F~11_pterm3_bus\,
	pterm4 => \ALU_High|XOR1|F~11_pterm4_bus\,
	pterm5 => \ALU_High|XOR1|F~11_pterm5_bus\,
	pxor => \ALU_High|XOR1|F~11_pxor_bus\,
	pclk => \ALU_High|XOR1|F~11_pclk_bus\,
	papre => \ALU_High|XOR1|F~11_papre_bus\,
	paclr => \ALU_High|XOR1|F~11_paclr_bus\,
	pena => \ALU_High|XOR1|F~11_pena_bus\,
	pexpout => \ALU_High|XOR1|F~11_pexpout\);

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

-- Location: SEXP77
\ALU_High|XOR1|F~0\ : max_sexp
PORT MAP (
	datain => \ALU_High|XOR1|F~0_datain_bus\,
	dataout => \ALU_High|XOR1|F~0_dataout\);

-- Location: SEXP71
\ALU_High|XOR1|F~1\ : max_sexp
PORT MAP (
	datain => \ALU_High|XOR1|F~1_datain_bus\,
	dataout => \ALU_High|XOR1|F~1_dataout\);

-- Location: SEXP68
\ALU_High|XOR1|F~2\ : max_sexp
PORT MAP (
	datain => \ALU_High|XOR1|F~2_datain_bus\,
	dataout => \ALU_High|XOR1|F~2_dataout\);

-- Location: SEXP66
\ALU_High|XOR1|F~3\ : max_sexp
PORT MAP (
	datain => \ALU_High|XOR1|F~3_datain_bus\,
	dataout => \ALU_High|XOR1|F~3_dataout\);

-- Location: LC75
\ALU_High|XOR1|F~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \ALU_High|XOR1|F~11_pexpout\,
	pterm0 => \ALU_High|XOR1|F~4_pterm0_bus\,
	pterm1 => \ALU_High|XOR1|F~4_pterm1_bus\,
	pterm2 => \ALU_High|XOR1|F~4_pterm2_bus\,
	pterm3 => \ALU_High|XOR1|F~4_pterm3_bus\,
	pterm4 => \ALU_High|XOR1|F~4_pterm4_bus\,
	pterm5 => \ALU_High|XOR1|F~4_pterm5_bus\,
	pxor => \ALU_High|XOR1|F~4_pxor_bus\,
	pclk => \ALU_High|XOR1|F~4_pclk_bus\,
	papre => \ALU_High|XOR1|F~4_papre_bus\,
	paclr => \ALU_High|XOR1|F~4_paclr_bus\,
	pena => \ALU_High|XOR1|F~4_pena_bus\,
	dataout => \ALU_High|XOR1|F~4_dataout\);

-- Location: LC68
\ALU_High|triNOR0|F~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|triNOR0|F~6_pterm0_bus\,
	pterm1 => \ALU_High|triNOR0|F~6_pterm1_bus\,
	pterm2 => \ALU_High|triNOR0|F~6_pterm2_bus\,
	pterm3 => \ALU_High|triNOR0|F~6_pterm3_bus\,
	pterm4 => \ALU_High|triNOR0|F~6_pterm4_bus\,
	pterm5 => \ALU_High|triNOR0|F~6_pterm5_bus\,
	pxor => \ALU_High|triNOR0|F~6_pxor_bus\,
	pclk => \ALU_High|triNOR0|F~6_pclk_bus\,
	papre => \ALU_High|triNOR0|F~6_papre_bus\,
	paclr => \ALU_High|triNOR0|F~6_paclr_bus\,
	pena => \ALU_High|triNOR0|F~6_pena_bus\,
	dataout => \ALU_High|triNOR0|F~6_dataout\);

-- Location: LC66
\ALU_High|triNOR1|F~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|triNOR1|F~6_pterm0_bus\,
	pterm1 => \ALU_High|triNOR1|F~6_pterm1_bus\,
	pterm2 => \ALU_High|triNOR1|F~6_pterm2_bus\,
	pterm3 => \ALU_High|triNOR1|F~6_pterm3_bus\,
	pterm4 => \ALU_High|triNOR1|F~6_pterm4_bus\,
	pterm5 => \ALU_High|triNOR1|F~6_pterm5_bus\,
	pxor => \ALU_High|triNOR1|F~6_pxor_bus\,
	pclk => \ALU_High|triNOR1|F~6_pclk_bus\,
	papre => \ALU_High|triNOR1|F~6_papre_bus\,
	paclr => \ALU_High|triNOR1|F~6_paclr_bus\,
	pena => \ALU_High|triNOR1|F~6_pena_bus\,
	dataout => \ALU_High|triNOR1|F~6_dataout\);

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

-- Location: LC12
\ALU_High|XOR2|F~0bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR2|F~0bal_pterm0_bus\,
	pterm1 => \ALU_High|XOR2|F~0bal_pterm1_bus\,
	pterm2 => \ALU_High|XOR2|F~0bal_pterm2_bus\,
	pterm3 => \ALU_High|XOR2|F~0bal_pterm3_bus\,
	pterm4 => \ALU_High|XOR2|F~0bal_pterm4_bus\,
	pterm5 => \ALU_High|XOR2|F~0bal_pterm5_bus\,
	pxor => \ALU_High|XOR2|F~0bal_pxor_bus\,
	pclk => \ALU_High|XOR2|F~0bal_pclk_bus\,
	papre => \ALU_High|XOR2|F~0bal_papre_bus\,
	paclr => \ALU_High|XOR2|F~0bal_paclr_bus\,
	pena => \ALU_High|XOR2|F~0bal_pena_bus\,
	dataout => \ALU_High|XOR2|F~0bal_dataout\);

-- Location: SEXP70
\ALU_High|dualNOR0|F~6sexp1\ : max_sexp
PORT MAP (
	datain => \ALU_High|dualNOR0|F~6sexp1_datain_bus\,
	dataout => \ALU_High|dualNOR0|F~6sexp1_dataout\);

-- Location: SEXP76
\ALU_High|dualNOR0|F~6sexp2\ : max_sexp
PORT MAP (
	datain => \ALU_High|dualNOR0|F~6sexp2_datain_bus\,
	dataout => \ALU_High|dualNOR0|F~6sexp2_dataout\);

-- Location: LC77
\ALU_High|XOR2|F~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR2|F~5_pterm0_bus\,
	pterm1 => \ALU_High|XOR2|F~5_pterm1_bus\,
	pterm2 => \ALU_High|XOR2|F~5_pterm2_bus\,
	pterm3 => \ALU_High|XOR2|F~5_pterm3_bus\,
	pterm4 => \ALU_High|XOR2|F~5_pterm4_bus\,
	pterm5 => \ALU_High|XOR2|F~5_pterm5_bus\,
	pxor => \ALU_High|XOR2|F~5_pxor_bus\,
	pclk => \ALU_High|XOR2|F~5_pclk_bus\,
	papre => \ALU_High|XOR2|F~5_papre_bus\,
	paclr => \ALU_High|XOR2|F~5_paclr_bus\,
	pena => \ALU_High|XOR2|F~5_pena_bus\,
	dataout => \ALU_High|XOR2|F~5_dataout\);

-- Location: SEXP116
\interntalCLK~13\ : max_sexp
PORT MAP (
	datain => \interntalCLK~13_datain_bus\,
	dataout => \interntalCLK~13_dataout\);

-- Location: SEXP114
\interntalCLK~14\ : max_sexp
PORT MAP (
	datain => \interntalCLK~14_datain_bus\,
	dataout => \interntalCLK~14_dataout\);

-- Location: SEXP113
\interntalCLK~15\ : max_sexp
PORT MAP (
	datain => \interntalCLK~15_datain_bus\,
	dataout => \interntalCLK~15_dataout\);

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

-- Location: LC113
\SignalGenerator|D0|Qnot~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|D0|Qnot~en_pterm0_bus\,
	pterm1 => \SignalGenerator|D0|Qnot~en_pterm1_bus\,
	pterm2 => \SignalGenerator|D0|Qnot~en_pterm2_bus\,
	pterm3 => \SignalGenerator|D0|Qnot~en_pterm3_bus\,
	pterm4 => \SignalGenerator|D0|Qnot~en_pterm4_bus\,
	pterm5 => \SignalGenerator|D0|Qnot~en_pterm5_bus\,
	pxor => \SignalGenerator|D0|Qnot~en_pxor_bus\,
	pclk => \SignalGenerator|D0|Qnot~en_pclk_bus\,
	papre => \SignalGenerator|D0|Qnot~en_papre_bus\,
	paclr => \SignalGenerator|D0|Qnot~en_paclr_bus\,
	pena => \SignalGenerator|D0|Qnot~en_pena_bus\,
	dataout => \SignalGenerator|D0|Qnot~en_dataout\);

-- Location: LC114
\SignalGenerator|D1|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|D1|Q~reg0_pterm0_bus\,
	pterm1 => \SignalGenerator|D1|Q~reg0_pterm1_bus\,
	pterm2 => \SignalGenerator|D1|Q~reg0_pterm2_bus\,
	pterm3 => \SignalGenerator|D1|Q~reg0_pterm3_bus\,
	pterm4 => \SignalGenerator|D1|Q~reg0_pterm4_bus\,
	pterm5 => \SignalGenerator|D1|Q~reg0_pterm5_bus\,
	pxor => \SignalGenerator|D1|Q~reg0_pxor_bus\,
	pclk => \SignalGenerator|D1|Q~reg0_pclk_bus\,
	papre => \SignalGenerator|D1|Q~reg0_papre_bus\,
	paclr => \SignalGenerator|D1|Q~reg0_paclr_bus\,
	pena => \SignalGenerator|D1|Q~reg0_pena_bus\,
	dataout => \SignalGenerator|D1|Q~reg0_dataout\);

-- Location: LC116
\SignalGenerator|D2|Qnot~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|D2|Qnot~reg0_pterm0_bus\,
	pterm1 => \SignalGenerator|D2|Qnot~reg0_pterm1_bus\,
	pterm2 => \SignalGenerator|D2|Qnot~reg0_pterm2_bus\,
	pterm3 => \SignalGenerator|D2|Qnot~reg0_pterm3_bus\,
	pterm4 => \SignalGenerator|D2|Qnot~reg0_pterm4_bus\,
	pterm5 => \SignalGenerator|D2|Qnot~reg0_pterm5_bus\,
	pxor => \SignalGenerator|D2|Qnot~reg0_pxor_bus\,
	pclk => \SignalGenerator|D2|Qnot~reg0_pclk_bus\,
	papre => \SignalGenerator|D2|Qnot~reg0_papre_bus\,
	paclr => \SignalGenerator|D2|Qnot~reg0_paclr_bus\,
	pena => \SignalGenerator|D2|Qnot~reg0_pena_bus\,
	dataout => \SignalGenerator|D2|Qnot~reg0_dataout\);

-- Location: LC117
\SignalGenerator|D0|Qnot~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|D0|Qnot~reg0_pterm0_bus\,
	pterm1 => \SignalGenerator|D0|Qnot~reg0_pterm1_bus\,
	pterm2 => \SignalGenerator|D0|Qnot~reg0_pterm2_bus\,
	pterm3 => \SignalGenerator|D0|Qnot~reg0_pterm3_bus\,
	pterm4 => \SignalGenerator|D0|Qnot~reg0_pterm4_bus\,
	pterm5 => \SignalGenerator|D0|Qnot~reg0_pterm5_bus\,
	pxor => \SignalGenerator|D0|Qnot~reg0_pxor_bus\,
	pclk => \SignalGenerator|D0|Qnot~reg0_pclk_bus\,
	papre => \SignalGenerator|D0|Qnot~reg0_papre_bus\,
	paclr => \SignalGenerator|D0|Qnot~reg0_paclr_bus\,
	pena => \SignalGenerator|D0|Qnot~reg0_pena_bus\,
	dataout => \SignalGenerator|D0|Qnot~reg0_dataout\);

-- Location: LC21
\SignalGenerator|Count~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|Count~3_pterm0_bus\,
	pterm1 => \SignalGenerator|Count~3_pterm1_bus\,
	pterm2 => \SignalGenerator|Count~3_pterm2_bus\,
	pterm3 => \SignalGenerator|Count~3_pterm3_bus\,
	pterm4 => \SignalGenerator|Count~3_pterm4_bus\,
	pterm5 => \SignalGenerator|Count~3_pterm5_bus\,
	pxor => \SignalGenerator|Count~3_pxor_bus\,
	pclk => \SignalGenerator|Count~3_pclk_bus\,
	papre => \SignalGenerator|Count~3_papre_bus\,
	paclr => \SignalGenerator|Count~3_paclr_bus\,
	pena => \SignalGenerator|Count~3_pena_bus\,
	dataout => \SignalGenerator|Count~3_dataout\);

-- Location: LC19
\SignalGenerator|CounterOut~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|CounterOut~1_pterm0_bus\,
	pterm1 => \SignalGenerator|CounterOut~1_pterm1_bus\,
	pterm2 => \SignalGenerator|CounterOut~1_pterm2_bus\,
	pterm3 => \SignalGenerator|CounterOut~1_pterm3_bus\,
	pterm4 => \SignalGenerator|CounterOut~1_pterm4_bus\,
	pterm5 => \SignalGenerator|CounterOut~1_pterm5_bus\,
	pxor => \SignalGenerator|CounterOut~1_pxor_bus\,
	pclk => \SignalGenerator|CounterOut~1_pclk_bus\,
	papre => \SignalGenerator|CounterOut~1_papre_bus\,
	paclr => \SignalGenerator|CounterOut~1_paclr_bus\,
	pena => \SignalGenerator|CounterOut~1_pena_bus\,
	dataout => \SignalGenerator|CounterOut~1_dataout\);

-- Location: LC17
\SignalGenerator|InstructRead~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \SignalGenerator|InstructRead~1_pterm0_bus\,
	pterm1 => \SignalGenerator|InstructRead~1_pterm1_bus\,
	pterm2 => \SignalGenerator|InstructRead~1_pterm2_bus\,
	pterm3 => \SignalGenerator|InstructRead~1_pterm3_bus\,
	pterm4 => \SignalGenerator|InstructRead~1_pterm4_bus\,
	pterm5 => \SignalGenerator|InstructRead~1_pterm5_bus\,
	pxor => \SignalGenerator|InstructRead~1_pxor_bus\,
	pclk => \SignalGenerator|InstructRead~1_pclk_bus\,
	papre => \SignalGenerator|InstructRead~1_papre_bus\,
	paclr => \SignalGenerator|InstructRead~1_paclr_bus\,
	pena => \SignalGenerator|InstructRead~1_pena_bus\,
	dataout => \SignalGenerator|InstructRead~1_dataout\);

-- Location: LC8
\ALU_High|triNOR2|F~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|triNOR2|F~6_pterm0_bus\,
	pterm1 => \ALU_High|triNOR2|F~6_pterm1_bus\,
	pterm2 => \ALU_High|triNOR2|F~6_pterm2_bus\,
	pterm3 => \ALU_High|triNOR2|F~6_pterm3_bus\,
	pterm4 => \ALU_High|triNOR2|F~6_pterm4_bus\,
	pterm5 => \ALU_High|triNOR2|F~6_pterm5_bus\,
	pxor => \ALU_High|triNOR2|F~6_pxor_bus\,
	pclk => \ALU_High|triNOR2|F~6_pclk_bus\,
	papre => \ALU_High|triNOR2|F~6_papre_bus\,
	paclr => \ALU_High|triNOR2|F~6_paclr_bus\,
	pena => \ALU_High|triNOR2|F~6_pena_bus\,
	dataout => \ALU_High|triNOR2|F~6_dataout\);

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

-- Location: LC7
\ALU_High|XOR3|F~0bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR3|F~0bal_pterm0_bus\,
	pterm1 => \ALU_High|XOR3|F~0bal_pterm1_bus\,
	pterm2 => \ALU_High|XOR3|F~0bal_pterm2_bus\,
	pterm3 => \ALU_High|XOR3|F~0bal_pterm3_bus\,
	pterm4 => \ALU_High|XOR3|F~0bal_pterm4_bus\,
	pterm5 => \ALU_High|XOR3|F~0bal_pterm5_bus\,
	pxor => \ALU_High|XOR3|F~0bal_pxor_bus\,
	pclk => \ALU_High|XOR3|F~0bal_pclk_bus\,
	papre => \ALU_High|XOR3|F~0bal_papre_bus\,
	paclr => \ALU_High|XOR3|F~0bal_paclr_bus\,
	pena => \ALU_High|XOR3|F~0bal_pena_bus\,
	dataout => \ALU_High|XOR3|F~0bal_dataout\);

-- Location: SEXP78
\ALU_High|dualNOR2|F~6sexp1\ : max_sexp
PORT MAP (
	datain => \ALU_High|dualNOR2|F~6sexp1_datain_bus\,
	dataout => \ALU_High|dualNOR2|F~6sexp1_dataout\);

-- Location: SEXP79
\ALU_High|dualNOR2|F~6sexp2\ : max_sexp
PORT MAP (
	datain => \ALU_High|dualNOR2|F~6sexp2_datain_bus\,
	dataout => \ALU_High|dualNOR2|F~6sexp2_dataout\);

-- Location: LC80
\ALU_High|XOR3|F~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_High|XOR3|F~4_pterm0_bus\,
	pterm1 => \ALU_High|XOR3|F~4_pterm1_bus\,
	pterm2 => \ALU_High|XOR3|F~4_pterm2_bus\,
	pterm3 => \ALU_High|XOR3|F~4_pterm3_bus\,
	pterm4 => \ALU_High|XOR3|F~4_pterm4_bus\,
	pterm5 => \ALU_High|XOR3|F~4_pterm5_bus\,
	pxor => \ALU_High|XOR3|F~4_pxor_bus\,
	pclk => \ALU_High|XOR3|F~4_pclk_bus\,
	papre => \ALU_High|XOR3|F~4_papre_bus\,
	paclr => \ALU_High|XOR3|F~4_paclr_bus\,
	pena => \ALU_High|XOR3|F~4_pena_bus\,
	dataout => \ALU_High|XOR3|F~4_dataout\);

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
	padio => ww_Ins(6));

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
	padio => ww_Ins(7));

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
	datain => \~GND~0~dataout\,
	oe => VCC,
	padio => ww_RegAControl);

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
	datain => \~GND~1~dataout\,
	oe => VCC,
	padio => ww_RegBControl);

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
	datain => \~GND~2~dataout\,
	oe => VCC,
	padio => ww_MainRegReadControl);

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
	datain => \~GND~3~dataout\,
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
	datain => \~GND~4~dataout\,
	oe => VCC,
	padio => ww_HighJumpRegLoad);

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
	datain => \~GND~5~dataout\,
	oe => VCC,
	padio => ww_JumpEnable);

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
	datain => \~GND~6~dataout\,
	oe => VCC,
	padio => ww_MainRegOutputControl);

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
	datain => \~GND~7~dataout\,
	oe => VCC,
	padio => ww_MemOutEnable);

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
	datain => \~GND~8~dataout\,
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
	datain => \~GND~9~dataout\,
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
	datain => \~GND~10~dataout\,
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
	datain => \~GND~11~dataout\,
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
	datain => \~GND~12~dataout\,
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
	datain => \~GND~13~dataout\,
	oe => VCC,
	padio => ww_StackOutControl);

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
	datain => \~GND~14~dataout\,
	oe => VCC,
	padio => ww_DisplayControl);

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
	datain => \~GND~15~dataout\,
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
	datain => \~GND~16~dataout\,
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
	datain => \~GND~17~dataout\,
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
	datain => \~GND~18~dataout\,
	oe => VCC,
	padio => ww_STATE);

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
	datain => \ALU_Low|XOR0|F~0_dataout\,
	oe => VCC,
	padio => ww_MainBus(0));

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
	datain => \interntalCLK~12_dataout\,
	oe => VCC,
	padio => ww_CLK);

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
	datain => \ALU_Low|XOR1|F~5_dataout\,
	oe => VCC,
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
	datain => \ALU_Low|XOR2|F~0_dataout\,
	oe => VCC,
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
	datain => \ALU_Low|XOR3|F~4_dataout\,
	oe => VCC,
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
	datain => \ALU_High|XOR0|F~0_dataout\,
	oe => VCC,
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
	datain => \ALU_High|XOR1|F~4_dataout\,
	oe => VCC,
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
	datain => \ALU_High|XOR2|F~5_dataout\,
	oe => VCC,
	padio => ww_MainBus(6));

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
	datain => \SignalGenerator|Count~3_dataout\,
	oe => VCC,
	padio => ww_Count);

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
	datain => \SignalGenerator|CounterOut~1_dataout\,
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
	datain => \SignalGenerator|InstructRead~1_dataout\,
	oe => VCC,
	padio => ww_InsRegControl);

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
	datain => \ALU_High|XOR3|F~4_dataout\,
	oe => VCC,
	padio => ww_MainBus(7));
END structure;


