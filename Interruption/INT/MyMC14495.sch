<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="D0" />
        <signal name="XLXN_5" />
        <signal name="XLXN_16" />
        <signal name="XLXN_38" />
        <signal name="XLXN_55" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="LE" />
        <signal name="point" />
        <signal name="p" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and4" name="AD20">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and4" name="AD19">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="and4" name="AD18">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="and4" name="AD17">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and4" name="AD16">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="and4" name="AD12">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and4" name="AD9">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="and4" name="AD1">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="and4" name="AD0">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="and3" name="AD11">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="and3" name="AD10">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="and2" name="AD8">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="and3" name="AD7">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="and3" name="AD6">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="and3" name="AD5">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="and3" name="AD4">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="and3" name="AD3">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="and3" name="AD2">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="and3" name="AD15">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="and3" name="AD14">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="and3" name="AD13">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_38">
            <blockpin signalname="XLXN_76" name="I0" />
            <blockpin signalname="XLXN_75" name="I1" />
            <blockpin signalname="XLXN_74" name="I2" />
            <blockpin signalname="XLXN_73" name="I3" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_39">
            <blockpin signalname="XLXN_80" name="I0" />
            <blockpin signalname="XLXN_79" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="XLXN_77" name="I3" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_40">
            <blockpin signalname="XLXN_85" name="I0" />
            <blockpin signalname="XLXN_84" name="I1" />
            <blockpin signalname="XLXN_79" name="I2" />
            <blockpin signalname="XLXN_103" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_41">
            <blockpin signalname="XLXN_91" name="I0" />
            <blockpin signalname="XLXN_90" name="I1" />
            <blockpin signalname="XLXN_74" name="I2" />
            <blockpin signalname="XLXN_73" name="I3" />
            <blockpin signalname="XLXN_104" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_42">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="XLXN_93" name="I1" />
            <blockpin signalname="XLXN_92" name="I2" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_43">
            <blockpin signalname="XLXN_97" name="I0" />
            <blockpin signalname="XLXN_96" name="I1" />
            <blockpin signalname="XLXN_95" name="I2" />
            <blockpin signalname="XLXN_75" name="I3" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_44">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="XLXN_99" name="I1" />
            <blockpin signalname="XLXN_98" name="I2" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_101" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_102" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_103" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_48">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_104" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_105" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_50">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_107" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_51">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_106" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="D3">
            <wire x2="176" y1="80" y2="80" x1="128" />
            <wire x2="240" y1="80" y2="80" x1="176" />
            <wire x2="176" y1="80" y2="128" x1="176" />
            <wire x2="576" y1="128" y2="128" x1="176" />
            <wire x2="576" y1="128" y2="528" x1="576" />
            <wire x2="832" y1="528" y2="528" x1="576" />
            <wire x2="576" y1="528" y2="768" x1="576" />
            <wire x2="832" y1="768" y2="768" x1="576" />
            <wire x2="576" y1="768" y2="1552" x1="576" />
            <wire x2="832" y1="1552" y2="1552" x1="576" />
            <wire x2="576" y1="1552" y2="1792" x1="576" />
            <wire x2="832" y1="1792" y2="1792" x1="576" />
            <wire x2="576" y1="1792" y2="2288" x1="576" />
            <wire x2="832" y1="2288" y2="2288" x1="576" />
            <wire x2="576" y1="2288" y2="2768" x1="576" />
            <wire x2="832" y1="2768" y2="2768" x1="576" />
            <wire x2="576" y1="2768" y2="4944" x1="576" />
            <wire x2="832" y1="4944" y2="4944" x1="576" />
        </branch>
        <instance x="240" y="112" name="XLXI_1" orien="R0" />
        <instance x="832" y="304" name="AD20" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="544" name="AD19" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="784" name="AD18" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="1024" name="AD17" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <branch name="D2">
            <wire x2="176" y1="176" y2="176" x1="128" />
            <wire x2="240" y1="176" y2="176" x1="176" />
            <wire x2="176" y1="176" y2="224" x1="176" />
            <wire x2="560" y1="224" y2="224" x1="176" />
            <wire x2="560" y1="224" y2="352" x1="560" />
            <wire x2="832" y1="352" y2="352" x1="560" />
            <wire x2="560" y1="352" y2="592" x1="560" />
            <wire x2="832" y1="592" y2="592" x1="560" />
            <wire x2="560" y1="592" y2="1136" x1="560" />
            <wire x2="832" y1="1136" y2="1136" x1="560" />
            <wire x2="560" y1="1136" y2="1312" x1="560" />
            <wire x2="832" y1="1312" y2="1312" x1="560" />
            <wire x2="560" y1="1312" y2="1616" x1="560" />
            <wire x2="832" y1="1616" y2="1616" x1="560" />
            <wire x2="560" y1="1616" y2="2352" x1="560" />
            <wire x2="832" y1="2352" y2="2352" x1="560" />
            <wire x2="560" y1="2352" y2="2512" x1="560" />
            <wire x2="832" y1="2512" y2="2512" x1="560" />
            <wire x2="560" y1="2512" y2="3328" x1="560" />
            <wire x2="832" y1="3328" y2="3328" x1="560" />
            <wire x2="560" y1="3328" y2="4768" x1="560" />
            <wire x2="832" y1="4768" y2="4768" x1="560" />
            <wire x2="560" y1="4768" y2="5008" x1="560" />
            <wire x2="832" y1="5008" y2="5008" x1="560" />
        </branch>
        <instance x="240" y="208" name="XLXI_6" orien="R0" />
        <branch name="D1">
            <wire x2="176" y1="272" y2="272" x1="128" />
            <wire x2="240" y1="272" y2="272" x1="176" />
            <wire x2="176" y1="272" y2="320" x1="176" />
            <wire x2="544" y1="320" y2="320" x1="176" />
            <wire x2="544" y1="320" y2="896" x1="544" />
            <wire x2="832" y1="896" y2="896" x1="544" />
            <wire x2="544" y1="896" y2="1376" x1="544" />
            <wire x2="832" y1="1376" y2="1376" x1="544" />
            <wire x2="544" y1="1376" y2="1856" x1="544" />
            <wire x2="832" y1="1856" y2="1856" x1="544" />
            <wire x2="544" y1="1856" y2="2176" x1="544" />
            <wire x2="832" y1="2176" y2="2176" x1="544" />
            <wire x2="544" y1="2176" y2="2416" x1="544" />
            <wire x2="832" y1="2416" y2="2416" x1="544" />
            <wire x2="544" y1="2416" y2="2576" x1="544" />
            <wire x2="832" y1="2576" y2="2576" x1="544" />
            <wire x2="544" y1="2576" y2="2896" x1="544" />
            <wire x2="832" y1="2896" y2="2896" x1="544" />
            <wire x2="544" y1="2896" y2="4112" x1="544" />
            <wire x2="832" y1="4112" y2="4112" x1="544" />
            <wire x2="544" y1="4112" y2="4288" x1="544" />
            <wire x2="832" y1="4288" y2="4288" x1="544" />
            <wire x2="544" y1="4288" y2="4832" x1="544" />
            <wire x2="832" y1="4832" y2="4832" x1="544" />
        </branch>
        <instance x="240" y="304" name="XLXI_7" orien="R0" />
        <branch name="D0">
            <wire x2="176" y1="368" y2="368" x1="128" />
            <wire x2="240" y1="368" y2="368" x1="176" />
            <wire x2="176" y1="368" y2="416" x1="176" />
            <wire x2="592" y1="416" y2="416" x1="176" />
            <wire x2="592" y1="416" y2="720" x1="592" />
            <wire x2="832" y1="720" y2="720" x1="592" />
            <wire x2="592" y1="720" y2="960" x1="592" />
            <wire x2="832" y1="960" y2="960" x1="592" />
            <wire x2="592" y1="960" y2="1264" x1="592" />
            <wire x2="832" y1="1264" y2="1264" x1="592" />
            <wire x2="592" y1="1264" y2="1920" x1="592" />
            <wire x2="832" y1="1920" y2="1920" x1="592" />
            <wire x2="592" y1="1920" y2="2640" x1="592" />
            <wire x2="832" y1="2640" y2="2640" x1="592" />
            <wire x2="592" y1="2640" y2="3088" x1="592" />
            <wire x2="832" y1="3088" y2="3088" x1="592" />
            <wire x2="592" y1="3088" y2="3632" x1="592" />
            <wire x2="832" y1="3632" y2="3632" x1="592" />
            <wire x2="592" y1="3632" y2="3872" x1="592" />
            <wire x2="832" y1="3872" y2="3872" x1="592" />
            <wire x2="592" y1="3872" y2="4352" x1="592" />
            <wire x2="832" y1="4352" y2="4352" x1="592" />
            <wire x2="592" y1="4352" y2="4896" x1="592" />
            <wire x2="832" y1="4896" y2="4896" x1="592" />
            <wire x2="832" y1="240" y2="240" x1="592" />
            <wire x2="592" y1="240" y2="416" x1="592" />
        </branch>
        <instance x="240" y="400" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="128" y="80" name="D3" orien="R180" />
        <iomarker fontsize="28" x="128" y="176" name="D2" orien="R180" />
        <iomarker fontsize="28" x="128" y="272" name="D1" orien="R180" />
        <iomarker fontsize="28" x="128" y="368" name="D0" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="640" y1="80" y2="80" x1="464" />
            <wire x2="640" y1="80" y2="288" x1="640" />
            <wire x2="832" y1="288" y2="288" x1="640" />
            <wire x2="640" y1="288" y2="1072" x1="640" />
            <wire x2="832" y1="1072" y2="1072" x1="640" />
            <wire x2="640" y1="1072" y2="2048" x1="640" />
            <wire x2="832" y1="2048" y2="2048" x1="640" />
            <wire x2="640" y1="2048" y2="3024" x1="640" />
            <wire x2="832" y1="3024" y2="3024" x1="640" />
            <wire x2="640" y1="3024" y2="3264" x1="640" />
            <wire x2="832" y1="3264" y2="3264" x1="640" />
            <wire x2="640" y1="3264" y2="3744" x1="640" />
            <wire x2="832" y1="3744" y2="3744" x1="640" />
            <wire x2="640" y1="3744" y2="3984" x1="640" />
            <wire x2="832" y1="3984" y2="3984" x1="640" />
            <wire x2="640" y1="3984" y2="4224" x1="640" />
            <wire x2="832" y1="4224" y2="4224" x1="640" />
            <wire x2="640" y1="4224" y2="4464" x1="640" />
            <wire x2="832" y1="4464" y2="4464" x1="640" />
            <wire x2="640" y1="4464" y2="4704" x1="640" />
            <wire x2="832" y1="4704" y2="4704" x1="640" />
            <wire x2="640" y1="48" y2="80" x1="640" />
            <wire x2="832" y1="48" y2="48" x1="640" />
        </branch>
        <instance x="832" y="1328" name="AD16" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="2304" name="AD12" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="3024" name="AD9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="4960" name="AD1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <instance x="832" y="5200" name="AD0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-168" type="instance" />
        </instance>
        <branch name="XLXN_16">
            <wire x2="624" y1="176" y2="176" x1="464" />
            <wire x2="624" y1="176" y2="832" x1="624" />
            <wire x2="832" y1="832" y2="832" x1="624" />
            <wire x2="624" y1="832" y2="2112" x1="624" />
            <wire x2="832" y1="2112" y2="2112" x1="624" />
            <wire x2="624" y1="2112" y2="2832" x1="624" />
            <wire x2="832" y1="2832" y2="2832" x1="624" />
            <wire x2="624" y1="2832" y2="3504" x1="624" />
            <wire x2="832" y1="3504" y2="3504" x1="624" />
            <wire x2="624" y1="3504" y2="3808" x1="624" />
            <wire x2="832" y1="3808" y2="3808" x1="624" />
            <wire x2="624" y1="3808" y2="4048" x1="624" />
            <wire x2="832" y1="4048" y2="4048" x1="624" />
            <wire x2="624" y1="4048" y2="4528" x1="624" />
            <wire x2="832" y1="4528" y2="4528" x1="624" />
            <wire x2="624" y1="112" y2="176" x1="624" />
            <wire x2="832" y1="112" y2="112" x1="624" />
        </branch>
        <instance x="832" y="2480" name="AD11" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="2704" name="AD10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="3152" name="AD8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-104" type="instance" />
        </instance>
        <instance x="832" y="3456" name="AD7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="3696" name="AD6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="3936" name="AD5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="4176" name="AD4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="4416" name="AD3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="4656" name="AD2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="1504" name="AD15" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="1744" name="AD14" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <instance x="832" y="1984" name="AD13" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-136" type="instance" />
        </instance>
        <branch name="XLXN_38">
            <wire x2="656" y1="272" y2="272" x1="464" />
            <wire x2="656" y1="272" y2="416" x1="656" />
            <wire x2="832" y1="416" y2="416" x1="656" />
            <wire x2="656" y1="416" y2="656" x1="656" />
            <wire x2="832" y1="656" y2="656" x1="656" />
            <wire x2="656" y1="656" y2="1200" x1="656" />
            <wire x2="832" y1="1200" y2="1200" x1="656" />
            <wire x2="656" y1="1200" y2="3392" x1="656" />
            <wire x2="832" y1="3392" y2="3392" x1="656" />
            <wire x2="656" y1="3392" y2="3568" x1="656" />
            <wire x2="832" y1="3568" y2="3568" x1="656" />
            <wire x2="656" y1="3568" y2="4592" x1="656" />
            <wire x2="832" y1="4592" y2="4592" x1="656" />
            <wire x2="656" y1="4592" y2="5072" x1="656" />
            <wire x2="832" y1="5072" y2="5072" x1="656" />
            <wire x2="656" y1="176" y2="272" x1="656" />
            <wire x2="832" y1="176" y2="176" x1="656" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="608" y1="368" y2="368" x1="464" />
            <wire x2="608" y1="368" y2="480" x1="608" />
            <wire x2="832" y1="480" y2="480" x1="608" />
            <wire x2="608" y1="480" y2="1440" x1="608" />
            <wire x2="832" y1="1440" y2="1440" x1="608" />
            <wire x2="608" y1="1440" y2="1680" x1="608" />
            <wire x2="832" y1="1680" y2="1680" x1="608" />
            <wire x2="608" y1="1680" y2="2240" x1="608" />
            <wire x2="832" y1="2240" y2="2240" x1="608" />
            <wire x2="608" y1="2240" y2="2960" x1="608" />
            <wire x2="832" y1="2960" y2="2960" x1="608" />
            <wire x2="608" y1="2960" y2="5136" x1="608" />
            <wire x2="832" y1="5136" y2="5136" x1="608" />
        </branch>
        <instance x="1376" y="656" name="XLXI_38" orien="R0" />
        <instance x="1440" y="1648" name="XLXI_39" orien="R0" />
        <instance x="1440" y="3456" name="XLXI_42" orien="R0" />
        <instance x="1456" y="4048" name="XLXI_43" orien="R0" />
        <instance x="1440" y="4928" name="XLXI_44" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="1248" y1="384" y2="384" x1="1088" />
            <wire x2="1248" y1="384" y2="464" x1="1248" />
            <wire x2="1376" y1="464" y2="464" x1="1248" />
            <wire x2="1248" y1="464" y2="2592" x1="1248" />
            <wire x2="1440" y1="2592" y2="2592" x1="1248" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1232" y1="624" y2="624" x1="1088" />
            <wire x2="1232" y1="624" y2="3792" x1="1232" />
            <wire x2="1456" y1="3792" y2="3792" x1="1232" />
            <wire x2="1232" y1="528" y2="624" x1="1232" />
            <wire x2="1376" y1="528" y2="528" x1="1232" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="1376" y1="864" y2="864" x1="1088" />
            <wire x2="1376" y1="592" y2="864" x1="1376" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1440" y1="1168" y2="1168" x1="1088" />
            <wire x2="1440" y1="1168" y2="1392" x1="1440" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1264" y1="1376" y2="1376" x1="1088" />
            <wire x2="1264" y1="1376" y2="1456" x1="1264" />
            <wire x2="1440" y1="1456" y2="1456" x1="1264" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="1264" y1="1616" y2="1616" x1="1088" />
            <wire x2="1408" y1="1616" y2="1616" x1="1264" />
            <wire x2="1408" y1="1616" y2="2080" x1="1408" />
            <wire x2="1264" y1="1520" y2="1616" x1="1264" />
            <wire x2="1440" y1="1520" y2="1520" x1="1264" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="1440" y1="1856" y2="1856" x1="1088" />
            <wire x2="1440" y1="1584" y2="1856" x1="1440" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1408" y1="2144" y2="2144" x1="1088" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1408" y1="2352" y2="2352" x1="1088" />
            <wire x2="1408" y1="2208" y2="2352" x1="1408" />
        </branch>
        <instance x="1408" y="2272" name="XLXI_40" orien="R0" />
        <instance x="1440" y="2784" name="XLXI_41" orien="R0" />
        <branch name="XLXN_73">
            <wire x2="1280" y1="144" y2="144" x1="1088" />
            <wire x2="1376" y1="144" y2="144" x1="1280" />
            <wire x2="1376" y1="144" y2="400" x1="1376" />
            <wire x2="1280" y1="144" y2="2528" x1="1280" />
            <wire x2="1440" y1="2528" y2="2528" x1="1280" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="1216" y1="2576" y2="2576" x1="1088" />
            <wire x2="1216" y1="2576" y2="2656" x1="1216" />
            <wire x2="1440" y1="2656" y2="2656" x1="1216" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1440" y1="2864" y2="2864" x1="1088" />
            <wire x2="1440" y1="2720" y2="2864" x1="1440" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="1440" y1="3056" y2="3056" x1="1088" />
            <wire x2="1440" y1="3056" y2="3264" x1="1440" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="1440" y1="3328" y2="3328" x1="1088" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1440" y1="3568" y2="3568" x1="1088" />
            <wire x2="1440" y1="3392" y2="3568" x1="1440" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="1264" y1="3808" y2="3808" x1="1088" />
            <wire x2="1264" y1="3808" y2="3856" x1="1264" />
            <wire x2="1456" y1="3856" y2="3856" x1="1264" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1264" y1="4048" y2="4048" x1="1088" />
            <wire x2="1264" y1="3920" y2="4048" x1="1264" />
            <wire x2="1456" y1="3920" y2="3920" x1="1264" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="1456" y1="4288" y2="4288" x1="1088" />
            <wire x2="1456" y1="3984" y2="4288" x1="1456" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="1440" y1="4528" y2="4528" x1="1088" />
            <wire x2="1440" y1="4528" y2="4736" x1="1440" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="1440" y1="4800" y2="4800" x1="1088" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="1440" y1="5040" y2="5040" x1="1088" />
            <wire x2="1440" y1="4864" y2="5040" x1="1440" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="1872" y1="496" y2="496" x1="1632" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="1904" y1="1488" y2="1488" x1="1696" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="1904" y1="2144" y2="2144" x1="1664" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="1872" y1="2624" y2="2624" x1="1696" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="1872" y1="3328" y2="3328" x1="1696" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="1872" y1="4800" y2="4800" x1="1696" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="1872" y1="3888" y2="3888" x1="1712" />
        </branch>
        <instance x="1872" y="624" name="XLXI_45" orien="R0" />
        <instance x="1904" y="1616" name="XLXI_46" orien="R0" />
        <instance x="1904" y="2272" name="XLXI_47" orien="R0" />
        <instance x="1872" y="2752" name="XLXI_48" orien="R0" />
        <instance x="1872" y="3456" name="XLXI_49" orien="R0" />
        <instance x="1872" y="4016" name="XLXI_50" orien="R0" />
        <branch name="LE">
            <wire x2="1856" y1="5360" y2="5360" x1="240" />
            <wire x2="1872" y1="560" y2="560" x1="1856" />
            <wire x2="1856" y1="560" y2="1552" x1="1856" />
            <wire x2="1904" y1="1552" y2="1552" x1="1856" />
            <wire x2="1856" y1="1552" y2="2208" x1="1856" />
            <wire x2="1904" y1="2208" y2="2208" x1="1856" />
            <wire x2="1856" y1="2208" y2="2688" x1="1856" />
            <wire x2="1872" y1="2688" y2="2688" x1="1856" />
            <wire x2="1856" y1="2688" y2="3392" x1="1856" />
            <wire x2="1872" y1="3392" y2="3392" x1="1856" />
            <wire x2="1856" y1="3392" y2="3952" x1="1856" />
            <wire x2="1872" y1="3952" y2="3952" x1="1856" />
            <wire x2="1856" y1="3952" y2="4864" x1="1856" />
            <wire x2="1872" y1="4864" y2="4864" x1="1856" />
            <wire x2="1856" y1="4864" y2="5360" x1="1856" />
        </branch>
        <instance x="1872" y="4928" name="XLXI_51" orien="R0" />
        <branch name="point">
            <wire x2="784" y1="5280" y2="5280" x1="272" />
            <wire x2="800" y1="5280" y2="5280" x1="784" />
        </branch>
        <instance x="800" y="5312" name="XLXI_52" orien="R0" />
        <branch name="p">
            <wire x2="2160" y1="5280" y2="5280" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="2160" y="5280" name="p" orien="R0" />
        <branch name="a">
            <wire x2="2160" y1="528" y2="528" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="528" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2192" y1="1520" y2="1520" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1520" name="b" orien="R0" />
        <branch name="c">
            <wire x2="2192" y1="2176" y2="2176" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="2176" name="c" orien="R0" />
        <branch name="d">
            <wire x2="2160" y1="2656" y2="2656" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="2656" name="d" orien="R0" />
        <branch name="e">
            <wire x2="2160" y1="3360" y2="3360" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="3360" name="e" orien="R0" />
        <branch name="f">
            <wire x2="2160" y1="3920" y2="3920" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="3920" name="f" orien="R0" />
        <branch name="g">
            <wire x2="2160" y1="4832" y2="4832" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="4832" name="g" orien="R0" />
        <iomarker fontsize="28" x="240" y="5360" name="LE" orien="R180" />
        <iomarker fontsize="28" x="272" y="5280" name="point" orien="R180" />
    </sheet>
</drawing>