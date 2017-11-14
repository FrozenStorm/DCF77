<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="DS2(6:0)" />
        <signal name="XLXN_75(3:0)" />
        <signal name="XLXN_76(3:0)" />
        <signal name="XLXN_77(3:0)" />
        <signal name="XLXN_78(3:0)" />
        <signal name="XLXN_83(3:0)" />
        <signal name="XLXN_84(3:0)" />
        <signal name="XLXN_85(3:0)" />
        <signal name="XLXN_86(3:0)" />
        <signal name="XLXN_87(3:0)" />
        <signal name="XLXN_88(3:0)" />
        <signal name="XLXN_89(3:0)" />
        <signal name="XLXN_90(3:0)" />
        <signal name="XLXN_91(3:0)" />
        <signal name="DS1(6:0)" />
        <signal name="DS3(6:0)" />
        <signal name="time_date_select" />
        <signal name="DS4(6:0)" />
        <signal name="DS5(6:0)" />
        <signal name="DS6(6:0)" />
        <signal name="cln1" />
        <signal name="cln2" />
        <signal name="DS1_dp" />
        <signal name="DS2_dp" />
        <signal name="DS3_dp" />
        <signal name="DS4_dp" />
        <signal name="com" />
        <signal name="XLXN_163" />
        <signal name="XLXN_176(3:0)" />
        <signal name="XLXN_217(3:0)" />
        <signal name="XLXN_218(3:0)" />
        <signal name="DS5_dp" />
        <signal name="XLXN_235" />
        <signal name="XLXN_237" />
        <signal name="XLXN_238" />
        <signal name="reset_n" />
        <signal name="dcf_77" />
        <signal name="LED1" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="DS2(6:0)" />
        <port polarity="Output" name="DS1(6:0)" />
        <port polarity="Output" name="DS3(6:0)" />
        <port polarity="Input" name="time_date_select" />
        <port polarity="Output" name="DS4(6:0)" />
        <port polarity="Output" name="DS5(6:0)" />
        <port polarity="Output" name="DS6(6:0)" />
        <port polarity="Output" name="cln1" />
        <port polarity="Output" name="cln2" />
        <port polarity="Output" name="DS1_dp" />
        <port polarity="Output" name="DS2_dp" />
        <port polarity="Output" name="DS3_dp" />
        <port polarity="Output" name="DS4_dp" />
        <port polarity="Output" name="com" />
        <port polarity="Output" name="DS5_dp" />
        <port polarity="Input" name="reset_n" />
        <port polarity="Input" name="dcf_77" />
        <port polarity="Output" name="LED1" />
        <blockdef name="Clock">
            <timestamp>2015-5-14T16:40:4</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
        </blockdef>
        <blockdef name="display_module">
            <timestamp>2015-5-28T19:19:2</timestamp>
            <rect width="256" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <rect width="64" x="320" y="-876" height="24" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <rect width="64" x="320" y="-812" height="24" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <rect width="64" x="320" y="-748" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divider">
            <timestamp>2015-5-28T14:0:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DCF_77_Decoder">
            <timestamp>2015-6-4T11:23:53</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <block symbolname="Clock" name="XLXI_11">
            <blockpin signalname="XLXN_78(3:0)" name="load_hour_ten(3:0)" />
            <blockpin signalname="XLXN_76(3:0)" name="load_min_ten(3:0)" />
            <blockpin signalname="XLXN_75(3:0)" name="load_min_one(3:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_163" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_237" name="clk_1s" />
            <blockpin signalname="XLXN_77(3:0)" name="load_hour_one(3:0)" />
            <blockpin signalname="XLXN_83(3:0)" name="sec_ten(3:0)" />
            <blockpin signalname="XLXN_176(3:0)" name="sec_one(3:0)" />
            <blockpin signalname="XLXN_85(3:0)" name="min_ten(3:0)" />
            <blockpin signalname="XLXN_84(3:0)" name="min_one(3:0)" />
            <blockpin signalname="XLXN_86(3:0)" name="hour_one(3:0)" />
            <blockpin signalname="XLXN_87(3:0)" name="hour_ten(3:0)" />
        </block>
        <block symbolname="display_module" name="XLXI_73">
            <blockpin signalname="time_date_select" name="Sel" />
            <blockpin signalname="XLXN_218(3:0)" name="year_ten(3:0)" />
            <blockpin signalname="XLXN_83(3:0)" name="sec_ten(3:0)" />
            <blockpin signalname="XLXN_90(3:0)" name="month_one(3:0)" />
            <blockpin signalname="XLXN_87(3:0)" name="hour_ten(3:0)" />
            <blockpin signalname="XLXN_89(3:0)" name="day_ten(3:0)" />
            <blockpin signalname="XLXN_85(3:0)" name="min_ten(3:0)" />
            <blockpin signalname="XLXN_91(3:0)" name="month_ten(3:0)" />
            <blockpin signalname="XLXN_84(3:0)" name="min_one(3:0)" />
            <blockpin signalname="XLXN_86(3:0)" name="hour_one(3:0)" />
            <blockpin signalname="XLXN_88(3:0)" name="day_one(3:0)" />
            <blockpin signalname="XLXN_176(3:0)" name="sec_one(3:0)" />
            <blockpin signalname="XLXN_217(3:0)" name="year_one(3:0)" />
            <blockpin signalname="XLXN_235" name="Clk" />
            <blockpin signalname="DS3(6:0)" name="Seq3(6:0)" />
            <blockpin signalname="DS1(6:0)" name="Seq5(6:0)" />
            <blockpin signalname="DS2(6:0)" name="Seq4(6:0)" />
            <blockpin signalname="DS4(6:0)" name="Seq2(6:0)" />
            <blockpin signalname="DS5(6:0)" name="Seq1(6:0)" />
            <blockpin signalname="DS6(6:0)" name="Seq0(6:0)" />
            <blockpin signalname="DS4_dp" name="DS4_dp" />
            <blockpin signalname="DS2_dp" name="DS2_dp" />
            <blockpin signalname="DS3_dp" name="DS3_dp" />
            <blockpin signalname="DS1_dp" name="DS1_dp" />
            <blockpin signalname="com" name="phase_n" />
            <blockpin signalname="DS5_dp" name="DS5_dp" />
            <blockpin signalname="cln2" name="cln2" />
            <blockpin signalname="cln1" name="cln1" />
        </block>
        <block symbolname="divider" name="XLXI_75">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_235" name="clk_display" />
            <blockpin signalname="XLXN_237" name="clk_second" />
            <blockpin signalname="XLXN_238" name="clk_sampling" />
        </block>
        <block symbolname="DCF_77_Decoder" name="XLXI_83">
            <blockpin signalname="XLXN_238" name="clk" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="dcf_77" name="dcf_in" />
            <blockpin signalname="XLXN_163" name="sync" />
            <blockpin signalname="XLXN_75(3:0)" name="min_one(3:0)" />
            <blockpin signalname="XLXN_76(3:0)" name="min_ten(3:0)" />
            <blockpin signalname="XLXN_77(3:0)" name="hour_one(3:0)" />
            <blockpin signalname="XLXN_78(3:0)" name="hour_ten(3:0)" />
            <blockpin signalname="XLXN_88(3:0)" name="day_one(3:0)" />
            <blockpin signalname="XLXN_89(3:0)" name="day_ten(3:0)" />
            <blockpin signalname="XLXN_90(3:0)" name="month_one(3:0)" />
            <blockpin signalname="XLXN_91(3:0)" name="month_ten(3:0)" />
            <blockpin signalname="XLXN_217(3:0)" name="year_one(3:0)" />
            <blockpin signalname="XLXN_218(3:0)" name="year_ten(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_84">
            <blockpin signalname="dcf_77" name="I" />
            <blockpin signalname="LED1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3920" y="2976" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_75(3:0)">
            <wire x2="3920" y1="2752" y2="2752" x1="3488" />
        </branch>
        <branch name="XLXN_76(3:0)">
            <wire x2="3920" y1="2816" y2="2816" x1="3488" />
        </branch>
        <branch name="XLXN_77(3:0)">
            <wire x2="3920" y1="2880" y2="2880" x1="3488" />
        </branch>
        <branch name="XLXN_78(3:0)">
            <wire x2="3920" y1="2944" y2="2944" x1="3488" />
        </branch>
        <branch name="XLXN_83(3:0)">
            <wire x2="4704" y1="2432" y2="2432" x1="4304" />
        </branch>
        <branch name="XLXN_84(3:0)">
            <wire x2="4704" y1="2496" y2="2496" x1="4304" />
        </branch>
        <branch name="XLXN_85(3:0)">
            <wire x2="4704" y1="2560" y2="2560" x1="4304" />
        </branch>
        <branch name="XLXN_86(3:0)">
            <wire x2="4704" y1="2624" y2="2624" x1="4304" />
        </branch>
        <branch name="XLXN_87(3:0)">
            <wire x2="4704" y1="2688" y2="2688" x1="4304" />
        </branch>
        <branch name="DS2(6:0)">
            <wire x2="5376" y1="2304" y2="2304" x1="5088" />
        </branch>
        <iomarker fontsize="28" x="5376" y="2304" name="DS2(6:0)" orien="R0" />
        <branch name="DS1(6:0)">
            <wire x2="5376" y1="2240" y2="2240" x1="5088" />
        </branch>
        <branch name="DS3(6:0)">
            <wire x2="5376" y1="2368" y2="2368" x1="5088" />
        </branch>
        <iomarker fontsize="28" x="5376" y="2240" name="DS1(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2368" name="DS3(6:0)" orien="R0" />
        <branch name="time_date_select">
            <wire x2="4704" y1="2240" y2="2240" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4640" y="2240" name="time_date_select" orien="R180" />
        <branch name="XLXN_91(3:0)">
            <wire x2="4448" y1="3200" y2="3200" x1="3488" />
            <wire x2="4448" y1="2944" y2="3200" x1="4448" />
            <wire x2="4704" y1="2944" y2="2944" x1="4448" />
        </branch>
        <branch name="XLXN_90(3:0)">
            <wire x2="4400" y1="3136" y2="3136" x1="3488" />
            <wire x2="4400" y1="2880" y2="3136" x1="4400" />
            <wire x2="4704" y1="2880" y2="2880" x1="4400" />
        </branch>
        <branch name="XLXN_89(3:0)">
            <wire x2="4352" y1="3072" y2="3072" x1="3488" />
            <wire x2="4352" y1="2816" y2="3072" x1="4352" />
            <wire x2="4704" y1="2816" y2="2816" x1="4352" />
        </branch>
        <branch name="XLXN_88(3:0)">
            <wire x2="4304" y1="3008" y2="3008" x1="3488" />
            <wire x2="4304" y1="2752" y2="3008" x1="4304" />
            <wire x2="4704" y1="2752" y2="2752" x1="4304" />
        </branch>
        <branch name="DS4(6:0)">
            <wire x2="5376" y1="2432" y2="2432" x1="5088" />
        </branch>
        <branch name="DS5(6:0)">
            <wire x2="5376" y1="2496" y2="2496" x1="5088" />
        </branch>
        <branch name="DS6(6:0)">
            <wire x2="5376" y1="2560" y2="2560" x1="5088" />
        </branch>
        <branch name="cln1">
            <wire x2="5376" y1="2624" y2="2624" x1="5088" />
        </branch>
        <branch name="cln2">
            <wire x2="5376" y1="2688" y2="2688" x1="5088" />
        </branch>
        <branch name="DS1_dp">
            <wire x2="5376" y1="2752" y2="2752" x1="5088" />
        </branch>
        <branch name="DS2_dp">
            <wire x2="5376" y1="2816" y2="2816" x1="5088" />
        </branch>
        <branch name="DS3_dp">
            <wire x2="5376" y1="2880" y2="2880" x1="5088" />
        </branch>
        <branch name="DS4_dp">
            <wire x2="5376" y1="2944" y2="2944" x1="5088" />
        </branch>
        <iomarker fontsize="28" x="5376" y="2624" name="cln1" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2688" name="cln2" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2816" name="DS2_dp" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2880" name="DS3_dp" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2944" name="DS4_dp" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2432" name="DS4(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2496" name="DS5(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2560" name="DS6(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5376" y="2752" name="DS1_dp" orien="R0" />
        <branch name="clk">
            <wire x2="3904" y1="2368" y2="2368" x1="3792" />
            <wire x2="3920" y1="2368" y2="2368" x1="3904" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="3904" y1="2688" y2="2688" x1="3488" />
            <wire x2="3920" y1="2560" y2="2560" x1="3904" />
            <wire x2="3904" y1="2560" y2="2688" x1="3904" />
        </branch>
        <branch name="XLXN_176(3:0)">
            <wire x2="4704" y1="2368" y2="2368" x1="4304" />
        </branch>
        <branch name="clk">
            <wire x2="2368" y1="2048" y2="2048" x1="2208" />
        </branch>
        <instance x="4704" y="3104" name="XLXI_73" orien="R0">
        </instance>
        <branch name="XLXN_217(3:0)">
            <wire x2="4496" y1="3264" y2="3264" x1="3488" />
            <wire x2="4496" y1="3008" y2="3264" x1="4496" />
            <wire x2="4704" y1="3008" y2="3008" x1="4496" />
        </branch>
        <branch name="XLXN_218(3:0)">
            <wire x2="4544" y1="3328" y2="3328" x1="3488" />
            <wire x2="4544" y1="3072" y2="3328" x1="4544" />
            <wire x2="4704" y1="3072" y2="3072" x1="4544" />
        </branch>
        <branch name="com">
            <wire x2="5376" y1="3072" y2="3072" x1="5088" />
        </branch>
        <branch name="DS5_dp">
            <wire x2="5376" y1="3008" y2="3008" x1="5088" />
        </branch>
        <iomarker fontsize="28" x="5376" y="3008" name="DS5_dp" orien="R0" />
        <iomarker fontsize="28" x="5376" y="3072" name="com" orien="R0" />
        <instance x="2368" y="2208" name="XLXI_75" orien="R0">
        </instance>
        <branch name="XLXN_235">
            <wire x2="4352" y1="2048" y2="2048" x1="2752" />
            <wire x2="4352" y1="2048" y2="2304" x1="4352" />
            <wire x2="4704" y1="2304" y2="2304" x1="4352" />
        </branch>
        <branch name="XLXN_237">
            <wire x2="2768" y1="2112" y2="2112" x1="2752" />
            <wire x2="2784" y1="2112" y2="2112" x1="2768" />
            <wire x2="3568" y1="2112" y2="2112" x1="2784" />
            <wire x2="3568" y1="2112" y2="2432" x1="3568" />
            <wire x2="3920" y1="2432" y2="2432" x1="3568" />
        </branch>
        <branch name="XLXN_238">
            <wire x2="2896" y1="2176" y2="2176" x1="2752" />
            <wire x2="2896" y1="2176" y2="2688" x1="2896" />
            <wire x2="3056" y1="2688" y2="2688" x1="2896" />
            <wire x2="3104" y1="2688" y2="2688" x1="3056" />
        </branch>
        <branch name="reset_n">
            <wire x2="3904" y1="2496" y2="2496" x1="3856" />
            <wire x2="3920" y1="2496" y2="2496" x1="3904" />
        </branch>
        <branch name="reset_n">
            <wire x2="2352" y1="2176" y2="2176" x1="2256" />
            <wire x2="2368" y1="2176" y2="2176" x1="2352" />
        </branch>
        <instance x="3104" y="3360" name="XLXI_83" orien="R0">
        </instance>
        <branch name="reset_n">
            <wire x2="3088" y1="3008" y2="3008" x1="2944" />
            <wire x2="3104" y1="3008" y2="3008" x1="3088" />
        </branch>
        <branch name="dcf_77">
            <wire x2="3008" y1="3328" y2="3328" x1="2928" />
            <wire x2="3088" y1="3328" y2="3328" x1="3008" />
            <wire x2="3104" y1="3328" y2="3328" x1="3088" />
            <wire x2="3008" y1="3328" y2="3520" x1="3008" />
            <wire x2="3136" y1="3520" y2="3520" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="2208" y="2048" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2256" y="2176" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2944" y="3008" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2928" y="3328" name="dcf_77" orien="R180" />
        <iomarker fontsize="28" x="3856" y="2496" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="3792" y="2368" name="clk" orien="R180" />
        <instance x="3136" y="3552" name="XLXI_84" orien="R0" />
        <branch name="LED1">
            <wire x2="3552" y1="3520" y2="3520" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3552" y="3520" name="LED1" orien="R0" />
    </sheet>
</drawing>