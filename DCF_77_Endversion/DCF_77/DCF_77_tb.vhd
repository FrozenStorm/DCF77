--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:30:24 06/04/2015
-- Design Name:   
-- Module Name:   U:/Desktop/DCF_77/DCF_77_tb.vhd
-- Project Name:  DCF_77
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DCF_77_Decoder
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
 
ENTITY DCF_77_tb IS
END DCF_77_tb;
 
ARCHITECTURE behavior OF DCF_77_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DCF_77_Decoder
    PORT(
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         dcf_in : IN  std_logic;
         sync : OUT  std_logic;
         min_one : OUT  std_logic_vector(3 downto 0);
         min_ten : OUT  std_logic_vector(3 downto 0);
         hour_one : OUT  std_logic_vector(3 downto 0);
         hour_ten : OUT  std_logic_vector(3 downto 0);
         day_one : OUT  std_logic_vector(3 downto 0);
         day_ten : OUT  std_logic_vector(3 downto 0);
         month_one : OUT  std_logic_vector(3 downto 0);
         month_ten : OUT  std_logic_vector(3 downto 0);
         year_one : OUT  std_logic_vector(3 downto 0);
         year_ten : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal dcf_in : std_logic := '0';

 	--Outputs
   signal sync : std_logic;
   signal min_one : std_logic_vector(3 downto 0);
   signal min_ten : std_logic_vector(3 downto 0);
   signal hour_one : std_logic_vector(3 downto 0);
   signal hour_ten : std_logic_vector(3 downto 0);
   signal day_one : std_logic_vector(3 downto 0);
   signal day_ten : std_logic_vector(3 downto 0);
   signal month_one : std_logic_vector(3 downto 0);
   signal month_ten : std_logic_vector(3 downto 0);
   signal year_one : std_logic_vector(3 downto 0);
   signal year_ten : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 7.8125 ms;
	
	procedure DCF77Send( signal dcfbits : in std_logic_vector(58 downto 0); 
								signal sig       : out std_logic
                       ) is
	begin
      for i in 58 downto 0 loop
         sig <= '1';
         wait for 100 ms;
         if dcfbits(i)='0' then
            sig <= '0';
            wait for 900 ms;
         else
				wait for 100 ms;
            sig <= '0';
            wait for 800 ms;
         end if;
      end loop;
      wait for 1000 ms; -- Sekunde 59
	end procedure;

	signal dcfbits :  std_logic_vector(58 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DCF_77_Decoder PORT MAP (
          clk => clk,
          reset_n => reset_n,
          dcf_in => dcf_in,
          sync => sync,
          min_one => min_one,
          min_ten => min_ten,
          hour_one => hour_one,
          hour_ten => hour_ten,
          day_one => day_one,
          day_ten => day_ten,
          month_one => month_one,
          month_ten => month_ten,
          year_one => year_one,
          year_ten => year_ten
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
      wait for 1000 ms;
		reset_n <= '0';
		wait for 1000 ms;
		reset_n <= '1';
		wait for 1000 ms;	
      dcfbits <= "00101100010100100100100001001011010110010111000100101010001"; --  Mittwoch,29.04.15 16:10 
      DCF77Send(dcfbits, dcf_in);     
		DCF77Send(dcfbits, dcf_in);  
		

      wait;
   end process;

END;
