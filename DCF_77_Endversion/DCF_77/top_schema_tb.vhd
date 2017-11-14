-- Vhdl test bench created from schematic U:\Desktop\DCF_77\Top_Schema.sch - Thu Jun 04 14:22:55 2015
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
ENTITY Top_Schema_Top_Schema_sch_tb IS
END Top_Schema_Top_Schema_sch_tb;
ARCHITECTURE behavioral OF Top_Schema_Top_Schema_sch_tb IS 

   COMPONENT Top_Schema
   PORT( clk	:	IN	STD_LOGIC; 
          DS2	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          DS1	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          DS3	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          time_date_select	:	IN	STD_LOGIC; 
          DS4	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          DS5	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          DS6	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          cln1	:	OUT	STD_LOGIC; 
          cln2	:	OUT	STD_LOGIC; 
          DS1_dp	:	OUT	STD_LOGIC; 
          DS2_dp	:	OUT	STD_LOGIC; 
          DS3_dp	:	OUT	STD_LOGIC; 
          DS4_dp	:	OUT	STD_LOGIC; 
          com	:	OUT	STD_LOGIC; 
          DS5_dp	:	OUT	STD_LOGIC; 
          reset_n	:	IN	STD_LOGIC; 
          dcf_77	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL DS2	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL DS1	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL DS3	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL time_date_select	:	STD_LOGIC;
   SIGNAL DS4	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL DS5	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL DS6	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL cln1	:	STD_LOGIC;
   SIGNAL cln2	:	STD_LOGIC;
   SIGNAL DS1_dp	:	STD_LOGIC;
   SIGNAL DS2_dp	:	STD_LOGIC;
   SIGNAL DS3_dp	:	STD_LOGIC;
   SIGNAL DS4_dp	:	STD_LOGIC;
   SIGNAL com	:	STD_LOGIC;
   SIGNAL DS5_dp	:	STD_LOGIC;
   SIGNAL reset_n	:	STD_LOGIC;
   SIGNAL dcf_77	:	STD_LOGIC;
	
	constant clk_period : time := 30.517578125 us;
	
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

   UUT: Top_Schema PORT MAP(
		clk => clk, 
		DS2 => DS2, 
		DS1 => DS1, 
		DS3 => DS3, 
		time_date_select => time_date_select, 
		DS4 => DS4, 
		DS5 => DS5, 
		DS6 => DS6, 
		cln1 => cln1, 
		cln2 => cln2, 
		DS1_dp => DS1_dp, 
		DS2_dp => DS2_dp, 
		DS3_dp => DS3_dp, 
		DS4_dp => DS4_dp, 
		com => com, 
		DS5_dp => DS5_dp, 
		reset_n => reset_n, 
		dcf_77 => dcf_77
   );

-- Clock process definitions
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
		wait for clk_period*4;
		reset_n <= '0';
		wait for clk_period*4;
		reset_n <= '1';
		wait for clk_period*4;
		time_date_select <= '1'; --Zeit
      wait for 1000 ms;	
      dcfbits <= "00101100010100100100100001001011010110010111000100101010001"; --  Mittwoch,29.04.15 16:10 
      DCF77Send(dcfbits, dcf_77);     
		DCF77Send(dcfbits, dcf_77);  
		DCF77Send(dcfbits, dcf_77);  
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
