--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Clock.vhf
-- /___/   /\     Timestamp : 06/05/2015 17:53:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Users/Fabian/Desktop/DCF_77/Clock.vhf -w C:/Users/Fabian/Desktop/DCF_77/Clock.sch
--Design Name: Clock
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Clock is
   port ( clk           : in    std_logic; 
          clk_1s        : in    std_logic; 
          load_hour_one : in    std_logic_vector (3 downto 0); 
          load_hour_ten : in    std_logic_vector (3 downto 0); 
          load_min_one  : in    std_logic_vector (3 downto 0); 
          load_min_ten  : in    std_logic_vector (3 downto 0); 
          reset_n       : in    std_logic; 
          sync          : in    std_logic; 
          hour_one      : out   std_logic_vector (3 downto 0); 
          hour_ten      : out   std_logic_vector (3 downto 0); 
          min_one       : out   std_logic_vector (3 downto 0); 
          min_ten       : out   std_logic_vector (3 downto 0); 
          sec_one       : out   std_logic_vector (3 downto 0); 
          sec_ten       : out   std_logic_vector (3 downto 0));
end Clock;

architecture BEHAVIORAL of Clock is
   attribute BOX_TYPE        : string ;
   signal XLXN_344       : std_logic;
   signal XLXN_361       : std_logic;
   signal XLXN_362       : std_logic;
   signal XLXN_365       : std_logic;
   signal XLXN_366       : std_logic;
   signal XLXN_444       : std_logic;
   signal XLXN_445       : std_logic_vector (3 downto 0);
   signal XLXN_448       : std_logic_vector (3 downto 0);
   signal hour_ten_DUMMY : std_logic_vector (3 downto 0);
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component Counter_3_9
      port ( clk       : in    std_logic; 
             sync      : in    std_logic; 
             reset_n   : in    std_logic; 
             ci        : in    std_logic; 
             ce        : in    std_logic; 
             load      : in    std_logic_vector (3 downto 0); 
             ten_count : in    std_logic_vector (3 downto 0); 
             co        : out   std_logic; 
             count     : out   std_logic_vector (3 downto 0));
   end component;
   
   component counter
      generic( count_max_value : STD_LOGIC_VECTOR :=  "");
      port ( clk     : in    std_logic; 
             sync    : in    std_logic; 
             reset_n : in    std_logic; 
             ci      : in    std_logic; 
             ce      : in    std_logic; 
             load    : in    std_logic_vector (3 downto 0); 
             co      : out   std_logic; 
             count   : out   std_logic_vector (3 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   hour_ten(3 downto 0) <= hour_ten_DUMMY(3 downto 0);
   XLXI_152 : VCC
      port map (P=>XLXN_444);
   
   XLXI_162 : Counter_3_9
      port map (ce=>clk_1s,
                ci=>XLXN_365,
                clk=>clk,
                load(3 downto 0)=>load_hour_one(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                ten_count(3 downto 0)=>hour_ten_DUMMY(3 downto 0),
                co=>XLXN_366,
                count(3 downto 0)=>hour_one(3 downto 0));
   
   XLXI_165 : counter
   generic map( count_max_value => b"0101")
      port map (ce=>clk_1s,
                ci=>XLXN_344,
                clk=>clk,
                load(3 downto 0)=>XLXN_445(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                co=>XLXN_361,
                count(3 downto 0)=>sec_ten(3 downto 0));
   
   XLXI_166 : counter
   generic map( count_max_value => b"1001")
      port map (ce=>clk_1s,
                ci=>XLXN_444,
                clk=>clk,
                load(3 downto 0)=>XLXN_448(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                co=>XLXN_344,
                count(3 downto 0)=>sec_one(3 downto 0));
   
   XLXI_168 : counter
   generic map( count_max_value => b"0101")
      port map (ce=>clk_1s,
                ci=>XLXN_362,
                clk=>clk,
                load(3 downto 0)=>load_min_ten(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                co=>XLXN_365,
                count(3 downto 0)=>min_ten(3 downto 0));
   
   XLXI_169 : counter
   generic map( count_max_value => b"1001")
      port map (ce=>clk_1s,
                ci=>XLXN_361,
                clk=>clk,
                load(3 downto 0)=>load_min_one(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                co=>XLXN_362,
                count(3 downto 0)=>min_one(3 downto 0));
   
   XLXI_170 : counter
   generic map( count_max_value => b"0010")
      port map (ce=>clk_1s,
                ci=>XLXN_366,
                clk=>clk,
                load(3 downto 0)=>load_hour_ten(3 downto 0),
                reset_n=>reset_n,
                sync=>sync,
                co=>open,
                count(3 downto 0)=>hour_ten_DUMMY(3 downto 0));
   
   XLXI_171_0 : GND
      port map (G=>XLXN_445(0));
   
   XLXI_171_1 : GND
      port map (G=>XLXN_445(1));
   
   XLXI_171_2 : GND
      port map (G=>XLXN_445(2));
   
   XLXI_171_3 : GND
      port map (G=>XLXN_445(3));
   
   XLXI_172_0 : GND
      port map (G=>XLXN_448(0));
   
   XLXI_172_1 : GND
      port map (G=>XLXN_448(1));
   
   XLXI_172_2 : GND
      port map (G=>XLXN_448(2));
   
   XLXI_172_3 : GND
      port map (G=>XLXN_448(3));
   
end BEHAVIORAL;


