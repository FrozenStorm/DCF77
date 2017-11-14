----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:43 05/07/2015 
-- Design Name: 
-- Module Name:    lcd_exnor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd_exnor is
    Port ( inp1 : in  STD_LOGIC_VECTOR (6 downto 0);
           out1 : out  STD_LOGIC_VECTOR (6 downto 0);
           clk : in  STD_LOGIC);
end lcd_exnor;

architecture Behavioral of lcd_exnor is
begin
	gen: for i in 0 to 6 generate
		 out1(i) <= inp1(i) xnor clk;
	end generate gen;
end Behavioral;

