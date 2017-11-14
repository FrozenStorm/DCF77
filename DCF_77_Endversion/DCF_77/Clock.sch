<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_344" />
        <signal name="load_hour_ten(3:0)" />
        <signal name="load_min_ten(3:0)" />
        <signal name="load_min_one(3:0)" />
        <signal name="sec_ten(3:0)" />
        <signal name="sec_one(3:0)" />
        <signal name="min_ten(3:0)" />
        <signal name="min_one(3:0)" />
        <signal name="XLXN_361" />
        <signal name="XLXN_362" />
        <signal name="hour_one(3:0)" />
        <signal name="XLXN_365" />
        <signal name="XLXN_366" />
        <signal name="clk" />
        <signal name="sync" />
        <signal name="reset_n" />
        <signal name="clk_1s" />
        <signal name="load_hour_one(3:0)" />
        <signal name="XLXN_444" />
        <signal name="hour_ten(3:0)" />
        <signal name="XLXN_445(3:0)" />
        <signal name="XLXN_448(3:0)" />
        <port polarity="Input" name="load_hour_ten(3:0)" />
        <port polarity="Input" name="load_min_ten(3:0)" />
        <port polarity="Input" name="load_min_one(3:0)" />
        <port polarity="Output" name="sec_ten(3:0)" />
        <port polarity="Output" name="sec_one(3:0)" />
        <port polarity="Output" name="min_ten(3:0)" />
        <port polarity="Output" name="min_one(3:0)" />
        <port polarity="Output" name="hour_one(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="sync" />
        <port polarity="Input" name="reset_n" />
        <port polarity="Input" name="clk_1s" />
        <port polarity="Input" name="load_hour_one(3:0)" />
        <port polarity="Output" name="hour_ten(3:0)" />
        <blockdef name="counter">
            <timestamp>2015-5-27T17:17:59</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="Counter_3_9">
            <timestamp>2015-5-9T11:36:47</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_152">
            <blockpin signalname="XLXN_444" name="P" />
        </block>
        <block symbolname="counter" name="XLXI_165">
            <attr value="0101" name="count_max_value">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_344" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="XLXN_445(3:0)" name="load(3:0)" />
            <blockpin signalname="XLXN_361" name="co" />
            <blockpin signalname="sec_ten(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="counter" name="XLXI_166">
            <attr value="1001" name="count_max_value">
                <trait verilog="all:0 dp:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_444" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="XLXN_448(3:0)" name="load(3:0)" />
            <blockpin signalname="XLXN_344" name="co" />
            <blockpin signalname="sec_one(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="counter" name="XLXI_168">
            <attr value="0101" name="count_max_value">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_362" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="load_min_ten(3:0)" name="load(3:0)" />
            <blockpin signalname="XLXN_365" name="co" />
            <blockpin signalname="min_ten(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="counter" name="XLXI_169">
            <attr value="1001" name="count_max_value">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_361" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="load_min_one(3:0)" name="load(3:0)" />
            <blockpin signalname="XLXN_362" name="co" />
            <blockpin signalname="min_one(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="Counter_3_9" name="XLXI_162">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_365" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="load_hour_one(3:0)" name="load(3:0)" />
            <blockpin signalname="hour_ten(3:0)" name="ten_count(3:0)" />
            <blockpin signalname="XLXN_366" name="co" />
            <blockpin signalname="hour_one(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="counter" name="XLXI_170">
            <attr value="0010" name="count_max_value">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="BitVector 4 Binary" />
            </attr>
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="sync" name="sync" />
            <blockpin signalname="reset_n" name="reset_n" />
            <blockpin signalname="XLXN_366" name="ci" />
            <blockpin signalname="clk_1s" name="ce" />
            <blockpin signalname="load_hour_ten(3:0)" name="load(3:0)" />
            <blockpin name="co" />
            <blockpin signalname="hour_ten(3:0)" name="count(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_171(3:0)">
            <blockpin signalname="XLXN_445(3:0)" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_172(3:0)">
            <blockpin signalname="XLXN_448(3:0)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="XLXN_344">
            <wire x2="3328" y1="3680" y2="3904" x1="3328" />
            <wire x2="3808" y1="3904" y2="3904" x1="3328" />
            <wire x2="3808" y1="3904" y2="4160" x1="3808" />
            <wire x2="3376" y1="3680" y2="3680" x1="3328" />
            <wire x2="3808" y1="4160" y2="4160" x1="3760" />
        </branch>
        <branch name="load_hour_ten(3:0)">
            <wire x2="3376" y1="1168" y2="1168" x1="2816" />
        </branch>
        <branch name="load_min_one(3:0)">
            <wire x2="3360" y1="3184" y2="3184" x1="2656" />
            <wire x2="3376" y1="3184" y2="3184" x1="3360" />
        </branch>
        <branch name="sec_ten(3:0)">
            <wire x2="4048" y1="3808" y2="3808" x1="3760" />
        </branch>
        <branch name="sec_one(3:0)">
            <wire x2="4048" y1="4480" y2="4480" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="4048" y="4480" name="sec_one(3:0)" orien="R0" />
        <iomarker fontsize="28" x="4048" y="3808" name="sec_ten(3:0)" orien="R0" />
        <branch name="load_min_ten(3:0)">
            <wire x2="3360" y1="2528" y2="2528" x1="2736" />
            <wire x2="3376" y1="2528" y2="2528" x1="3360" />
        </branch>
        <branch name="min_ten(3:0)">
            <wire x2="4032" y1="2528" y2="2528" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="4032" y="2528" name="min_ten(3:0)" orien="R0" />
        <branch name="min_one(3:0)">
            <wire x2="4048" y1="3184" y2="3184" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="4048" y="3184" name="min_one(3:0)" orien="R0" />
        <branch name="XLXN_361">
            <wire x2="3376" y1="3056" y2="3056" x1="3312" />
            <wire x2="3312" y1="3056" y2="3296" x1="3312" />
            <wire x2="3824" y1="3296" y2="3296" x1="3312" />
            <wire x2="3824" y1="3296" y2="3488" x1="3824" />
            <wire x2="3824" y1="3488" y2="3488" x1="3760" />
        </branch>
        <branch name="XLXN_362">
            <wire x2="3376" y1="2400" y2="2400" x1="3312" />
            <wire x2="3312" y1="2400" y2="2624" x1="3312" />
            <wire x2="3824" y1="2624" y2="2624" x1="3312" />
            <wire x2="3824" y1="2624" y2="2864" x1="3824" />
            <wire x2="3824" y1="2864" y2="2864" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="4032" y="1168" name="hour_ten(3:0)" orien="R0" />
        <branch name="XLXN_366">
            <wire x2="3376" y1="1040" y2="1040" x1="3312" />
            <wire x2="3312" y1="1040" y2="1376" x1="3312" />
            <wire x2="3824" y1="1376" y2="1376" x1="3312" />
            <wire x2="3824" y1="1376" y2="1504" x1="3824" />
            <wire x2="3824" y1="1504" y2="1504" x1="3760" />
        </branch>
        <branch name="load_hour_one(3:0)">
            <wire x2="3360" y1="1824" y2="1824" x1="2816" />
            <wire x2="3376" y1="1824" y2="1824" x1="3360" />
        </branch>
        <branch name="XLXN_365">
            <wire x2="3376" y1="1696" y2="1696" x1="3312" />
            <wire x2="3312" y1="1696" y2="1984" x1="3312" />
            <wire x2="3776" y1="1984" y2="1984" x1="3312" />
            <wire x2="3776" y1="1984" y2="2208" x1="3776" />
            <wire x2="3776" y1="2208" y2="2208" x1="3760" />
        </branch>
        <instance x="3376" y="3840" name="XLXI_165" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="count_max_value" x="384" y="-220" type="instance" />
        </instance>
        <instance x="3376" y="4512" name="XLXI_166" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="count_max_value" x="400" y="-204" type="instance" />
        </instance>
        <instance x="3376" y="2560" name="XLXI_168" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="count_max_value" x="416" y="-252" type="instance" />
        </instance>
        <instance x="3376" y="3216" name="XLXI_169" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="count_max_value" x="384" y="-236" type="instance" />
        </instance>
        <branch name="hour_ten(3:0)">
            <wire x2="3824" y1="1280" y2="1280" x1="3104" />
            <wire x2="3104" y1="1280" y2="1888" x1="3104" />
            <wire x2="3376" y1="1888" y2="1888" x1="3104" />
            <wire x2="3824" y1="1168" y2="1168" x1="3760" />
            <wire x2="4032" y1="1168" y2="1168" x1="3824" />
            <wire x2="3824" y1="1168" y2="1280" x1="3824" />
        </branch>
        <branch name="hour_one(3:0)">
            <wire x2="4032" y1="1888" y2="1888" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="4032" y="1888" name="hour_one(3:0)" orien="R0" />
        <instance x="3376" y="1920" name="XLXI_162" orien="R0">
        </instance>
        <instance x="3376" y="1200" name="XLXI_170" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="count_max_value" x="400" y="-220" type="instance" />
        </instance>
        <branch name="XLXN_444">
            <wire x2="3216" y1="4080" y2="4352" x1="3216" />
            <wire x2="3376" y1="4352" y2="4352" x1="3216" />
        </branch>
        <instance x="3152" y="4080" name="XLXI_152" orien="R0" />
        <branch name="XLXN_445(3:0)">
            <wire x2="3168" y1="3808" y2="3824" x1="3168" />
            <wire x2="3376" y1="3808" y2="3808" x1="3168" />
        </branch>
        <branch name="XLXN_448(3:0)">
            <wire x2="3376" y1="4480" y2="4480" x1="3152" />
        </branch>
        <instance x="3088" y="4608" name="XLXI_172(3:0)" orien="R0" />
        <instance x="3104" y="3952" name="XLXI_171(3:0)" orien="R0" />
        <branch name="clk">
            <wire x2="3376" y1="848" y2="848" x1="2800" />
        </branch>
        <branch name="sync">
            <wire x2="3376" y1="912" y2="912" x1="2800" />
        </branch>
        <branch name="reset_n">
            <wire x2="3376" y1="976" y2="976" x1="2800" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3376" y1="1104" y2="1104" x1="2800" />
        </branch>
        <iomarker fontsize="28" x="2800" y="848" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2800" y="912" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2800" y="976" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2800" y="1104" name="clk_1s" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1168" name="load_hour_ten(3:0)" orien="R180" />
        <branch name="clk">
            <wire x2="3360" y1="1504" y2="1504" x1="2800" />
            <wire x2="3376" y1="1504" y2="1504" x1="3360" />
        </branch>
        <branch name="sync">
            <wire x2="3360" y1="1568" y2="1568" x1="2816" />
            <wire x2="3376" y1="1568" y2="1568" x1="3360" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3360" y1="1760" y2="1760" x1="2816" />
            <wire x2="3376" y1="1760" y2="1760" x1="3360" />
        </branch>
        <branch name="clk">
            <wire x2="3360" y1="2208" y2="2208" x1="2736" />
            <wire x2="3376" y1="2208" y2="2208" x1="3360" />
        </branch>
        <branch name="sync">
            <wire x2="3360" y1="2272" y2="2272" x1="2752" />
            <wire x2="3376" y1="2272" y2="2272" x1="3360" />
        </branch>
        <branch name="reset_n">
            <wire x2="3360" y1="2336" y2="2336" x1="2752" />
            <wire x2="3376" y1="2336" y2="2336" x1="3360" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3360" y1="2464" y2="2464" x1="2720" />
            <wire x2="3376" y1="2464" y2="2464" x1="3360" />
        </branch>
        <branch name="clk">
            <wire x2="3360" y1="2864" y2="2864" x1="2688" />
            <wire x2="3376" y1="2864" y2="2864" x1="3360" />
        </branch>
        <branch name="sync">
            <wire x2="3360" y1="2928" y2="2928" x1="2688" />
            <wire x2="3376" y1="2928" y2="2928" x1="3360" />
        </branch>
        <branch name="reset_n">
            <wire x2="3360" y1="2992" y2="2992" x1="2688" />
            <wire x2="3376" y1="2992" y2="2992" x1="3360" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3376" y1="3120" y2="3120" x1="2624" />
        </branch>
        <branch name="clk">
            <wire x2="3360" y1="3488" y2="3488" x1="2640" />
            <wire x2="3376" y1="3488" y2="3488" x1="3360" />
        </branch>
        <branch name="clk">
            <wire x2="3360" y1="4160" y2="4160" x1="2672" />
            <wire x2="3376" y1="4160" y2="4160" x1="3360" />
        </branch>
        <branch name="sync">
            <wire x2="3360" y1="3552" y2="3552" x1="2624" />
            <wire x2="3376" y1="3552" y2="3552" x1="3360" />
        </branch>
        <branch name="sync">
            <wire x2="3360" y1="4224" y2="4224" x1="2688" />
            <wire x2="3376" y1="4224" y2="4224" x1="3360" />
        </branch>
        <branch name="reset_n">
            <wire x2="3360" y1="3616" y2="3616" x1="2656" />
            <wire x2="3376" y1="3616" y2="3616" x1="3360" />
        </branch>
        <branch name="reset_n">
            <wire x2="3376" y1="4288" y2="4288" x1="2736" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3376" y1="3744" y2="3744" x1="2624" />
        </branch>
        <branch name="clk_1s">
            <wire x2="3360" y1="4416" y2="4416" x1="2704" />
            <wire x2="3376" y1="4416" y2="4416" x1="3360" />
        </branch>
        <branch name="reset_n">
            <wire x2="3360" y1="1632" y2="1632" x1="2816" />
            <wire x2="3376" y1="1632" y2="1632" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="2624" y="3120" name="clk_1s" orien="R180" />
        <iomarker fontsize="28" x="2736" y="4288" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2624" y="3744" name="clk_1s" orien="R180" />
        <iomarker fontsize="28" x="2800" y="1504" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1568" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1632" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1760" name="clk_1s" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1824" name="load_hour_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2736" y="2208" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2752" y="2272" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2752" y="2336" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2720" y="2464" name="clk_1s" orien="R180" />
        <iomarker fontsize="28" x="2736" y="2528" name="load_min_ten(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2688" y="2864" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2688" y="2928" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2688" y="2992" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2656" y="3184" name="load_min_one(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2640" y="3488" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2624" y="3552" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2656" y="3616" name="reset_n" orien="R180" />
        <iomarker fontsize="28" x="2672" y="4160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2688" y="4224" name="sync" orien="R180" />
        <iomarker fontsize="28" x="2704" y="4416" name="clk_1s" orien="R180" />
    </sheet>
</drawing>