----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:36 04/07/2014 
-- Design Name: 
-- Module Name:    counter_5 - Behavioral 
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

entity counter is
    Generic ( count_max_value : STD_LOGIC_VECTOR (3 downto 0) := "0000");
    Port ( clk : in  STD_LOGIC;
           sync : in  STD_LOGIC;
			  reset_n : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           co : out  STD_LOGIC;
			  load : in  STD_LOGIC_VECTOR (3 downto 0);
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is

signal count_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');--Internes Signal

begin

process(clk)
begin
	if falling_edge(clk)then
		if reset_n ='0' then
			count_reg <= "0000";
		elsif sync = '1' then
			count_reg <= load;
		elsif (ci='1' and ce='1') then
			if count_reg = count_max_value then
				count_reg <= "0000";
			else
				count_reg <= count_reg + 1;
			end if;	
		end if;
	end if;
end process;

count <= count_reg;
co <= (ci and (count_max_value(0) xnor count_reg(0)) and (count_max_value(1) xnor count_reg(1)) and (count_max_value(2) xnor count_reg(2)) and (count_max_value(3) xnor count_reg(3)));

end Behavioral;

