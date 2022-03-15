<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_25" />
        <signal name="I0(4:0)" />
        <signal name="I0(0)" />
        <signal name="I0(1)" />
        <signal name="I0(2)" />
        <signal name="I0(3)" />
        <signal name="I0(4)" />
        <signal name="XLXN_36" />
        <signal name="I1(4:0)" />
        <signal name="I1(0)" />
        <signal name="I1(1)" />
        <signal name="I1(2)" />
        <signal name="I1(3)" />
        <signal name="I1(4)" />
        <signal name="I2(4:0)" />
        <signal name="I2(0)" />
        <signal name="XLXN_49" />
        <signal name="I2(1)" />
        <signal name="I2(2)" />
        <signal name="I2(3)" />
        <signal name="I2(4)" />
        <signal name="XLXN_57" />
        <signal name="I3(4:0)" />
        <signal name="I3(0)" />
        <signal name="I3(1)" />
        <signal name="I3(2)" />
        <signal name="I3(3)" />
        <signal name="I3(4)" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="o(4:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="o(4)" />
        <signal name="s(1:0)" />
        <port polarity="Input" name="I0(4:0)" />
        <port polarity="Input" name="I1(4:0)" />
        <port polarity="Input" name="I2(4:0)" />
        <port polarity="Input" name="I3(4:0)" />
        <port polarity="Output" name="o(4:0)" />
        <port polarity="Input" name="s(1:0)" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_28">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_31">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_33">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_35">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_37">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_38">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_41">
            <blockpin signalname="I0(4)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_88" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="I1(4)" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="I2(4)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_44">
            <blockpin signalname="I3(4)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_50">
            <blockpin signalname="XLXN_69" name="I0" />
            <blockpin signalname="XLXN_68" name="I1" />
            <blockpin signalname="XLXN_67" name="I2" />
            <blockpin signalname="XLXN_66" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_51">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="XLXN_72" name="I1" />
            <blockpin signalname="XLXN_71" name="I2" />
            <blockpin signalname="XLXN_70" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_52">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_82" name="I1" />
            <blockpin signalname="XLXN_81" name="I2" />
            <blockpin signalname="XLXN_80" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_53">
            <blockpin signalname="XLXN_87" name="I0" />
            <blockpin signalname="XLXN_86" name="I1" />
            <blockpin signalname="XLXN_85" name="I2" />
            <blockpin signalname="XLXN_84" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_54">
            <blockpin signalname="XLXN_91" name="I0" />
            <blockpin signalname="XLXN_90" name="I1" />
            <blockpin signalname="XLXN_89" name="I2" />
            <blockpin signalname="XLXN_88" name="I3" />
            <blockpin signalname="o(4)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="528" y="512" type="branch" />
            <wire x2="304" y1="320" y2="512" x1="304" />
            <wire x2="528" y1="512" y2="512" x1="304" />
            <wire x2="560" y1="512" y2="512" x1="528" />
            <wire x2="560" y1="512" y2="576" x1="560" />
            <wire x2="1120" y1="576" y2="576" x1="560" />
            <wire x2="560" y1="576" y2="832" x1="560" />
            <wire x2="1120" y1="832" y2="832" x1="560" />
            <wire x2="640" y1="512" y2="512" x1="560" />
        </branch>
        <instance x="640" y="416" name="XLXI_1" orien="R0" />
        <instance x="640" y="544" name="XLXI_2" orien="R0" />
        <instance x="1120" y="512" name="XLXI_3" orien="R0" />
        <instance x="1120" y="640" name="XLXI_4" orien="R0" />
        <instance x="1120" y="768" name="XLXI_5" orien="R0" />
        <instance x="1120" y="896" name="XLXI_6" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="880" y1="384" y2="384" x1="864" />
            <wire x2="1120" y1="384" y2="384" x1="880" />
            <wire x2="880" y1="368" y2="384" x1="880" />
            <wire x2="1072" y1="368" y2="368" x1="880" />
            <wire x2="1072" y1="368" y2="512" x1="1072" />
            <wire x2="1120" y1="512" y2="512" x1="1072" />
        </branch>
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="548" y="384" type="branch" />
            <wire x2="496" y1="320" y2="352" x1="496" />
            <wire x2="496" y1="352" y2="384" x1="496" />
            <wire x2="544" y1="384" y2="384" x1="496" />
            <wire x2="624" y1="384" y2="384" x1="544" />
            <wire x2="640" y1="384" y2="384" x1="624" />
            <wire x2="624" y1="384" y2="640" x1="624" />
            <wire x2="1120" y1="640" y2="640" x1="624" />
            <wire x2="624" y1="640" y2="768" x1="624" />
            <wire x2="1120" y1="768" y2="768" x1="624" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="992" y1="512" y2="512" x1="864" />
            <wire x2="992" y1="512" y2="704" x1="992" />
            <wire x2="1120" y1="704" y2="704" x1="992" />
            <wire x2="992" y1="448" y2="512" x1="992" />
            <wire x2="1120" y1="448" y2="448" x1="992" />
        </branch>
        <instance x="1792" y="208" name="XLXI_25" orien="R0" />
        <instance x="1792" y="336" name="XLXI_26" orien="R0" />
        <instance x="1792" y="464" name="XLXI_27" orien="R0" />
        <instance x="1792" y="592" name="XLXI_28" orien="R0" />
        <instance x="1792" y="752" name="XLXI_29" orien="R0" />
        <instance x="1792" y="864" name="XLXI_30" orien="R0" />
        <instance x="1776" y="1088" name="XLXI_32" orien="R0" />
        <instance x="1776" y="1232" name="XLXI_33" orien="R0" />
        <instance x="1776" y="1360" name="XLXI_34" orien="R0" />
        <instance x="1776" y="1488" name="XLXI_35" orien="R0" />
        <instance x="1776" y="1616" name="XLXI_36" orien="R0" />
        <instance x="1760" y="1808" name="XLXI_37" orien="R0" />
        <instance x="1760" y="1936" name="XLXI_38" orien="R0" />
        <instance x="1760" y="2064" name="XLXI_39" orien="R0" />
        <instance x="1760" y="2192" name="XLXI_40" orien="R0" />
        <instance x="1760" y="2336" name="XLXI_41" orien="R0" />
        <instance x="1760" y="2448" name="XLXI_42" orien="R0" />
        <instance x="1760" y="2560" name="XLXI_43" orien="R0" />
        <instance x="1760" y="2672" name="XLXI_44" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1568" y1="416" y2="416" x1="1376" />
            <wire x2="1568" y1="416" y2="624" x1="1568" />
            <wire x2="1792" y1="624" y2="624" x1="1568" />
            <wire x2="1568" y1="624" y2="1104" x1="1568" />
            <wire x2="1776" y1="1104" y2="1104" x1="1568" />
            <wire x2="1568" y1="1104" y2="1680" x1="1568" />
            <wire x2="1760" y1="1680" y2="1680" x1="1568" />
            <wire x2="1568" y1="1680" y2="2208" x1="1568" />
            <wire x2="1760" y1="2208" y2="2208" x1="1568" />
            <wire x2="1792" y1="80" y2="80" x1="1568" />
            <wire x2="1568" y1="80" y2="416" x1="1568" />
        </branch>
        <branch name="I0(4:0)">
            <wire x2="400" y1="1072" y2="1072" x1="288" />
            <wire x2="400" y1="1072" y2="1120" x1="400" />
            <wire x2="400" y1="1120" y2="1168" x1="400" />
            <wire x2="400" y1="1168" y2="1184" x1="400" />
            <wire x2="400" y1="960" y2="992" x1="400" />
            <wire x2="400" y1="992" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="1072" x1="400" />
        </branch>
        <iomarker fontsize="28" x="288" y="1072" name="I0(4:0)" orien="R180" />
        <bustap x2="496" y1="992" y2="992" x1="400" />
        <bustap x2="496" y1="1024" y2="1024" x1="400" />
        <bustap x2="496" y1="1072" y2="1072" x1="400" />
        <bustap x2="496" y1="1120" y2="1120" x1="400" />
        <bustap x2="496" y1="1168" y2="1168" x1="400" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="709" y="992" type="branch" />
            <wire x2="704" y1="992" y2="992" x1="496" />
            <wire x2="1104" y1="992" y2="992" x1="704" />
            <wire x2="1104" y1="144" y2="992" x1="1104" />
            <wire x2="1792" y1="144" y2="144" x1="1104" />
        </branch>
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="823" y="1024" type="branch" />
            <wire x2="816" y1="1024" y2="1024" x1="496" />
            <wire x2="1424" y1="1024" y2="1024" x1="816" />
            <wire x2="1424" y1="688" y2="1024" x1="1424" />
            <wire x2="1792" y1="688" y2="688" x1="1424" />
        </branch>
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="761" y="1072" type="branch" />
            <wire x2="768" y1="1072" y2="1072" x1="496" />
            <wire x2="1136" y1="1072" y2="1072" x1="768" />
            <wire x2="1136" y1="1072" y2="1168" x1="1136" />
            <wire x2="1776" y1="1168" y2="1168" x1="1136" />
        </branch>
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="730" y="1120" type="branch" />
            <wire x2="736" y1="1120" y2="1120" x1="496" />
            <wire x2="1120" y1="1120" y2="1120" x1="736" />
            <wire x2="1120" y1="1120" y2="1744" x1="1120" />
            <wire x2="1760" y1="1744" y2="1744" x1="1120" />
        </branch>
        <branch name="I0(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="766" y="1168" type="branch" />
            <wire x2="768" y1="1168" y2="1168" x1="496" />
            <wire x2="1104" y1="1168" y2="1168" x1="768" />
            <wire x2="1104" y1="1168" y2="2272" x1="1104" />
            <wire x2="1760" y1="2272" y2="2272" x1="1104" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1552" y1="544" y2="544" x1="1376" />
            <wire x2="1552" y1="544" y2="736" x1="1552" />
            <wire x2="1792" y1="736" y2="736" x1="1552" />
            <wire x2="1552" y1="736" y2="1232" x1="1552" />
            <wire x2="1552" y1="1232" y2="1808" x1="1552" />
            <wire x2="1760" y1="1808" y2="1808" x1="1552" />
            <wire x2="1552" y1="1808" y2="2320" x1="1552" />
            <wire x2="1760" y1="2320" y2="2320" x1="1552" />
            <wire x2="1776" y1="1232" y2="1232" x1="1552" />
            <wire x2="1792" y1="208" y2="208" x1="1552" />
            <wire x2="1552" y1="208" y2="544" x1="1552" />
        </branch>
        <branch name="I1(4:0)">
            <wire x2="480" y1="1312" y2="1312" x1="384" />
            <wire x2="480" y1="1312" y2="1360" x1="480" />
            <wire x2="480" y1="1360" y2="1408" x1="480" />
            <wire x2="480" y1="1408" y2="1440" x1="480" />
            <wire x2="480" y1="1200" y2="1216" x1="480" />
            <wire x2="480" y1="1216" y2="1264" x1="480" />
            <wire x2="480" y1="1264" y2="1312" x1="480" />
        </branch>
        <iomarker fontsize="28" x="384" y="1312" name="I1(4:0)" orien="R180" />
        <bustap x2="576" y1="1216" y2="1216" x1="480" />
        <bustap x2="576" y1="1264" y2="1264" x1="480" />
        <bustap x2="576" y1="1312" y2="1312" x1="480" />
        <bustap x2="576" y1="1360" y2="1360" x1="480" />
        <bustap x2="576" y1="1408" y2="1408" x1="480" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1216" type="branch" />
            <wire x2="800" y1="1216" y2="1216" x1="576" />
            <wire x2="1088" y1="1216" y2="1216" x1="800" />
            <wire x2="1088" y1="272" y2="1216" x1="1088" />
            <wire x2="1792" y1="272" y2="272" x1="1088" />
        </branch>
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1264" type="branch" />
            <wire x2="800" y1="1264" y2="1264" x1="576" />
            <wire x2="1648" y1="1264" y2="1264" x1="800" />
            <wire x2="1648" y1="800" y2="1264" x1="1648" />
            <wire x2="1792" y1="800" y2="800" x1="1648" />
        </branch>
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="801" y="1312" type="branch" />
            <wire x2="800" y1="1312" y2="1312" x1="576" />
            <wire x2="1168" y1="1312" y2="1312" x1="800" />
            <wire x2="1168" y1="1296" y2="1312" x1="1168" />
            <wire x2="1776" y1="1296" y2="1296" x1="1168" />
        </branch>
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1360" type="branch" />
            <wire x2="784" y1="1360" y2="1360" x1="576" />
            <wire x2="1088" y1="1360" y2="1360" x1="784" />
            <wire x2="1088" y1="1360" y2="1872" x1="1088" />
            <wire x2="1760" y1="1872" y2="1872" x1="1088" />
        </branch>
        <branch name="I1(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1408" type="branch" />
            <wire x2="752" y1="1408" y2="1408" x1="576" />
            <wire x2="1072" y1="1408" y2="1408" x1="752" />
            <wire x2="1072" y1="1408" y2="2384" x1="1072" />
            <wire x2="1760" y1="2384" y2="2384" x1="1072" />
        </branch>
        <branch name="I2(4:0)">
            <wire x2="560" y1="1600" y2="1600" x1="480" />
            <wire x2="560" y1="1600" y2="1648" x1="560" />
            <wire x2="560" y1="1648" y2="1696" x1="560" />
            <wire x2="560" y1="1696" y2="1744" x1="560" />
            <wire x2="560" y1="1472" y2="1504" x1="560" />
            <wire x2="560" y1="1504" y2="1552" x1="560" />
            <wire x2="560" y1="1552" y2="1600" x1="560" />
        </branch>
        <iomarker fontsize="28" x="480" y="1600" name="I2(4:0)" orien="R180" />
        <bustap x2="656" y1="1504" y2="1504" x1="560" />
        <bustap x2="656" y1="1552" y2="1552" x1="560" />
        <bustap x2="656" y1="1600" y2="1600" x1="560" />
        <bustap x2="656" y1="1648" y2="1648" x1="560" />
        <bustap x2="656" y1="1696" y2="1696" x1="560" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1629" y="400" type="branch" />
            <wire x2="1456" y1="1504" y2="1504" x1="656" />
            <wire x2="1456" y1="400" y2="1504" x1="1456" />
            <wire x2="1632" y1="400" y2="400" x1="1456" />
            <wire x2="1792" y1="400" y2="400" x1="1632" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1536" y1="672" y2="672" x1="1376" />
            <wire x2="1536" y1="672" y2="848" x1="1536" />
            <wire x2="1536" y1="848" y2="864" x1="1536" />
            <wire x2="1536" y1="864" y2="1360" x1="1536" />
            <wire x2="1776" y1="1360" y2="1360" x1="1536" />
            <wire x2="1536" y1="1360" y2="1936" x1="1536" />
            <wire x2="1760" y1="1936" y2="1936" x1="1536" />
            <wire x2="1536" y1="1936" y2="2432" x1="1536" />
            <wire x2="1760" y1="2432" y2="2432" x1="1536" />
            <wire x2="1792" y1="848" y2="848" x1="1536" />
            <wire x2="1792" y1="336" y2="336" x1="1536" />
            <wire x2="1536" y1="336" y2="672" x1="1536" />
        </branch>
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1645" y="1424" type="branch" />
            <wire x2="1200" y1="1600" y2="1600" x1="656" />
            <wire x2="1200" y1="1424" y2="1600" x1="1200" />
            <wire x2="1648" y1="1424" y2="1424" x1="1200" />
            <wire x2="1776" y1="1424" y2="1424" x1="1648" />
        </branch>
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1626" y="2000" type="branch" />
            <wire x2="1200" y1="1648" y2="1648" x1="656" />
            <wire x2="1200" y1="1648" y2="2000" x1="1200" />
            <wire x2="1632" y1="2000" y2="2000" x1="1200" />
            <wire x2="1760" y1="2000" y2="2000" x1="1632" />
        </branch>
        <branch name="I2(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1594" y="2496" type="branch" />
            <wire x2="1184" y1="1696" y2="1696" x1="656" />
            <wire x2="1184" y1="1696" y2="2496" x1="1184" />
            <wire x2="1600" y1="2496" y2="2496" x1="1184" />
            <wire x2="1760" y1="2496" y2="2496" x1="1600" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1520" y1="800" y2="800" x1="1376" />
            <wire x2="1520" y1="800" y2="960" x1="1520" />
            <wire x2="1776" y1="960" y2="960" x1="1520" />
            <wire x2="1520" y1="960" y2="1488" x1="1520" />
            <wire x2="1520" y1="1488" y2="1680" x1="1520" />
            <wire x2="1520" y1="1680" y2="2064" x1="1520" />
            <wire x2="1760" y1="2064" y2="2064" x1="1520" />
            <wire x2="1520" y1="2064" y2="2544" x1="1520" />
            <wire x2="1760" y1="2544" y2="2544" x1="1520" />
            <wire x2="1776" y1="1488" y2="1488" x1="1520" />
            <wire x2="1792" y1="464" y2="464" x1="1520" />
            <wire x2="1520" y1="464" y2="800" x1="1520" />
        </branch>
        <branch name="I3(4:0)">
            <wire x2="640" y1="1888" y2="1888" x1="560" />
            <wire x2="640" y1="1888" y2="1920" x1="640" />
            <wire x2="640" y1="1920" y2="1968" x1="640" />
            <wire x2="640" y1="1968" y2="2016" x1="640" />
            <wire x2="640" y1="1760" y2="1776" x1="640" />
            <wire x2="640" y1="1776" y2="1824" x1="640" />
            <wire x2="640" y1="1824" y2="1872" x1="640" />
            <wire x2="640" y1="1872" y2="1888" x1="640" />
        </branch>
        <iomarker fontsize="28" x="560" y="1888" name="I3(4:0)" orien="R180" />
        <bustap x2="736" y1="1776" y2="1776" x1="640" />
        <bustap x2="736" y1="1824" y2="1824" x1="640" />
        <bustap x2="736" y1="1872" y2="1872" x1="640" />
        <bustap x2="736" y1="1920" y2="1920" x1="640" />
        <bustap x2="736" y1="1968" y2="1968" x1="640" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1690" y="528" type="branch" />
            <wire x2="1440" y1="1776" y2="1776" x1="736" />
            <wire x2="1440" y1="528" y2="1776" x1="1440" />
            <wire x2="1696" y1="528" y2="528" x1="1440" />
            <wire x2="1792" y1="528" y2="528" x1="1696" />
        </branch>
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1688" y="1024" type="branch" />
            <wire x2="1504" y1="1824" y2="1824" x1="736" />
            <wire x2="1504" y1="1024" y2="1824" x1="1504" />
            <wire x2="1696" y1="1024" y2="1024" x1="1504" />
            <wire x2="1776" y1="1024" y2="1024" x1="1696" />
        </branch>
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1706" y="1552" type="branch" />
            <wire x2="800" y1="1872" y2="1872" x1="736" />
            <wire x2="800" y1="1808" y2="1872" x1="800" />
            <wire x2="1280" y1="1808" y2="1808" x1="800" />
            <wire x2="1280" y1="1552" y2="1808" x1="1280" />
            <wire x2="1712" y1="1552" y2="1552" x1="1280" />
            <wire x2="1776" y1="1552" y2="1552" x1="1712" />
        </branch>
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1670" y="2128" type="branch" />
            <wire x2="1168" y1="1920" y2="1920" x1="736" />
            <wire x2="1168" y1="1920" y2="2128" x1="1168" />
            <wire x2="1664" y1="2128" y2="2128" x1="1168" />
            <wire x2="1760" y1="2128" y2="2128" x1="1664" />
        </branch>
        <branch name="I3(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1620" y="2608" type="branch" />
            <wire x2="1248" y1="1968" y2="1968" x1="736" />
            <wire x2="1248" y1="1968" y2="2608" x1="1248" />
            <wire x2="1616" y1="2608" y2="2608" x1="1248" />
            <wire x2="1760" y1="2608" y2="2608" x1="1616" />
        </branch>
        <instance x="2256" y="464" name="XLXI_50" orien="R0" />
        <instance x="2272" y="1008" name="XLXI_51" orien="R0" />
        <instance x="2256" y="1520" name="XLXI_52" orien="R0" />
        <instance x="2272" y="2064" name="XLXI_53" orien="R0" />
        <instance x="2288" y="2560" name="XLXI_54" orien="R0" />
        <branch name="XLXN_66">
            <wire x2="2256" y1="112" y2="112" x1="2048" />
            <wire x2="2256" y1="112" y2="208" x1="2256" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2144" y1="240" y2="240" x1="2048" />
            <wire x2="2144" y1="240" y2="272" x1="2144" />
            <wire x2="2256" y1="272" y2="272" x1="2144" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2144" y1="368" y2="368" x1="2048" />
            <wire x2="2144" y1="336" y2="368" x1="2144" />
            <wire x2="2256" y1="336" y2="336" x1="2144" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2256" y1="496" y2="496" x1="2048" />
            <wire x2="2256" y1="400" y2="496" x1="2256" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2272" y1="656" y2="656" x1="2048" />
            <wire x2="2272" y1="656" y2="752" x1="2272" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2160" y1="768" y2="768" x1="2048" />
            <wire x2="2160" y1="768" y2="816" x1="2160" />
            <wire x2="2272" y1="816" y2="816" x1="2160" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="2256" y1="880" y2="880" x1="2048" />
            <wire x2="2272" y1="880" y2="880" x1="2256" />
        </branch>
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="912" type="branch" />
            <wire x2="1216" y1="1552" y2="1552" x1="656" />
            <wire x2="1216" y1="912" y2="1552" x1="1216" />
            <wire x2="1600" y1="912" y2="912" x1="1216" />
            <wire x2="1792" y1="912" y2="912" x1="1600" />
        </branch>
        <instance x="1792" y="976" name="XLXI_31" orien="R0" />
        <branch name="XLXN_73">
            <wire x2="2272" y1="992" y2="992" x1="2032" />
            <wire x2="2272" y1="944" y2="960" x1="2272" />
            <wire x2="2272" y1="960" y2="992" x1="2272" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="2256" y1="1136" y2="1136" x1="2032" />
            <wire x2="2256" y1="1136" y2="1264" x1="2256" />
        </branch>
        <branch name="XLXN_81">
            <wire x2="2144" y1="1264" y2="1264" x1="2032" />
            <wire x2="2144" y1="1264" y2="1328" x1="2144" />
            <wire x2="2256" y1="1328" y2="1328" x1="2144" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2256" y1="1392" y2="1392" x1="2032" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2256" y1="1520" y2="1520" x1="2032" />
            <wire x2="2256" y1="1456" y2="1520" x1="2256" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="2272" y1="1712" y2="1712" x1="2016" />
            <wire x2="2272" y1="1712" y2="1808" x1="2272" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="2144" y1="1840" y2="1840" x1="2016" />
            <wire x2="2144" y1="1840" y2="1872" x1="2144" />
            <wire x2="2272" y1="1872" y2="1872" x1="2144" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="2144" y1="1968" y2="1968" x1="2016" />
            <wire x2="2144" y1="1936" y2="1968" x1="2144" />
            <wire x2="2272" y1="1936" y2="1936" x1="2144" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="2272" y1="2096" y2="2096" x1="2016" />
            <wire x2="2272" y1="2000" y2="2096" x1="2272" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="2288" y1="2240" y2="2240" x1="2016" />
            <wire x2="2288" y1="2240" y2="2304" x1="2288" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="2144" y1="2352" y2="2352" x1="2016" />
            <wire x2="2144" y1="2352" y2="2368" x1="2144" />
            <wire x2="2288" y1="2368" y2="2368" x1="2144" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="2144" y1="2464" y2="2464" x1="2016" />
            <wire x2="2144" y1="2432" y2="2464" x1="2144" />
            <wire x2="2288" y1="2432" y2="2432" x1="2144" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="2288" y1="2576" y2="2576" x1="2016" />
            <wire x2="2288" y1="2496" y2="2576" x1="2288" />
        </branch>
        <branch name="o(4:0)">
            <wire x2="2784" y1="224" y2="304" x1="2784" />
            <wire x2="2784" y1="304" y2="848" x1="2784" />
            <wire x2="2784" y1="848" y2="1360" x1="2784" />
            <wire x2="2896" y1="1360" y2="1360" x1="2784" />
            <wire x2="2784" y1="1360" y2="1904" x1="2784" />
            <wire x2="2784" y1="1904" y2="2400" x1="2784" />
            <wire x2="2784" y1="2400" y2="2448" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2896" y="1360" name="o(4:0)" orien="R0" />
        <bustap x2="2688" y1="304" y2="304" x1="2784" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2577" y="304" type="branch" />
            <wire x2="2576" y1="304" y2="304" x1="2512" />
            <wire x2="2688" y1="304" y2="304" x1="2576" />
        </branch>
        <bustap x2="2688" y1="848" y2="848" x1="2784" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2584" y="848" type="branch" />
            <wire x2="2592" y1="848" y2="848" x1="2528" />
            <wire x2="2688" y1="848" y2="848" x1="2592" />
        </branch>
        <bustap x2="2688" y1="1360" y2="1360" x1="2784" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2581" y="1360" type="branch" />
            <wire x2="2576" y1="1360" y2="1360" x1="2512" />
            <wire x2="2688" y1="1360" y2="1360" x1="2576" />
        </branch>
        <bustap x2="2688" y1="1904" y2="1904" x1="2784" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2596" y="1904" type="branch" />
            <wire x2="2592" y1="1904" y2="1904" x1="2528" />
            <wire x2="2688" y1="1904" y2="1904" x1="2592" />
        </branch>
        <bustap x2="2688" y1="2400" y2="2400" x1="2784" />
        <branch name="o(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2596" y="2400" type="branch" />
            <wire x2="2592" y1="2400" y2="2400" x1="2544" />
            <wire x2="2688" y1="2400" y2="2400" x1="2592" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="304" y1="224" y2="224" x1="240" />
            <wire x2="400" y1="224" y2="224" x1="304" />
            <wire x2="496" y1="224" y2="224" x1="400" />
            <wire x2="560" y1="224" y2="224" x1="496" />
            <wire x2="400" y1="176" y2="224" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="176" name="s(1:0)" orien="R270" />
        <bustap x2="304" y1="224" y2="320" x1="304" />
        <bustap x2="496" y1="224" y2="320" x1="496" />
    </sheet>
</drawing>