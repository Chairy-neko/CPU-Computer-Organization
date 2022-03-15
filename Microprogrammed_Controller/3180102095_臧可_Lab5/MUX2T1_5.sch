<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s" />
        <signal name="I0(4:0)" />
        <signal name="I0(0)" />
        <signal name="I0(1)" />
        <signal name="I0(2)" />
        <signal name="I0(3)" />
        <signal name="I0(4)" />
        <signal name="XLXN_2" />
        <signal name="I1(4:0)" />
        <signal name="I1(0)" />
        <signal name="I1(1)" />
        <signal name="I1(2)" />
        <signal name="I1(3)" />
        <signal name="I1(4)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="o(4:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <port polarity="Input" name="s" />
        <port polarity="Input" name="I0(4:0)" />
        <port polarity="Input" name="I1(4:0)" />
        <port polarity="Output" name="o(4:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I0(4)" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="I1(4)" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_43" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="o(4)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="s">
            <attrtext style="alignment:SOFT-BVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="704" y="528" type="branch" />
            <wire x2="704" y1="336" y2="528" x1="704" />
            <wire x2="704" y1="528" y2="688" x1="704" />
            <wire x2="1216" y1="688" y2="688" x1="704" />
            <wire x2="704" y1="688" y2="992" x1="704" />
            <wire x2="1216" y1="992" y2="992" x1="704" />
            <wire x2="704" y1="992" y2="1280" x1="704" />
            <wire x2="1216" y1="1280" y2="1280" x1="704" />
            <wire x2="704" y1="1280" y2="1584" x1="704" />
            <wire x2="1216" y1="1584" y2="1584" x1="704" />
            <wire x2="704" y1="1584" y2="1872" x1="704" />
            <wire x2="1216" y1="1872" y2="1872" x1="704" />
            <wire x2="720" y1="528" y2="528" x1="704" />
        </branch>
        <instance x="720" y="560" name="XLXI_1" orien="R0" />
        <instance x="1216" y="656" name="XLXI_2" orien="R0" />
        <instance x="1216" y="816" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="960" y1="528" y2="528" x1="944" />
            <wire x2="1216" y1="528" y2="528" x1="960" />
            <wire x2="960" y1="528" y2="864" x1="960" />
            <wire x2="1216" y1="864" y2="864" x1="960" />
            <wire x2="960" y1="864" y2="1152" x1="960" />
            <wire x2="1216" y1="1152" y2="1152" x1="960" />
            <wire x2="960" y1="1152" y2="1360" x1="960" />
            <wire x2="960" y1="1360" y2="1456" x1="960" />
            <wire x2="1216" y1="1456" y2="1456" x1="960" />
            <wire x2="960" y1="1456" y2="1744" x1="960" />
            <wire x2="1216" y1="1744" y2="1744" x1="960" />
        </branch>
        <instance x="1216" y="992" name="XLXI_4" orien="R0" />
        <instance x="1216" y="1120" name="XLXI_5" orien="R0" />
        <instance x="1216" y="1280" name="XLXI_6" orien="R0" />
        <instance x="1216" y="1408" name="XLXI_7" orien="R0" />
        <instance x="1216" y="1584" name="XLXI_8" orien="R0" />
        <instance x="1216" y="1712" name="XLXI_9" orien="R0" />
        <instance x="1216" y="1872" name="XLXI_10" orien="R0" />
        <instance x="1216" y="2000" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="496" y="960" name="I0(4:0)" orien="R180" />
        <branch name="I0(4:0)">
            <wire x2="992" y1="960" y2="960" x1="496" />
            <wire x2="992" y1="960" y2="1216" x1="992" />
            <wire x2="992" y1="1216" y2="1520" x1="992" />
            <wire x2="992" y1="1520" y2="1808" x1="992" />
            <wire x2="992" y1="1808" y2="1856" x1="992" />
            <wire x2="992" y1="544" y2="592" x1="992" />
            <wire x2="992" y1="592" y2="928" x1="992" />
            <wire x2="992" y1="928" y2="960" x1="992" />
        </branch>
        <bustap x2="1088" y1="592" y2="592" x1="992" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1107" y="592" type="branch" />
            <wire x2="1104" y1="592" y2="592" x1="1088" />
            <wire x2="1216" y1="592" y2="592" x1="1104" />
        </branch>
        <bustap x2="1088" y1="928" y2="928" x1="992" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1118" y="928" type="branch" />
            <wire x2="1120" y1="928" y2="928" x1="1088" />
            <wire x2="1216" y1="928" y2="928" x1="1120" />
        </branch>
        <bustap x2="1088" y1="1216" y2="1216" x1="992" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1102" y="1216" type="branch" />
            <wire x2="1104" y1="1216" y2="1216" x1="1088" />
            <wire x2="1216" y1="1216" y2="1216" x1="1104" />
        </branch>
        <bustap x2="1088" y1="1520" y2="1520" x1="992" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1099" y="1520" type="branch" />
            <wire x2="1104" y1="1520" y2="1520" x1="1088" />
            <wire x2="1216" y1="1520" y2="1520" x1="1104" />
        </branch>
        <bustap x2="1088" y1="1808" y2="1808" x1="992" />
        <branch name="I0(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1106" y="1808" type="branch" />
            <wire x2="1104" y1="1808" y2="1808" x1="1088" />
            <wire x2="1216" y1="1808" y2="1808" x1="1104" />
        </branch>
        <branch name="I1(4:0)">
            <wire x2="1040" y1="1344" y2="1344" x1="448" />
            <wire x2="1072" y1="1344" y2="1344" x1="1040" />
            <wire x2="1104" y1="1344" y2="1344" x1="1072" />
            <wire x2="1104" y1="1344" y2="1648" x1="1104" />
            <wire x2="1104" y1="1648" y2="1936" x1="1104" />
            <wire x2="1104" y1="1936" y2="2000" x1="1104" />
            <wire x2="1104" y1="704" y2="752" x1="1104" />
            <wire x2="1104" y1="752" y2="1056" x1="1104" />
            <wire x2="1104" y1="1056" y2="1344" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="448" y="1344" name="I1(4:0)" orien="R180" />
        <bustap x2="1200" y1="752" y2="752" x1="1104" />
        <branch name="I1(0)">
            <wire x2="1216" y1="752" y2="752" x1="1200" />
        </branch>
        <bustap x2="1200" y1="1056" y2="1056" x1="1104" />
        <branch name="I1(1)">
            <wire x2="1216" y1="1056" y2="1056" x1="1200" />
        </branch>
        <bustap x2="1200" y1="1344" y2="1344" x1="1104" />
        <branch name="I1(2)">
            <wire x2="1216" y1="1344" y2="1344" x1="1200" />
        </branch>
        <bustap x2="1200" y1="1648" y2="1648" x1="1104" />
        <branch name="I1(3)">
            <wire x2="1216" y1="1648" y2="1648" x1="1200" />
        </branch>
        <bustap x2="1200" y1="1936" y2="1936" x1="1104" />
        <branch name="I1(4)">
            <wire x2="1216" y1="1936" y2="1936" x1="1200" />
        </branch>
        <instance x="1616" y="720" name="XLXI_12" orien="R0" />
        <instance x="1616" y="1040" name="XLXI_13" orien="R0" />
        <instance x="1616" y="1328" name="XLXI_14" orien="R0" />
        <instance x="1632" y="1648" name="XLXI_15" orien="R0" />
        <instance x="1632" y="1920" name="XLXI_16" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="1536" y1="560" y2="560" x1="1472" />
            <wire x2="1536" y1="560" y2="592" x1="1536" />
            <wire x2="1616" y1="592" y2="592" x1="1536" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1536" y1="720" y2="720" x1="1472" />
            <wire x2="1536" y1="656" y2="720" x1="1536" />
            <wire x2="1616" y1="656" y2="656" x1="1536" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1536" y1="896" y2="896" x1="1472" />
            <wire x2="1536" y1="896" y2="912" x1="1536" />
            <wire x2="1616" y1="912" y2="912" x1="1536" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1536" y1="1024" y2="1024" x1="1472" />
            <wire x2="1536" y1="976" y2="1024" x1="1536" />
            <wire x2="1616" y1="976" y2="976" x1="1536" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1536" y1="1184" y2="1184" x1="1472" />
            <wire x2="1536" y1="1184" y2="1200" x1="1536" />
            <wire x2="1616" y1="1200" y2="1200" x1="1536" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1536" y1="1312" y2="1312" x1="1472" />
            <wire x2="1536" y1="1264" y2="1312" x1="1536" />
            <wire x2="1616" y1="1264" y2="1264" x1="1536" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1552" y1="1488" y2="1488" x1="1472" />
            <wire x2="1552" y1="1488" y2="1520" x1="1552" />
            <wire x2="1632" y1="1520" y2="1520" x1="1552" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1488" y1="1616" y2="1616" x1="1472" />
            <wire x2="1632" y1="1584" y2="1584" x1="1488" />
            <wire x2="1488" y1="1584" y2="1616" x1="1488" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1552" y1="1776" y2="1776" x1="1472" />
            <wire x2="1552" y1="1776" y2="1792" x1="1552" />
            <wire x2="1632" y1="1792" y2="1792" x1="1552" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1552" y1="1904" y2="1904" x1="1472" />
            <wire x2="1552" y1="1856" y2="1904" x1="1552" />
            <wire x2="1632" y1="1856" y2="1856" x1="1552" />
        </branch>
        <branch name="o(4:0)">
            <wire x2="2080" y1="480" y2="624" x1="2080" />
            <wire x2="2080" y1="624" y2="944" x1="2080" />
            <wire x2="2080" y1="944" y2="1232" x1="2080" />
            <wire x2="2176" y1="1232" y2="1232" x1="2080" />
            <wire x2="2080" y1="1232" y2="1552" x1="2080" />
            <wire x2="2080" y1="1552" y2="1824" x1="2080" />
            <wire x2="2080" y1="1824" y2="1920" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1232" name="o(4:0)" orien="R0" />
        <bustap x2="1984" y1="624" y2="624" x1="2080" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1932" y="624" type="branch" />
            <wire x2="1936" y1="624" y2="624" x1="1872" />
            <wire x2="1984" y1="624" y2="624" x1="1936" />
        </branch>
        <bustap x2="1984" y1="944" y2="944" x1="2080" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1943" y="944" type="branch" />
            <wire x2="1936" y1="944" y2="944" x1="1872" />
            <wire x2="1984" y1="944" y2="944" x1="1936" />
        </branch>
        <bustap x2="1984" y1="1232" y2="1232" x1="2080" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1924" y="1232" type="branch" />
            <wire x2="1920" y1="1232" y2="1232" x1="1872" />
            <wire x2="1984" y1="1232" y2="1232" x1="1920" />
        </branch>
        <bustap x2="1984" y1="1552" y2="1552" x1="2080" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1937" y="1552" type="branch" />
            <wire x2="1936" y1="1552" y2="1552" x1="1888" />
            <wire x2="1984" y1="1552" y2="1552" x1="1936" />
        </branch>
        <bustap x2="1984" y1="1824" y2="1824" x1="2080" />
        <branch name="o(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1927" y="1824" type="branch" />
            <wire x2="1920" y1="1824" y2="1824" x1="1888" />
            <wire x2="1984" y1="1824" y2="1824" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="704" y="336" name="s" orien="R270" />
    </sheet>
</drawing>