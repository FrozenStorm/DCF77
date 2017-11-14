--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : display_module.vhf
-- /___/   /\     Timestamp : 06/05/2015 17:53:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl C:/Users/Fabian/Desktop/DCF_77/display_module.vhf -w C:/Users/Fabian/Desktop/DCF_77/display_module.sch
--Design Name: display_module
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

entity display_module is
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
end display_module;

architecture BEHAVIORAL of display_module is
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


