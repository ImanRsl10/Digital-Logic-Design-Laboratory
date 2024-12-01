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

-- DATE "12/10/2022 10:20:53"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DDS IS
    PORT (
	DDS_Out : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	Phase_cntrl : IN std_logic_vector(1 DOWNTO 0)
	);
END DDS;

-- Design Ports Information
-- DDS_Out[7]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[6]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[5]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[3]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[2]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[1]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DDS_Out[0]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Phase_cntrl[0]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Phase_cntrl[1]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DDS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DDS_Out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Phase_cntrl : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|regOut[0]~8_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \inst|regOut[0]~9\ : std_logic;
SIGNAL \inst|regOut[1]~10_combout\ : std_logic;
SIGNAL \inst|regOut[1]~11\ : std_logic;
SIGNAL \inst|regOut[2]~12_combout\ : std_logic;
SIGNAL \inst|regOut[2]~13\ : std_logic;
SIGNAL \inst|regOut[3]~14_combout\ : std_logic;
SIGNAL \inst|regOut[3]~15\ : std_logic;
SIGNAL \inst|regOut[4]~16_combout\ : std_logic;
SIGNAL \inst|regOut[4]~17\ : std_logic;
SIGNAL \inst|regOut[5]~18_combout\ : std_logic;
SIGNAL \inst|regOut[5]~19\ : std_logic;
SIGNAL \inst|regOut[6]~20_combout\ : std_logic;
SIGNAL \inst|regOut[6]~21\ : std_logic;
SIGNAL \inst|regOut[7]~22_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|regOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Phase_cntrl~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

DDS_Out <= ww_DDS_Out;
ww_clk <= clk;
ww_rst <= rst;
ww_Phase_cntrl <= Phase_cntrl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|regOut\(7) & \inst|regOut\(6) & \inst|regOut\(5) & \inst|regOut\(4) & \inst|regOut\(3) & \inst|regOut\(2) & \inst|regOut\(1) & \inst|regOut\(0));

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Phase_cntrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Phase_cntrl(1),
	combout => \Phase_cntrl~combout\(1));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Phase_cntrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Phase_cntrl(0),
	combout => \Phase_cntrl~combout\(0));

-- Location: LCCOMB_X18_Y3_N12
\inst|regOut[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[0]~8_combout\ = (\inst|regOut\(0) & (\Phase_cntrl~combout\(0) $ (VCC))) # (!\inst|regOut\(0) & (\Phase_cntrl~combout\(0) & VCC))
-- \inst|regOut[0]~9\ = CARRY((\inst|regOut\(0) & \Phase_cntrl~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|regOut\(0),
	datab => \Phase_cntrl~combout\(0),
	datad => VCC,
	combout => \inst|regOut[0]~8_combout\,
	cout => \inst|regOut[0]~9\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X18_Y3_N13
\inst|regOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[0]~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(0));

-- Location: LCCOMB_X18_Y3_N14
\inst|regOut[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[1]~10_combout\ = (\Phase_cntrl~combout\(1) & ((\inst|regOut\(1) & (\inst|regOut[0]~9\ & VCC)) # (!\inst|regOut\(1) & (!\inst|regOut[0]~9\)))) # (!\Phase_cntrl~combout\(1) & ((\inst|regOut\(1) & (!\inst|regOut[0]~9\)) # (!\inst|regOut\(1) & 
-- ((\inst|regOut[0]~9\) # (GND)))))
-- \inst|regOut[1]~11\ = CARRY((\Phase_cntrl~combout\(1) & (!\inst|regOut\(1) & !\inst|regOut[0]~9\)) # (!\Phase_cntrl~combout\(1) & ((!\inst|regOut[0]~9\) # (!\inst|regOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Phase_cntrl~combout\(1),
	datab => \inst|regOut\(1),
	datad => VCC,
	cin => \inst|regOut[0]~9\,
	combout => \inst|regOut[1]~10_combout\,
	cout => \inst|regOut[1]~11\);

-- Location: LCFF_X18_Y3_N15
\inst|regOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[1]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(1));

-- Location: LCCOMB_X18_Y3_N16
\inst|regOut[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[2]~12_combout\ = (\inst|regOut\(2) & (\inst|regOut[1]~11\ $ (GND))) # (!\inst|regOut\(2) & (!\inst|regOut[1]~11\ & VCC))
-- \inst|regOut[2]~13\ = CARRY((\inst|regOut\(2) & !\inst|regOut[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|regOut\(2),
	datad => VCC,
	cin => \inst|regOut[1]~11\,
	combout => \inst|regOut[2]~12_combout\,
	cout => \inst|regOut[2]~13\);

-- Location: LCFF_X18_Y3_N17
\inst|regOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[2]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(2));

-- Location: LCCOMB_X18_Y3_N18
\inst|regOut[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[3]~14_combout\ = (\inst|regOut\(3) & (!\inst|regOut[2]~13\)) # (!\inst|regOut\(3) & ((\inst|regOut[2]~13\) # (GND)))
-- \inst|regOut[3]~15\ = CARRY((!\inst|regOut[2]~13\) # (!\inst|regOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|regOut\(3),
	datad => VCC,
	cin => \inst|regOut[2]~13\,
	combout => \inst|regOut[3]~14_combout\,
	cout => \inst|regOut[3]~15\);

-- Location: LCFF_X18_Y3_N19
\inst|regOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[3]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(3));

-- Location: LCCOMB_X18_Y3_N20
\inst|regOut[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[4]~16_combout\ = (\inst|regOut\(4) & (\inst|regOut[3]~15\ $ (GND))) # (!\inst|regOut\(4) & (!\inst|regOut[3]~15\ & VCC))
-- \inst|regOut[4]~17\ = CARRY((\inst|regOut\(4) & !\inst|regOut[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|regOut\(4),
	datad => VCC,
	cin => \inst|regOut[3]~15\,
	combout => \inst|regOut[4]~16_combout\,
	cout => \inst|regOut[4]~17\);

-- Location: LCFF_X18_Y3_N21
\inst|regOut[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[4]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(4));

-- Location: LCCOMB_X18_Y3_N22
\inst|regOut[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[5]~18_combout\ = (\inst|regOut\(5) & (!\inst|regOut[4]~17\)) # (!\inst|regOut\(5) & ((\inst|regOut[4]~17\) # (GND)))
-- \inst|regOut[5]~19\ = CARRY((!\inst|regOut[4]~17\) # (!\inst|regOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|regOut\(5),
	datad => VCC,
	cin => \inst|regOut[4]~17\,
	combout => \inst|regOut[5]~18_combout\,
	cout => \inst|regOut[5]~19\);

-- Location: LCFF_X18_Y3_N23
\inst|regOut[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[5]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(5));

-- Location: LCCOMB_X18_Y3_N24
\inst|regOut[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[6]~20_combout\ = (\inst|regOut\(6) & (\inst|regOut[5]~19\ $ (GND))) # (!\inst|regOut\(6) & (!\inst|regOut[5]~19\ & VCC))
-- \inst|regOut[6]~21\ = CARRY((\inst|regOut\(6) & !\inst|regOut[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|regOut\(6),
	datad => VCC,
	cin => \inst|regOut[5]~19\,
	combout => \inst|regOut[6]~20_combout\,
	cout => \inst|regOut[6]~21\);

-- Location: LCFF_X18_Y3_N25
\inst|regOut[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[6]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(6));

-- Location: LCCOMB_X18_Y3_N26
\inst|regOut[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|regOut[7]~22_combout\ = \inst|regOut[6]~21\ $ (\inst|regOut\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|regOut\(7),
	cin => \inst|regOut[6]~21\,
	combout => \inst|regOut[7]~22_combout\);

-- Location: LCFF_X18_Y3_N27
\inst|regOut[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|regOut[7]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|regOut\(7));

-- Location: M4K_X17_Y3
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"7C797673706D6A6764615E5B5855524F4C494644413E3C393634312F2D2A282624211F1D1B1918161413110F0E0D0B0A090807060504040302020101010101010101010101020203040405060708090A0B0D0E0F1113141618191B1D1F212426282A2D2F313436393C3E414446494C4F5255585B5E6164676A6D707376797C808386898C8F9295989B9EA1A4A7AAADB0B3B6B9BBBEC1C3C6C9CBCED0D2D5D7D9DBDEE0E2E4E6E7E9EBECEEF0F1F2F4F5F6F7F8F9FAFBFBFCFDFDFEFEFEFEFEFFFEFEFEFEFEFDFDFCFBFBFAF9F8F7F6F5F4F2F1F0EEECEBE9E7E6E4E2E0DEDBD9D7D5D2D0CECBC9C6C3C1BEBBB9B6B3B0ADAAA7A4A19E9B9895928F8C89868380",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst3|altsyncram:altsyncram_component|altsyncram_5t61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(7));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(6));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(5));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(4));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(3));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(2));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(1));

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DDS_Out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DDS_Out(0));
END structure;


