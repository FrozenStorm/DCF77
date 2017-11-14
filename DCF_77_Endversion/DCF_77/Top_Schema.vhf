--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_Schema.vhf
-- /___/   /\     Timestamp : 06/05/2015 17:53:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Users/Fabian/Desktop/DCF_77/Top_Schema.vhf -w C:/Users/Fabian/Desktop/DCF_77/Top_Schema.sch
--Design Name: Top_Schema
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

entity display_module_MUSER_Top_Schema is
   port ( Clk       : in    std_logic; 
          day_one   : in    std_logic_vector (3 downto 0); 
          day_ten   : in    std_logic_vector (3 downto 0); 
          hour_one  : in    std_logic_vector (3 downto 0); 
          hour_ten  : in    std_logic_vector (3 downto 0); 
          min_one   : in    std_logic_vector (3 downto 0); 
          min_ten   : in    std_logic_vector (3 downto 0); 
          month_one : in    std_logic_vector (3 downto 0); 
          month_ten : in    std_logic_vector (3 downto 0); 
          sec_one   : in    std_logic_vector (3 downto 0); 
          sec_ten   : in    std_logic_vector (3 downto 0); 
          Sel       : in    std_logic; 
          year_one  : in    std_logic_vector (3 downto 0); 
          year_ten  : in    std_logic_vector (3 downto 0); 
          cln1      : out   std_logic; 
          cln2      : out   std_logic; 
          DS1_dp    : out   std_logic; 
          DS2_dp    : out   std_logic; 
          DS3_dp    : out   std_logic; 
          DS4_dp    : out   std_logic; 
          DS5_dp    : out   std_logic; 
          phase_n   : out   std_logic; 
          Seq0      : out   std_logic_vector (6 downto 0); 
          Seq1      : out   std_logic_vector (6 downto 0); 
          Seq2      : out   std_logic_vector (6 downto 0); 
          Seq3      : out   std_logic_vector (6 downto 0); 
          Seq4      : out   std_logic_vector (6 downto 0); 
          Seq5      : out   std_logic_vector (6 downto 0));
end display_module_MUSER_Top_Schema;

architecture BEHAVIORAL of display_module_MUSER_Top_Schema is
   attribute BOX_TYPE   : string ;
   signal XLXN_44   : std_logic_vector (6 downto 0);
   signal XLXN_45   : std_logic_vector (6 downto 0);
   signal XLXN_46   : std_logic_vector (6 downto 0);
   signal XLXN_48   : std_logic_vector (6 downto 0);
   signal XLXN_50   : std_logic_vector (6 downto 0);
   signal XLXN_51   : std_logic_vector (6 downto 0);
   signal XLXN_85   : std_logic_vector (3 downto 0);
   signal XLXN_86   : std_logic_vector (3 downto 0);
   signal XLXN_87   : std_logic_vector (3 downto 0);
   signal XLXN_90   : std_logic_vector (3 downto 0);
   signal XLXN_93   : std_logic_vector (3 downto 0);
   signal XLXN_94   : std_logic_vector (3 downto 0);
   signal XLXN_117  : std_logic;
   signal XLXN_126  : std_logic;
   signal XLXN_134  : std_logic;
   component multiplexer
      port ( sel  : in    std_logic; 
             in1  : in    std_logic_vector (3 downto 0); 
             in2  : in    std_logic_vector (3 downto 0); 
             out1 : out   std_logic_vector (3 downto 0));
   end component;
   
   component bcd2seg
      port ( Bcd : in    std_logic_vector (3 downto 0); 
             Seg : out   std_logic_vector (6 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component lcd_exnor
      port ( clk  : in    std_logic; 
             inp1 : in    std_logic_vector (6 downto 0); 
             out1 : out   std_logic_vector (6 downto 0));
   end component;
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : multiplexer
      port map (in1(3 downto 0)=>hour_ten(3 downto 0),
                in2(3 downto 0)=>day_ten(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_85(3 downto 0));
   
   XLXI_2 : multiplexer
      port map (in1(3 downto 0)=>hour_one(3 downto 0),
                in2(3 downto 0)=>day_one(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_86(3 downto 0));
   
   XLXI_3 : multiplexer
      port map (in1(3 downto 0)=>min_ten(3 downto 0),
                in2(3 downto 0)=>month_ten(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_87(3 downto 0));
   
   XLXI_4 : multiplexer
      port map (in1(3 downto 0)=>min_one(3 downto 0),
                in2(3 downto 0)=>month_one(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_90(3 downto 0));
   
   XLXI_5 : multiplexer
      port map (in1(3 downto 0)=>sec_ten(3 downto 0),
                in2(3 downto 0)=>year_ten(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_94(3 downto 0));
   
   XLXI_6 : multiplexer
      port map (in1(3 downto 0)=>sec_one(3 downto 0),
                in2(3 downto 0)=>year_one(3 downto 0),
                sel=>Sel,
                out1(3 downto 0)=>XLXN_93(3 downto 0));
   
   XLXI_7 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_85(3 downto 0),
                Seg(6 downto 0)=>XLXN_44(6 downto 0));
   
   XLXI_8 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_86(3 downto 0),
                Seg(6 downto 0)=>XLXN_45(6 downto 0));
   
   XLXI_9 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_87(3 downto 0),
                Seg(6 downto 0)=>XLXN_46(6 downto 0));
   
   XLXI_10 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_90(3 downto 0),
                Seg(6 downto 0)=>XLXN_48(6 downto 0));
   
   XLXI_11 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_94(3 downto 0),
                Seg(6 downto 0)=>XLXN_50(6 downto 0));
   
   XLXI_12 : bcd2seg
      port map (Bcd(3 downto 0)=>XLXN_93(3 downto 0),
                Seg(6 downto 0)=>XLXN_51(6 downto 0));
   
   XLXI_60 : BUF
      port map (I=>XLXN_117,
                O=>cln1);
   
   XLXI_63 : BUF
      port map (I=>XLXN_117,
                O=>cln2);
   
   XLXI_65 : BUF
      port map (I=>XLXN_126,
                O=>DS4_dp);
   
   XLXI_68 : BUF
      port map (I=>XLXN_126,
                O=>DS2_dp);
   
   XLXI_69 : BUF
      port map (I=>Clk,
                O=>DS3_dp);
   
   XLXI_70 : BUF
      port map (I=>Clk,
                O=>DS1_dp);
   
   XLXI_74 : BUF
      port map (I=>Clk,
                O=>DS5_dp);
   
   XLXI_75 : BUF
      port map (I=>Clk,
                O=>phase_n);
   
   XLXI_77 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_44(6 downto 0),
                out1(6 downto 0)=>Seq5(6 downto 0));
   
   XLXI_78 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_45(6 downto 0),
                out1(6 downto 0)=>Seq4(6 downto 0));
   
   XLXI_79 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_46(6 downto 0),
                out1(6 downto 0)=>Seq3(6 downto 0));
   
   XLXI_80 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_48(6 downto 0),
                out1(6 downto 0)=>Seq2(6 downto 0));
   
   XLXI_81 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_50(6 downto 0),
                out1(6 downto 0)=>Seq1(6 downto 0));
   
   XLXI_82 : lcd_exnor
      port map (clk=>Clk,
                inp1(6 downto 0)=>XLXN_51(6 downto 0),
                out1(6 downto 0)=>Seq0(6 downto 0));
   
   XLXI_92 : XNOR2
      port map (I0=>Sel,
                I1=>Clk,
                O=>XLXN_126);
   
   XLXI_98 : XNOR2
      port map (I0=>XLXN_134,
                I1=>Clk,
                O=>XLXN_117);
   
   XLXI_101 : NAND2
      port map (I0=>sec_one(0),
                I1=>Sel,
                O=>XLXN_134);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Clock_MUSER_Top_Schema is
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
end Clock_MUSER_Top_Schema;

architecture BEHAVIORAL of Clock_MUSER_Top_Schema is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_Schema is
   port ( clk              : in    std_logic; 
          dcf_77           : in    std_logic; 
          reset_n          : in    std_logic; 
          time_date_select : in    std_logic; 
          cln1             : out   std_logic; 
          cln2             : out   std_logic; 
          com              : out   std_logic; 
          DS1              : out   std_logic_vector (6 downto 0); 
          DS1_dp           : out   std_logic; 
          DS2              : out   std_logic_vector (6 downto 0); 
          DS2_dp           : out   std_logic; 
          DS3              : out   std_logic_vector (6 downto 0); 
          DS3_dp           : out   std_logic; 
          DS4              : out   std_logic_vector (6 downto 0); 
          DS4_dp           : out   std_logic; 
          DS5              : out   std_logic_vector (6 downto 0); 
          DS5_dp           : out   std_logic; 
          DS6              : out   std_logic_vector (6 downto 0); 
          LED1             : out   std_logic);
end Top_Schema;

architecture BEHAVIORAL of Top_Schema is
   attribute BOX_TYPE   : string ;
   signal XLXN_75          : std_logic_vector (3 downto 0);
   signal XLXN_76          : std_logic_vector (3 downto 0);
   signal XLXN_77          : std_logic_vector (3 downto 0);
   signal XLXN_78          : std_logic_vector (3 downto 0);
   signal XLXN_83          : std_logic_vector (3 downto 0);
   signal XLXN_84          : std_logic_vector (3 downto 0);
   signal XLXN_85          : std_logic_vector (3 downto 0);
   signal XLXN_86          : std_logic_vector (3 downto 0);
   signal XLXN_87          : std_logic_vector (3 downto 0);
   signal XLXN_88          : std_logic_vector (3 downto 0);
   signal XLXN_89          : std_logic_vector (3 downto 0);
   signal XLXN_90          : std_logic_vector (3 downto 0);
   signal XLXN_91          : std_logic_vector (3 downto 0);
   signal XLXN_163         : std_logic;
   signal XLXN_176         : std_logic_vector (3 downto 0);
   signal XLXN_217         : std_logic_vector (3 downto 0);
   signal XLXN_218         : std_logic_vector (3 downto 0);
   signal XLXN_235         : std_logic;
   signal XLXN_237         : std_logic;
   signal XLXN_238         : std_logic;
   component Clock_MUSER_Top_Schema
      port ( load_hour_ten : in    std_logic_vector (3 downto 0); 
             load_min_ten  : in    std_logic_vector (3 downto 0); 
             load_min_one  : in    std_logic_vector (3 downto 0); 
             clk           : in    std_logic; 
             sync          : in    std_logic; 
             reset_n       : in    std_logic; 
             clk_1s        : in    std_logic; 
             load_hour_one : in    std_logic_vector (3 downto 0); 
             sec_ten       : out   std_logic_vector (3 downto 0); 
             sec_one       : out   std_logic_vector (3 downto 0); 
             min_ten       : out   std_logic_vector (3 downto 0); 
             min_one       : out   std_logic_vector (3 downto 0); 
             hour_one      : out   std_logic_vector (3 downto 0); 
             hour_ten      : out   std_logic_vector (3 downto 0));
   end component;
   
   component display_module_MUSER_Top_Schema
      port ( Sel       : in    std_logic; 
             year_ten  : in    std_logic_vector (3 downto 0); 
             sec_ten   : in    std_logic_vector (3 downto 0); 
             month_one : in    std_logic_vector (3 downto 0); 
             hour_ten  : in    std_logic_vector (3 downto 0); 
             day_ten   : in    std_logic_vector (3 downto 0); 
             min_ten   : in    std_logic_vector (3 downto 0); 
             month_ten : in    std_logic_vector (3 downto 0); 
             min_one   : in    std_logic_vector (3 downto 0); 
             hour_one  : in    std_logic_vector (3 downto 0); 
             day_one   : in    std_logic_vector (3 downto 0); 
             sec_one   : in    std_logic_vector (3 downto 0); 
             year_one  : in    std_logic_vector (3 downto 0); 
             Clk       : in    std_logic; 
             Seq3      : out   std_logic_vector (6 downto 0); 
             Seq5      : out   std_logic_vector (6 downto 0); 
             Seq4      : out   std_logic_vector (6 downto 0); 
             Seq2      : out   std_logic_vector (6 downto 0); 
             Seq1      : out   std_logic_vector (6 downto 0); 
             Seq0      : out   std_logic_vector (6 downto 0); 
             DS4_dp    : out   std_logic; 
             DS2_dp    : out   std_logic; 
             DS3_dp    : out   std_logic; 
             DS1_dp    : out   std_logic; 
             phase_n   : out   std_logic; 
             DS5_dp    : out   std_logic; 
             cln2      : out   std_logic; 
             cln1      : out   std_logic);
   end component;
   
   component divider
      port ( clk          : in    std_logic; 
             reset_n      : in    std_logic; 
             clk_display  : out   std_logic; 
             clk_second   : out   std_logic; 
             clk_sampling : out   std_logic);
   end component;
   
   component DCF_77_Decoder
      port ( clk       : in    std_logic; 
             reset_n   : in    std_logic; 
             dcf_in    : in    std_logic; 
             sync      : out   std_logic; 
             min_one   : out   std_logic_vector (3 downto 0); 
             min_ten   : out   std_logic_vector (3 downto 0); 
             hour_one  : out   std_logic_vector (3 downto 0); 
             hour_ten  : out   std_logic_vector (3 downto 0); 
             day_one   : out   std_logic_vector (3 downto 0); 
             day_ten   : out   std_logic_vector (3 downto 0); 
             month_one : out   std_logic_vector (3 downto 0); 
             month_ten : out   std_logic_vector (3 downto 0); 
             year_one  : out   std_logic_vector (3 downto 0); 
             year_ten  : out   std_logic_vector (3 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_11 : Clock_MUSER_Top_Schema
      port map (clk=>clk,
                clk_1s=>XLXN_237,
                load_hour_one(3 downto 0)=>XLXN_77(3 downto 0),
                load_hour_ten(3 downto 0)=>XLXN_78(3 downto 0),
                load_min_one(3 downto 0)=>XLXN_75(3 downto 0),
                load_min_ten(3 downto 0)=>XLXN_76(3 downto 0),
                reset_n=>reset_n,
                sync=>XLXN_163,
                hour_one(3 downto 0)=>XLXN_86(3 downto 0),
                hour_ten(3 downto 0)=>XLXN_87(3 downto 0),
                min_one(3 downto 0)=>XLXN_84(3 downto 0),
                min_ten(3 downto 0)=>XLXN_85(3 downto 0),
                sec_one(3 downto 0)=>XLXN_176(3 downto 0),
                sec_ten(3 downto 0)=>XLXN_83(3 downto 0));
   
   XLXI_73 : display_module_MUSER_Top_Schema
      port map (Clk=>XLXN_235,
                day_one(3 downto 0)=>XLXN_88(3 downto 0),
                day_ten(3 downto 0)=>XLXN_89(3 downto 0),
                hour_one(3 downto 0)=>XLXN_86(3 downto 0),
                hour_ten(3 downto 0)=>XLXN_87(3 downto 0),
                min_one(3 downto 0)=>XLXN_84(3 downto 0),
                min_ten(3 downto 0)=>XLXN_85(3 downto 0),
                month_one(3 downto 0)=>XLXN_90(3 downto 0),
                month_ten(3 downto 0)=>XLXN_91(3 downto 0),
                sec_one(3 downto 0)=>XLXN_176(3 downto 0),
                sec_ten(3 downto 0)=>XLXN_83(3 downto 0),
                Sel=>time_date_select,
                year_one(3 downto 0)=>XLXN_217(3 downto 0),
                year_ten(3 downto 0)=>XLXN_218(3 downto 0),
                cln1=>cln1,
                cln2=>cln2,
                DS1_dp=>DS1_dp,
                DS2_dp=>DS2_dp,
                DS3_dp=>DS3_dp,
                DS4_dp=>DS4_dp,
                DS5_dp=>DS5_dp,
                phase_n=>com,
                Seq0(6 downto 0)=>DS6(6 downto 0),
                Seq1(6 downto 0)=>DS5(6 downto 0),
                Seq2(6 downto 0)=>DS4(6 downto 0),
                Seq3(6 downto 0)=>DS3(6 downto 0),
                Seq4(6 downto 0)=>DS2(6 downto 0),
                Seq5(6 downto 0)=>DS1(6 downto 0));
   
   XLXI_75 : divider
      port map (clk=>clk,
                reset_n=>reset_n,
                clk_display=>XLXN_235,
                clk_sampling=>XLXN_238,
                clk_second=>XLXN_237);
   
   XLXI_83 : DCF_77_Decoder
      port map (clk=>XLXN_238,
                dcf_in=>dcf_77,
                reset_n=>reset_n,
                day_one(3 downto 0)=>XLXN_88(3 downto 0),
                day_ten(3 downto 0)=>XLXN_89(3 downto 0),
                hour_one(3 downto 0)=>XLXN_77(3 downto 0),
                hour_ten(3 downto 0)=>XLXN_78(3 downto 0),
                min_one(3 downto 0)=>XLXN_75(3 downto 0),
                min_ten(3 downto 0)=>XLXN_76(3 downto 0),
                month_one(3 downto 0)=>XLXN_90(3 downto 0),
                month_ten(3 downto 0)=>XLXN_91(3 downto 0),
                sync=>XLXN_163,
                year_one(3 downto 0)=>XLXN_217(3 downto 0),
                year_ten(3 downto 0)=>XLXN_218(3 downto 0));
   
   XLXI_84 : BUF
      port map (I=>dcf_77,
                O=>LED1);
   
end BEHAVIORAL;


