----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:30 04/21/2015 
-- Design Name: 
-- Module Name:    DCF_77_Decoder - Behavioral 
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

entity DCF_77_Decoder is
	 Generic ( 	fa : integer := 128; 
					one_max : integer := 230; 
					one_min : integer := 170; 
					zero_max : integer := 130; 
					zero_min : integer := 80; 
					nothing_trigger : integer := 40;
					zero_time_to_sync: integer := 1300);
    Port ( clk : in STD_LOGIC;
			  reset_n : in STD_LOGIC;
			  dcf_in : in  STD_LOGIC;
           sync : out  STD_LOGIC;
			  min_one : out  STD_LOGIC_VECTOR (3 downto 0);
			  min_ten : out  STD_LOGIC_VECTOR (3 downto 0);
			  hour_one : out  STD_LOGIC_VECTOR (3 downto 0);
			  hour_ten : out  STD_LOGIC_VECTOR (3 downto 0);
			  day_one : out  STD_LOGIC_VECTOR (3 downto 0);
			  day_ten : out  STD_LOGIC_VECTOR (3 downto 0);
			  month_one : out  STD_LOGIC_VECTOR (3 downto 0);
			  month_ten : out  STD_LOGIC_VECTOR (3 downto 0);
			  year_one : out  STD_LOGIC_VECTOR (3 downto 0);
			  year_ten : out  STD_LOGIC_VECTOR (3 downto 0));

end DCF_77_Decoder;

architecture Behavioral of DCF_77_Decoder is

constant one_max_value : integer := ((one_max*fa)/1000);
constant one_min_value : integer := ((one_min*fa)/1000);
constant zero_max_value : integer := ((zero_max*fa)/1000);
constant zero_min_value : integer := ((zero_min*fa)/1000);
constant nothing_trigger_value : integer := ((nothing_trigger*fa)/1000);
constant zero_time_to_sync_value : integer := ((zero_time_to_sync*fa)/1000);

signal data, data_next : STD_LOGIC_VECTOR (58 downto 0) := (others => '0');
signal mean : integer range 0 to one_max_value := 0;
signal sync_reg, sync_next : STD_LOGIC := '0';
signal max_holder,max_holder_next : integer range 0 to one_max_value := 0;
signal zero_time,zero_time_next : integer range 0 to zero_time_to_sync_value := 0;
signal day_one_next, month_one_next,year_one_next, year_ten_next : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal day_one_reg, month_one_reg, year_one_reg, year_ten_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal day_ten_reg, day_ten_next : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
signal month_ten_reg, month_ten_next : STD_LOGIC := '0';

begin

--ToDo Parity und umschreiben auf outputs ev bei sync

process(clk)

begin
	if rising_edge(clk) then
		if reset_n = '0' then 
			mean <= 0;
			sync_reg <= '0';
			max_holder <= 0;
			zero_time <= 0;
			data <= (others => '-');
			day_one_reg <= (others => '0');
			day_ten_reg <= (others => '0');
			month_one_reg <= (others => '0');
			month_ten_reg <= '0';
			year_one_reg <= (others => '0');
			year_ten_reg <= (others => '0');
		else
			--Mittelwert bilden
			if ((mean < one_max_value) and (dcf_in = '1')) then
				mean <= mean + 1;
			end if;
			if ((mean > 0) and (dcf_in = '0')) then
				mean <= mean - 1;
			end if;
			sync_reg <= sync_next;
			max_holder <= max_holder_next;
			zero_time <= zero_time_next;
			data <= data_next;
			day_one_reg <= day_one_next;
			day_ten_reg <= day_ten_next;
			month_one_reg <= month_one_next;
			month_ten_reg <= month_ten_next;
			year_one_reg <= year_one_next;
			year_ten_reg <= year_ten_next;
		end if;
	end if;
end process;

process(mean,max_holder,zero_time,data,sync_reg,day_one_reg,day_ten_reg,month_one_reg,month_ten_reg,year_one_reg,year_ten_reg)
begin	
		max_holder_next <= max_holder;
		zero_time_next <= zero_time;
		sync_next <= '0';
		data_next <= data;
		day_one_next <=  day_one_reg;
		day_ten_next <= day_ten_reg; 
		month_one_next <= month_one_reg; 
		month_ten_next <= month_ten_reg; 
		year_one_next <= year_one_reg; 
		year_ten_next <= year_ten_reg;
		
		--Maximalwert übernehmen
		if mean > zero_min_value then 
			if mean > max_holder then 
				max_holder_next <= mean;
			end if;
		end if;
		
		--Daten lesen, Nullzeit zählen, max_holder zurücksetzen
		if mean < nothing_trigger_value then
			if zero_time < zero_time_to_sync_value then 
				zero_time_next <= zero_time + 1;
			end if;
			if ((max_holder >= one_min_value) and (max_holder <= one_max_value)) then
				data_next <= data(57 downto 0) & '1';
			end if;
			if ((max_holder >= zero_min_value) and (max_holder <= zero_max_value)) then
				data_next <= data(57 downto 0) & '0';
			end if;
			max_holder_next <= 0;
		end if;
		
		--sync ausgeben
		if mean >= zero_min_value then
			if zero_time >= zero_time_to_sync_value then
				if (data(58)='0' and data(58-20)='1') then --Fixed Bits
					if ((data(58-21) xor data(58-22) xor data(58-23) xor data(58-24) xor data(58-25) xor data(58-26) xor data(58-27)) = data(58-28)) then --Min Parity
						if ((data(58-29) xor data(58-30) xor data(58-31) xor data(58-32) xor data(58-33) xor data(58-34)) = data(58-35)) then --Hour Parity
							if ((data(58-36) xor data(58-37) xor data(58-38) xor data(58-39) xor data(58-40) xor data(58-41) xor data(58-42) xor data(58-43) xor data(58-44) xor data(58-45) xor data(58-46) xor data(58-47) xor data(58-48) xor data(58-49) xor data(58-50) xor data(58-51) xor data(58-52) xor data(58-53) xor data(58-54) xor data(58-55) xor data(58-56) xor data(58-57)) = data(58-58)) then --Date Parity
								sync_next <= '1';

								day_one_next <= (data(58-39) & data(58-38) & data(58-37) & data(58-36));
								day_ten_next <= (data(58-41) & data(58-40));

								month_one_next <= (data(58-48) & data(58-47) & data(58-46) & data(58-45));
								month_ten_next <= (data(58-49));

								year_one_next <= (data(58-53) & data(58-52) & data(58-51) & data(58-50));
								year_ten_next <= (data(58-57) & data(58-56) & data(58-55) & data(58-54));
							end if;
						end if; 
					end if; 
				end if;
			end if;
			zero_time_next <= 0;
		end if;
end process;

sync <= sync_reg;

min_one <= (data(58-24) & data(58-23) & data(58-22) & data(58-21));
min_ten <= ("0" & data(58-27)  & data(58-26) & data(58-25));
hour_one <= (data(58-32) & data(58-31) & data(58-30) & data(58-29));
hour_ten <= ("00" & data(58-34) & data(58-33));
day_one  <= day_one_reg;
day_ten <= "00" & day_ten_reg; 
month_one <= month_one_reg; 
month_ten <= "000" & month_ten_reg; 
year_one <= year_one_reg; 
year_ten <= year_ten_reg;



end Behavioral;