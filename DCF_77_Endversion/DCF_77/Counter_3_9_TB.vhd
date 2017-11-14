--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:18:11 05/09/2015
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Dropbox/Ramsch/New_77/DCF_77/Counter_3_9_TB.vhd
-- Project Name:  DCF_77
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter_3_9
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
 
ENTITY Counter_3_9_TB IS
END Counter_3_9_TB;
 
ARCHITECTURE behavior OF Counter_3_9_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter_3_9
    PORT(
         clk : IN  std_logic;
         sync : IN  std_logic;
         reset_n : IN  std_logic;
         ci : IN  std_logic;
         ce : IN  std_logic;
         load : IN  std_logic_vector(3 downto 0);
         ten_count : IN  std_logic_vector(3 downto 0);
         count : OUT  std_logic_vector(3 downto 0);
         co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal sync : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal ci : std_logic := '0';
   signal ce : std_logic := '0';
   signal load : std_logic_vector(3 downto 0) := (others => '0');
   signal ten_count : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal count : std_logic_vector(3 downto 0);
   signal co : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter_3_9 PORT MAP (
          clk => clk,
          sync => sync,
          reset_n => reset_n,
          ci => ci,
          ce => ce,
          load => load,
          ten_count => ten_count,
          count => count,
          co => co
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
      wait for 10 ns;	
		ci <= '1';
		ce <='1';
		sync <= '0';
		load <= "0101";
		ten_count <= "0001";
		reset_n <= '0';
		wait for 10  ns;
		
		reset_n <= '1';
		wait for 10  ns;
		
		sync <= '1';
		
		wait for 10  ns;
		sync <= '0';

		wait for 100 ns;
		
		ce <= '0';
		
		wait for 20 ns;
		
		ce <= '1';
		
		wait for 20 ns;
		
		ci <= '0';
		
		wait for 20 ns;
		
		ci <= '1';
		
		wait for 20 ns;
		
		load <= "0000";
		
		wait for 10  ns;
		
		sync <= '1';
		ten_count <= "0010";
		
		wait for 10  ns;
		sync <= '0';
		
		
      wait;
   end process;

END;
