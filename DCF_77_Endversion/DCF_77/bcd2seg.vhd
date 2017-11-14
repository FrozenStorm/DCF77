----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:27 04/07/2014 
-- Design Name: 
-- Module Name:    bcd2seg - Behavioral 
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

entity bcd2seg is
    Port ( Bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           Seg : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd2seg;

architecture Behavioral of bcd2seg is
begin
	process(Bcd)
		begin
		case Bcd is
			when "0000" => Seg <= "1000000"; --0
			when "0001" => Seg <= "1111001"; --1
			when "0010" => Seg <= "0100100"; --2
			when "0011" => Seg <= "0110000"; --3
			when "0100" => Seg <= "0011001"; --4
			when "0101" => Seg <= "0010010"; --5
			when "0110" => Seg <= "0000010"; --6
			when "0111" => Seg <= "1111000"; --7
			when "1000" => Seg <= "0000000"; --8
			when "1001" => Seg <= "0010000"; --9
			when others => Seg <= (others => '-');
		end case;
	end process;	
end Behavioral;
