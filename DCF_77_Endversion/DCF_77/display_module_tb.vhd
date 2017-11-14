-- Vhdl test bench created from schematic C:\Users\Fabian\Desktop\DCF_77\display_module.sch - Sun May 10 14:16:51 2015
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
ENTITY display_module_display_module_sch_tb IS
END display_module_display_module_sch_tb;
ARCHITECTURE behavioral OF display_module_display_module_sch_tb IS 

   COMPONENT display_module
   PORT( Clk	:	IN	STD_LOGIC; 
          Seq3	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Seq5	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Seq4	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Seq2	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Seq1	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Seq0	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          Sel	:	IN	STD_LOGIC; 
          day_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sec_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          month_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          hour_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          year_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          min_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          month_ten	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          min_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          hour_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          year_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sec_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          day_one	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Seq3	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Seq5	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Seq4	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Seq2	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Seq1	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Seq0	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL Sel	:	STD_LOGIC;
   SIGNAL day_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sec_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL month_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL hour_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL year_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL min_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL month_ten	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL min_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL hour_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL year_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sec_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL day_one	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	constant clk_period : time := 15.625 ms;

BEGIN

   UUT: display_module PORT MAP(
		Clk => Clk, 
		Seq3 => Seq3, 
		Seq5 => Seq5, 
		Seq4 => Seq4, 
		Seq2 => Seq2, 
		Seq1 => Seq1, 
		Seq0 => Seq0, 
		Sel => Sel, 
		day_ten => day_ten, 
		sec_ten => sec_ten, 
		month_one => month_one, 
		hour_ten => hour_ten, 
		year_ten => year_ten, 
		min_ten => min_ten, 
		month_ten => month_ten, 
		min_one => min_one, 
		hour_one => hour_one, 
		year_one => year_one, 
		sec_one => sec_one, 
		day_one => day_one
   );
	
	
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		sec_one <= "1111";
		sec_ten <= "1111";
		
		min_one <= "1111";
		min_ten <= "1111";
		
		hour_one <= "1111";
		hour_ten <= "1111";
		
		day_one <= "0111";
		day_ten <= "0111";
		
		month_one <= "0111";
		month_ten <= "0111";
		
		year_one <= "0111";
		year_ten <= "0111";
		
		sel<='0';
		
		wait for 5*clk_period;
		
		sel<='1';
		
		wait for 5*clk_period;
		
		
		
	
	
	
	
	
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
