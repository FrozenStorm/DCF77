--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:01:31 05/28/2015
-- Design Name:   
-- Module Name:   X:/Desktop/DCF_77_noreset/DCF_77/divider_tb.vhd
-- Project Name:  DCF_77
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divider_tb IS
END divider_tb;
 
ARCHITECTURE behavior OF divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         clk_display : OUT  std_logic;
         clk_second : OUT  std_logic;
         clk_sampling : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '0';

 	--Outputs
   signal clk_display : std_logic;
   signal clk_second : std_logic;
   signal clk_sampling : std_logic;

   -- Clock period definitions
   constant clk_period : time := 30.517578125us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          clk => clk,
          reset_n => reset_n,
          clk_display => clk_display,
          clk_second => clk_second,
          clk_sampling => clk_sampling
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	  -- hold reset state for 100 ns.
			wait for clk_period*4;
			reset_n <= '0';
			wait for clk_period*4;
			reset_n <= '1';
      wait;
   end process;

END;
