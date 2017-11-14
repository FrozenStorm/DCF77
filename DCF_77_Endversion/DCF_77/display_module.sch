<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_44(6:0)" />
        <signal name="XLXN_45(6:0)" />
        <signal name="XLXN_48(6:0)" />
        <signal name="XLXN_50(6:0)" />
        <signal name="XLXN_51(6:0)" />
        <signal name="Seq3(6:0)" />
        <signal name="XLXN_85(3:0)" />
        <signal name="XLXN_86(3:0)" />
        <signal name="XLXN_87(3:0)" />
        <signal name="XLXN_90(3:0)" />
        <signal name="XLXN_93(3:0)" />
        <signal name="XLXN_94(3:0)" />
        <signal name="Seq5(6:0)" />
        <signal name="Seq4(6:0)" />
        <signal name="XLXN_46(6:0)" />
        <signal name="Seq2(6:0)" />
        <signal name="Seq1(6:0)" />
        <signal name="Seq0(6:0)" />
        <signal name="Sel" />
        <signal name="year_ten(3:0)" />
        <signal name="sec_ten(3:0)" />
        <signal name="month_one(3:0)" />
        <signal name="hour_ten(3:0)" />
        <signal name="day_ten(3:0)" />
        <signal name="min_ten(3:0)" />
        <signal name="month_ten(3:0)" />
        <signal name="min_one(3:0)" />
        <signal name="hour_one(3:0)" />
        <signal name="day_one(3:0)" />
        <signal name="sec_one(3:0)" />
        <signal name="year_one(3:0)" />
        <signal name="DS4_dp" />
        <signal name="DS2_dp" />
        <signal name="DS3_dp" />
        <signal name="DS1_dp" />
        <signal name="phase_n" />
        <signal name="DS5_dp" />
        <signal name="Clk" />
        <signal name="cln2" />
        <signal name="cln1" />
        <signal name="XLXN_117" />
        <signal name="sec_one(0)" />
        <signal name="XLXN_126" />
        <signal name="XLXN_134" />
        <signal name="XLXN_140" />
        <port polarity="Output" name="Seq3(6:0)" />
        <port polarity="Output" name="Seq5(6:0)" />
        <port polarity="Output" name="Seq4(6:0)" />
        <port polarity="Output" name="Seq2(6:0)" />
        <port polarity="Output" name="Seq1(6:0)" />
        <port polarity="Output" name="Seq0(6:0)" />
        <port polarity="Input" name="Sel" />
        <port polarity="Input" name="year_ten(3:0)" />
        <port polarity="Input" name="sec_ten(3:0)" />
        <port polarity="Input" name="month_one(3:0)" />
        <port polarity="Input" name="hour_ten(3:0)" />
        <port polarity="Input" name="day_ten(3:0)" />
        <port polarity="Input" name="min_ten(3:0)" />
        <port polarity="Input" name="month_ten(3:0)" />
        <port polarity="Input" name="min_one(3:0)" />
        <port polarity="Input" name="hour_one(3:0)" />
        <port polarity="Input" name="day_one(3:0)" />
        <port polarity="Input" name="sec_one(3:0)" />
        <port polarity="Input" name="year_one(3:0)" />
        <port polarity="Output" name="DS4_dp" />
        <port polarity="Output" name="DS2_dp" />
        <port polarity="Output" name="DS3_dp" />
        <port polarity="Output" name="DS1_dp" />
        <port polarity="Output" name="phase_n" />
        <port polarity="Output" name="DS5_dp" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="cln2" />
        <port polarity="Output" name="cln1" />
        <blockdef name="multiplexer">
            <timestamp>2015-5-9T9:43:21</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="bcd2seg">
            <timestamp>2015-5-9T9:43:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="lcd_exnor">
            <timestamp>2015-5-28T11:18:16</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="bcd2seg" name="XLXI_7">
            <blockpin signalname="XLXN_85(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_44(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="bcd2seg" name="XLXI_8">
            <blockpin signalname="XLXN_86(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_45(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="bcd2seg" name="XLXI_9">
            <blockpin signalname="XLXN_87(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_46(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="bcd2seg" name="XLXI_10">
            <blockpin signalname="XLXN_90(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_48(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="bcd2seg" name="XLXI_11">
            <blockpin signalname="XLXN_94(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_50(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="bcd2seg" name="XLXI_12">
            <blockpin signalname="XLXN_93(3:0)" name="Bcd(3:0)" />
            <blockpin signalname="XLXN_51(6:0)" name="Seg(6:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_3">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="min_ten(3:0)" name="in1(3:0)" />
            <blockpin signalname="month_ten(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_87(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_4">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="min_one(3:0)" name="in1(3:0)" />
            <blockpin signalname="month_one(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_90(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_5">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="sec_ten(3:0)" name="in1(3:0)" />
            <blockpin signalname="year_ten(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_94(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_6">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="sec_one(3:0)" name="in1(3:0)" />
            <blockpin signalname="year_one(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_93(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_2">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="hour_one(3:0)" name="in1(3:0)" />
            <blockpin signalname="day_one(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_86(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="multiplexer" name="XLXI_1">
            <blockpin signalname="Sel" name="sel" />
            <blockpin signalname="hour_ten(3:0)" name="in1(3:0)" />
            <blockpin signalname="day_ten(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_85(3:0)" name="out1(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_65">
            <blockpin signalname="XLXN_126" name="I" />
            <blockpin signalname="DS4_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_68">
            <blockpin signalname="XLXN_126" name="I" />
            <blockpin signalname="DS2_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_69">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="DS3_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_70">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="DS1_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_74">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="DS5_dp" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_75">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="phase_n" name="O" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_77">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_44(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq5(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_78">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_45(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq4(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_79">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_46(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq3(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_80">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_48(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq2(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_81">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_50(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq1(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="lcd_exnor" name="XLXI_82">
            <blockpin signalname="Clk" name="clk" />
            <blockpin signalname="XLXN_51(6:0)" name="inp1(6:0)" />
            <blockpin signalname="Seq0(6:0)" name="out1(6:0)" />
        </block>
        <block symbolname="buf" name="XLXI_60">
            <blockpin signalname="XLXN_117" name="I" />
            <blockpin signalname="cln1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_63">
            <blockpin signalname="XLXN_117" name="I" />
            <blockpin signalname="cln2" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_92">
            <blockpin signalname="Sel" name="I0" />
            <blockpin signalname="Clk" name="I1" />
            <blockpin signalname="XLXN_126" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_98">
            <blockpin signalname="XLXN_134" name="I0" />
            <blockpin signalname="Clk" name="I1" />
            <blockpin signalname="XLXN_117" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_101">
            <blockpin signalname="sec_one(0)" name="I0" />
            <blockpin signalname="Sel" name="I1" />
            <blockpin signalname="XLXN_134" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_44(6:0)">
            <wire x2="2336" y1="224" y2="224" x1="2000" />
        </branch>
        <branch name="XLXN_45(6:0)">
            <wire x2="2336" y1="560" y2="560" x1="2000" />
        </branch>
        <branch name="XLXN_48(6:0)">
            <wire x2="2336" y1="1216" y2="1216" x1="2032" />
        </branch>
        <branch name="XLXN_50(6:0)">
            <wire x2="2336" y1="1552" y2="1552" x1="2016" />
        </branch>
        <branch name="XLXN_51(6:0)">
            <wire x2="2336" y1="1904" y2="1904" x1="2032" />
        </branch>
        <instance x="1616" y="256" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1616" y="592" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1632" y="912" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1648" y="1248" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1632" y="1584" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1648" y="1936" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Seq3(6:0)">
            <wire x2="2864" y1="816" y2="816" x1="2720" />
        </branch>
        <branch name="XLXN_85(3:0)">
            <wire x2="1616" y1="224" y2="224" x1="1504" />
        </branch>
        <branch name="XLXN_86(3:0)">
            <wire x2="1616" y1="560" y2="560" x1="1488" />
        </branch>
        <branch name="XLXN_87(3:0)">
            <wire x2="1632" y1="880" y2="880" x1="1488" />
        </branch>
        <branch name="XLXN_90(3:0)">
            <wire x2="1648" y1="1216" y2="1216" x1="1488" />
        </branch>
        <branch name="XLXN_93(3:0)">
            <wire x2="1648" y1="1904" y2="1904" x1="1488" />
        </branch>
        <branch name="XLXN_94(3:0)">
            <wire x2="1632" y1="1552" y2="1552" x1="1488" />
        </branch>
        <branch name="Seq5(6:0)">
            <wire x2="2880" y1="160" y2="160" x1="2720" />
        </branch>
        <branch name="Seq4(6:0)">
            <wire x2="2880" y1="496" y2="496" x1="2720" />
        </branch>
        <branch name="XLXN_46(6:0)">
            <wire x2="2336" y1="880" y2="880" x1="2016" />
        </branch>
        <branch name="Seq2(6:0)">
            <wire x2="2864" y1="1152" y2="1152" x1="2720" />
        </branch>
        <branch name="Seq1(6:0)">
            <wire x2="2880" y1="1488" y2="1488" x1="2720" />
        </branch>
        <branch name="Seq0(6:0)">
            <wire x2="2880" y1="1840" y2="1840" x1="2720" />
        </branch>
        <instance x="1104" y="1040" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1104" y="1376" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1104" y="1712" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1104" y="2064" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1104" y="720" name="XLXI_2" orien="R0">
        </instance>
        <branch name="year_ten(3:0)">
            <wire x2="1104" y1="1680" y2="1680" x1="496" />
        </branch>
        <branch name="sec_ten(3:0)">
            <wire x2="1104" y1="1616" y2="1616" x1="512" />
        </branch>
        <branch name="month_one(3:0)">
            <wire x2="1104" y1="1344" y2="1344" x1="544" />
        </branch>
        <branch name="hour_ten(3:0)">
            <wire x2="1120" y1="288" y2="288" x1="528" />
        </branch>
        <branch name="day_ten(3:0)">
            <wire x2="1120" y1="352" y2="352" x1="528" />
        </branch>
        <branch name="min_ten(3:0)">
            <wire x2="1104" y1="944" y2="944" x1="512" />
        </branch>
        <branch name="month_ten(3:0)">
            <wire x2="1104" y1="1008" y2="1008" x1="544" />
        </branch>
        <branch name="min_one(3:0)">
            <wire x2="1104" y1="1280" y2="1280" x1="512" />
        </branch>
        <branch name="hour_one(3:0)">
            <wire x2="1104" y1="624" y2="624" x1="512" />
        </branch>
        <branch name="day_one(3:0)">
            <wire x2="1104" y1="688" y2="688" x1="512" />
        </branch>
        <branch name="sec_one(3:0)">
            <wire x2="752" y1="1968" y2="1968" x1="480" />
            <wire x2="1104" y1="1968" y2="1968" x1="752" />
        </branch>
        <branch name="year_one(3:0)">
            <wire x2="1104" y1="2032" y2="2032" x1="480" />
        </branch>
        <instance x="1120" y="384" name="XLXI_1" orien="R0">
        </instance>
        <branch name="DS4_dp">
            <wire x2="2880" y1="2192" y2="2192" x1="2800" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="2880" y1="2272" y2="2272" x1="2800" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="2880" y1="2352" y2="2352" x1="2800" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="2880" y1="2432" y2="2432" x1="2800" />
        </branch>
        <branch name="phase_n">
            <wire x2="2880" y1="2592" y2="2592" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2880" y="160" name="Seq5(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="496" name="Seq4(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2864" y="816" name="Seq3(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="1488" name="Seq1(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="1840" name="Seq0(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1152" name="Seq2(6:0)" orien="R0" />
        <iomarker fontsize="28" x="528" y="288" name="hour_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="352" name="day_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="544" y="1008" name="month_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="1968" name="sec_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="624" name="hour_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="688" name="day_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="944" name="min_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="1280" name="min_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="544" y="1344" name="month_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="1616" name="sec_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="496" y="1680" name="year_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="480" y="2032" name="year_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="224" name="Sel" orien="R180" />
        <iomarker fontsize="28" x="368" y="2352" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="2880" y="2192" name="DS4_dp" orien="R0" />
        <iomarker fontsize="28" x="2880" y="2272" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="2880" y="2352" name="DS3_dp" orien="R0" />
        <iomarker fontsize="28" x="2880" y="2432" name="DS1_dp" orien="R0" />
        <branch name="DS5_dp">
            <wire x2="2880" y1="2512" y2="2512" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2880" y="2512" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="2880" y="2592" name="phase_n" orien="R0" />
        <instance x="2336" y="256" name="XLXI_77" orien="R0">
        </instance>
        <instance x="2336" y="592" name="XLXI_78" orien="R0">
        </instance>
        <instance x="2336" y="912" name="XLXI_79" orien="R0">
        </instance>
        <instance x="2336" y="1248" name="XLXI_80" orien="R0">
        </instance>
        <instance x="2336" y="1584" name="XLXI_81" orien="R0">
        </instance>
        <instance x="2336" y="1936" name="XLXI_82" orien="R0">
        </instance>
        <branch name="cln2">
            <wire x2="2944" y1="2112" y2="2112" x1="2800" />
        </branch>
        <branch name="cln1">
            <wire x2="2944" y1="2032" y2="2032" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2944" y="2032" name="cln1" orien="R0" />
        <iomarker fontsize="28" x="2944" y="2112" name="cln2" orien="R0" />
        <branch name="sec_one(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2160" type="branch" />
            <wire x2="752" y1="2064" y2="2160" x1="752" />
            <wire x2="1040" y1="2160" y2="2160" x1="752" />
            <wire x2="1744" y1="2160" y2="2160" x1="1040" />
            <wire x2="1792" y1="2096" y2="2096" x1="1744" />
            <wire x2="1744" y1="2096" y2="2160" x1="1744" />
        </branch>
        <bustap x2="752" y1="1968" y2="2064" x1="752" />
        <branch name="Clk">
            <wire x2="2080" y1="2352" y2="2352" x1="368" />
            <wire x2="2560" y1="2352" y2="2352" x1="2080" />
            <wire x2="2576" y1="2352" y2="2352" x1="2560" />
            <wire x2="2560" y1="2352" y2="2432" x1="2560" />
            <wire x2="2576" y1="2432" y2="2432" x1="2560" />
            <wire x2="2560" y1="2432" y2="2512" x1="2560" />
            <wire x2="2576" y1="2512" y2="2512" x1="2560" />
            <wire x2="2560" y1="2512" y2="2592" x1="2560" />
            <wire x2="2576" y1="2592" y2="2592" x1="2560" />
            <wire x2="2336" y1="160" y2="160" x1="2080" />
            <wire x2="2080" y1="160" y2="496" x1="2080" />
            <wire x2="2336" y1="496" y2="496" x1="2080" />
            <wire x2="2080" y1="496" y2="816" x1="2080" />
            <wire x2="2336" y1="816" y2="816" x1="2080" />
            <wire x2="2080" y1="816" y2="1152" x1="2080" />
            <wire x2="2336" y1="1152" y2="1152" x1="2080" />
            <wire x2="2080" y1="1152" y2="1488" x1="2080" />
            <wire x2="2336" y1="1488" y2="1488" x1="2080" />
            <wire x2="2080" y1="1488" y2="1840" x1="2080" />
            <wire x2="2336" y1="1840" y2="1840" x1="2080" />
            <wire x2="2080" y1="1840" y2="2000" x1="2080" />
            <wire x2="2080" y1="2000" y2="2160" x1="2080" />
            <wire x2="2080" y1="2160" y2="2352" x1="2080" />
            <wire x2="2240" y1="2160" y2="2160" x1="2080" />
            <wire x2="2240" y1="2000" y2="2000" x1="2080" />
        </branch>
        <branch name="Sel">
            <wire x2="912" y1="224" y2="224" x1="400" />
            <wire x2="1120" y1="224" y2="224" x1="912" />
            <wire x2="912" y1="224" y2="560" x1="912" />
            <wire x2="1104" y1="560" y2="560" x1="912" />
            <wire x2="912" y1="560" y2="880" x1="912" />
            <wire x2="1104" y1="880" y2="880" x1="912" />
            <wire x2="912" y1="880" y2="1216" x1="912" />
            <wire x2="1104" y1="1216" y2="1216" x1="912" />
            <wire x2="912" y1="1216" y2="1552" x1="912" />
            <wire x2="1104" y1="1552" y2="1552" x1="912" />
            <wire x2="912" y1="1552" y2="1904" x1="912" />
            <wire x2="1104" y1="1904" y2="1904" x1="912" />
            <wire x2="912" y1="1904" y2="2224" x1="912" />
            <wire x2="1600" y1="2224" y2="2224" x1="912" />
            <wire x2="2240" y1="2224" y2="2224" x1="1600" />
            <wire x2="1792" y1="2032" y2="2032" x1="1600" />
            <wire x2="1600" y1="2032" y2="2224" x1="1600" />
        </branch>
        <branch name="XLXN_134">
            <wire x2="2240" y1="2064" y2="2064" x1="2048" />
        </branch>
        <instance x="1792" y="2160" name="XLXI_101" orien="R0" />
        <instance x="2576" y="2224" name="XLXI_65" orien="R0" />
        <instance x="2576" y="2304" name="XLXI_68" orien="R0" />
        <branch name="XLXN_126">
            <wire x2="2560" y1="2192" y2="2192" x1="2496" />
            <wire x2="2576" y1="2192" y2="2192" x1="2560" />
            <wire x2="2560" y1="2192" y2="2272" x1="2560" />
            <wire x2="2576" y1="2272" y2="2272" x1="2560" />
        </branch>
        <instance x="2576" y="2384" name="XLXI_69" orien="R0" />
        <instance x="2576" y="2464" name="XLXI_70" orien="R0" />
        <instance x="2576" y="2544" name="XLXI_74" orien="R0" />
        <instance x="2576" y="2624" name="XLXI_75" orien="R0" />
        <instance x="2576" y="2144" name="XLXI_63" orien="R0" />
        <branch name="XLXN_117">
            <wire x2="2560" y1="2032" y2="2032" x1="2496" />
            <wire x2="2560" y1="2032" y2="2112" x1="2560" />
            <wire x2="2576" y1="2112" y2="2112" x1="2560" />
            <wire x2="2576" y1="2032" y2="2032" x1="2560" />
        </branch>
        <instance x="2576" y="2064" name="XLXI_60" orien="R0" />
        <instance x="2240" y="2128" name="XLXI_98" orien="R0" />
        <instance x="2240" y="2288" name="XLXI_92" orien="R0" />
    </sheet>
</drawing>