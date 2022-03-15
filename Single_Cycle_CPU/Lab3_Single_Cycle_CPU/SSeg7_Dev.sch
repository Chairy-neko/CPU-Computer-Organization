<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(63:0)" />
        <signal name="XLXN_2(63:0)" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="flash" />
        <signal name="SW0" />
        <signal name="XLXN_9(63:0)" />
        <signal name="Start" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="seg_clk" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <signal name="XLXN_10(63:0)" />
        <signal name="seg_out" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_out" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="HexTo8SEG">
            <timestamp>2020-3-18T14:56:3</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2020-7-3T11:58:3</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2020-7-3T10:47:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="P2S">
            <timestamp>2016-1-2T9:33:34</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <block symbolname="HexTo8SEG" name="SM1">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="point(7:0)" name="point(7:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="XLXN_1(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="SSeg_map" name="SM3">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_2(63:0)" name="Seg_map(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="MUXSH2M">
            <blockpin signalname="SW0" name="s" />
            <blockpin signalname="XLXN_1(63:0)" name="I0(63:0)" />
            <blockpin signalname="XLXN_2(63:0)" name="I1(63:0)" />
            <blockpin signalname="XLXN_9(63:0)" name="o(63:0)" />
        </block>
        <block symbolname="P2S" name="XLXI_1">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_out" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="XLXN_9(63:0)" name="P_Data(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="1392" name="SM1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-128" type="instance" />
        </instance>
        <instance x="928" y="1872" name="SM3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-16" type="instance" />
        </instance>
        <instance x="1680" y="1552" name="MUXSH2M" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-80" type="instance" />
        </instance>
        <branch name="XLXN_1(63:0)">
            <wire x2="1488" y1="1168" y2="1168" x1="1312" />
            <wire x2="1488" y1="1168" y2="1456" x1="1488" />
            <wire x2="1680" y1="1456" y2="1456" x1="1488" />
        </branch>
        <branch name="XLXN_2(63:0)">
            <wire x2="1536" y1="1840" y2="1840" x1="1392" />
            <wire x2="1536" y1="1520" y2="1840" x1="1536" />
            <wire x2="1680" y1="1520" y2="1520" x1="1536" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="880" y1="1360" y2="1360" x1="672" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="880" y1="1296" y2="1296" x1="672" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="880" y1="1232" y2="1232" x1="688" />
        </branch>
        <branch name="flash">
            <wire x2="880" y1="1168" y2="1168" x1="688" />
        </branch>
        <branch name="SW0">
            <wire x2="1600" y1="880" y2="880" x1="640" />
            <wire x2="1600" y1="880" y2="1392" x1="1600" />
            <wire x2="1680" y1="1392" y2="1392" x1="1600" />
        </branch>
        <branch name="XLXN_9(63:0)">
            <wire x2="2080" y1="1392" y2="1392" x1="2064" />
            <wire x2="2080" y1="784" y2="1392" x1="2080" />
            <wire x2="2208" y1="784" y2="784" x1="2080" />
        </branch>
        <branch name="Start">
            <wire x2="2160" y1="736" y2="736" x1="640" />
            <wire x2="2208" y1="736" y2="736" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="640" y="736" name="Start" orien="R180" />
        <iomarker fontsize="28" x="640" y="880" name="SW0" orien="R180" />
        <iomarker fontsize="28" x="688" y="1168" name="flash" orien="R180" />
        <iomarker fontsize="28" x="688" y="1232" name="LES(7:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="1296" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="1360" name="Hexs(31:0)" orien="R180" />
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1840" type="branch" />
            <wire x2="928" y1="1840" y2="1840" x1="736" />
        </branch>
        <instance x="2208" y="816" name="XLXI_1" orien="R0">
        </instance>
        <branch name="rst">
            <wire x2="2192" y1="688" y2="688" x1="608" />
            <wire x2="2208" y1="688" y2="688" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="608" y="688" name="rst" orien="R180" />
        <iomarker fontsize="28" x="608" y="640" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="2208" y1="640" y2="640" x1="608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="640" name="seg_clk" orien="R0" />
        <branch name="seg_clk">
            <wire x2="2640" y1="640" y2="640" x1="2448" />
        </branch>
        <branch name="seg_out">
            <wire x2="2544" y1="688" y2="688" x1="2448" />
            <wire x2="2640" y1="688" y2="688" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2640" y="688" name="seg_out" orien="R0" />
        <branch name="SEG_PEN">
            <wire x2="2464" y1="736" y2="736" x1="2448" />
            <wire x2="2640" y1="736" y2="736" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2640" y="736" name="SEG_PEN" orien="R0" />
        <branch name="seg_clrn">
            <wire x2="2640" y1="784" y2="784" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2640" y="784" name="seg_clrn" orien="R0" />
    </sheet>
</drawing>