-- Vhdl test bench created from schematic C:\Users\Daniel\Dropbox\Ramsch\New_77\DCF_77\Clock.sch - Sat May 09 13:43:53 2015
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Clock_Clock_sch_tb IS
END Clock_Clock_sch_tb;
ARCHITECTURE behavioral OF Clock_Clock_sch_tb IS 

   COMPONENT Clock
   PORT( load_hour_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          load_min_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          load_min_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sec_ten	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sec_one	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          min_ten	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          min_one	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          hour_one	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          sync	:	IN	STD_LOGIC; 
          reset_n	:	IN	STD_LOGIC; 
          clk_1s	:	IN	STD_LOGIC; 
          load_hour_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          hour_ten	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL load_hour_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL load_min_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL load_min_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sec_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sec_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL min_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL min_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL hour_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL sync	:	STD_LOGIC;
   SIGNAL reset_n	:	STD_LOGIC;
   SIGNAL clk_1s	:	STD_LOGIC;
   SIGNAL load_hour_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL hour_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	constant clk_period : time := 30.517578125us;
	constant clk_period_1s : time := 1000ms;

BEGIN

   UUT: Clock PORT MAP(
		load_hour_ten => load_hour_ten, 
		load_min_ten => load_min_ten, 
		load_min_one => load_min_one, 
		sec_ten => sec_ten, 
		sec_one => sec_one, 
		min_ten => min_ten, 
		min_one => min_one, 
		hour_one => hour_one, 
		clk => clk, 
		sync => sync, 
		reset_n => reset_n, 
		clk_1s => clk_1s, 
		load_hour_one => load_hour_one, 
		hour_ten => hour_ten
   );

-- *** Test Bench - User Defined Section ***
	
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	clk_process_1s :process
   begin
		clk_1s <= '0';
		wait for clk_period_1s-clk_period/2;
		clk_1s <= '1';
		wait for clk_period/2;
   end process;
	
   tb : PROCESS
   BEGIN
		load_hour_ten <= "0001";
		load_hour_one <= "0001";
		load_min_ten <= "0001";
		load_min_one <= "0001";
		reset_n <= '0';
		sync <= '0';
		wait for clk_period/2;
		reset_n <= '1';
		wait for clk_period/2;
		sync <= '1';
		wait for clk_period;
		sync <= '0';
      
		WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
