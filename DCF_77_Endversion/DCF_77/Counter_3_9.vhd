----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:05 05/09/2015 
-- Design Name: 
-- Module Name:    Counter_3_9 - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_3_9 is
    Port ( clk : in  STD_LOGIC;
           sync : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           load : in  STD_LOGIC_VECTOR (3 downto 0);
           ten_count : in  STD_LOGIC_VECTOR (3 downto 0);
           count : out  STD_LOGIC_VECTOR (3 downto 0);
           co : out  STD_LOGIC);
end Counter_3_9;

architecture Behavioral of Counter_3_9 is

signal count_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0'); --Internes Signal

begin

process(clk)
begin
	if falling_edge(clk) then
		if reset_n ='0' then
			count_reg <= "0000";
		elsif sync = '1' then
			count_reg <= load;
		elsif ci='1' and ce='1' then
			if ten_count = "0010" then
				if count_reg = "0011" then
					count_reg <= "0000";
				else
					count_reg <= count_reg + 1;
				end if;		
			elsif ten_count = "0001" then
				if count_reg = "1001" then
					count_reg <= "0000";
				else
					count_reg <= count_reg + 1;
				end if;
			end if;
		end if;
	end if;
end process;


count <= count_reg;

co <= (ci and ten_count(1) and count_reg(0) and count_reg(1) and (not count_reg(2)) and (not count_reg(3))) or
		(ci and ten_count(0) and count_reg(0) and (not count_reg(1)) and (not count_reg(2)) and count_reg(3));

end Behavioral;

