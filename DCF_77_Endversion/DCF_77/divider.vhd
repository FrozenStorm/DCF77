----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:45 05/01/2014 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
    Port ( clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  clk_display : out  STD_LOGIC;
			  clk_second : out STD_LOGIC;
			  clk_sampling : out  STD_LOGIC);
end divider;

architecture Behavioral of divider is
signal clkCnt : std_logic_vector (14 DOWNTO 0) := (others => '0');
begin

process(clk)
begin
	if rising_edge(clk) then
		if reset_n = '0' then
			clkCnt <= (others => '-');
		else
			clkCnt <= clkCnt + 1 ;
		end if;
	end if;
end process;
clk_display <= clkCnt(9);
clk_second <= '1' when clkCnt = 0 else '0';
clk_sampling <= clkCnt(7);

end Behavioral;

