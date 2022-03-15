<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67(1:0)" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69(1:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71(2:0)" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="XLXN_91" />
        <signal name="inst_in(25)" />
        <signal name="INT" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_114" />
        <signal name="MIO_ready" />
        <signal name="XLXN_119" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="INT" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <blockdef name="SCPU_ctrl_INT">
            <timestamp>2020-8-13T6:58:46</timestamp>
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="0" y1="-496" y2="-496" x1="64" />
            <rect width="336" x="64" y="-640" height="640" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Data_path">
            <timestamp>2020-8-13T7:11:49</timestamp>
            <rect width="352" x="64" y="-840" height="836" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-464" y2="-464" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
        </blockdef>
        <block symbolname="SCPU_ctrl_INT" name="Controler">
            <blockpin signalname="XLXN_65" name="RegDst" />
            <blockpin signalname="XLXN_66" name="ALUSrc_B" />
            <blockpin signalname="XLXN_67(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_68" name="Jal" />
            <blockpin signalname="XLXN_114" name="eret" />
            <blockpin signalname="XLXN_70" name="RegWrite" />
            <blockpin signalname="XLXN_69(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_71(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="inst_in(25)" name="int_code" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_119" name="zero" />
        </block>
        <block symbolname="Data_path" name="Datapath_unit">
            <blockpin signalname="XLXN_114" name="eret" />
            <blockpin signalname="XLXN_71(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="XLXN_70" name="RegWrite" />
            <blockpin signalname="XLXN_69(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_68" name="Jal" />
            <blockpin signalname="XLXN_67(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_66" name="ALUSrc_B" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_65" name="RegDst" />
            <blockpin signalname="INT" name="INT" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_119" name="zero" />
            <blockpin name="overflow" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="1232" y="784" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1376" y="912" name="Data_in(31:0)" orien="R180" />
        <bustap x2="1152" y1="976" y2="976" x1="1056" />
        <iomarker fontsize="28" x="912" y="976" name="inst_in(31:0)" orien="R180" />
        <bustap x2="1104" y1="1152" y2="1152" x1="1008" />
        <bustap x2="1104" y1="1248" y2="1248" x1="1008" />
        <branch name="inst_in(31:0)">
            <wire x2="1008" y1="976" y2="976" x1="912" />
            <wire x2="1056" y1="976" y2="976" x1="1008" />
            <wire x2="1008" y1="976" y2="1152" x1="1008" />
            <wire x2="1008" y1="1152" y2="1248" x1="1008" />
            <wire x2="1008" y1="1248" y2="1376" x1="1008" />
        </branch>
        <bustap x2="1104" y1="1376" y2="1376" x1="1008" />
        <iomarker fontsize="28" x="1248" y="720" name="INT" orien="R180" />
        <iomarker fontsize="28" x="1264" y="848" name="reset" orien="R180" />
        <branch name="Data_out(31:0)">
            <wire x2="2976" y1="1168" y2="1168" x1="2768" />
            <wire x2="2992" y1="1168" y2="1168" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="2992" y="912" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1056" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1168" name="Data_out(31:0)" orien="R0" />
        <branch name="inst_in(25)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1376" type="branch" />
            <wire x2="1344" y1="1376" y2="1376" x1="1104" />
            <wire x2="1472" y1="1376" y2="1376" x1="1344" />
        </branch>
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1248" type="branch" />
            <wire x2="1344" y1="1248" y2="1248" x1="1104" />
            <wire x2="1472" y1="1248" y2="1248" x1="1344" />
        </branch>
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1152" type="branch" />
            <wire x2="1344" y1="1152" y2="1152" x1="1104" />
            <wire x2="1472" y1="1152" y2="1152" x1="1344" />
        </branch>
        <instance x="1472" y="1648" name="Controler" orien="R0">
            <attrtext style="fontsize:40;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="96" y="-592" type="instance" />
        </instance>
        <branch name="MIO_ready">
            <wire x2="1472" y1="1568" y2="1568" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="1568" name="MIO_ready" orien="R180" />
        <branch name="XLXN_119">
            <wire x2="1472" y1="1616" y2="1616" x1="1456" />
            <wire x2="1456" y1="1616" y2="1696" x1="1456" />
            <wire x2="2848" y1="1696" y2="1696" x1="1456" />
            <wire x2="2848" y1="1296" y2="1296" x1="2768" />
            <wire x2="2848" y1="1296" y2="1696" x1="2848" />
        </branch>
        <branch name="mem_w">
            <wire x2="2992" y1="1552" y2="1552" x1="1936" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="2992" y1="1616" y2="1616" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1552" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1616" name="CPU_MIO" orien="R0" />
        <branch name="XLXN_71(2:0)">
            <wire x2="1952" y1="1424" y2="1424" x1="1936" />
            <wire x2="2288" y1="1424" y2="1424" x1="1952" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1952" y1="1360" y2="1360" x1="1936" />
            <wire x2="2288" y1="1360" y2="1360" x1="1952" />
        </branch>
        <branch name="XLXN_69(1:0)">
            <wire x2="1952" y1="1296" y2="1296" x1="1936" />
            <wire x2="2288" y1="1296" y2="1296" x1="1952" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1952" y1="1232" y2="1232" x1="1936" />
            <wire x2="2288" y1="1232" y2="1232" x1="1952" />
        </branch>
        <branch name="XLXN_67(1:0)">
            <wire x2="1952" y1="1168" y2="1168" x1="1936" />
            <wire x2="2288" y1="1168" y2="1168" x1="1952" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1952" y1="1104" y2="1104" x1="1936" />
            <wire x2="2288" y1="1104" y2="1104" x1="1952" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1952" y1="1040" y2="1040" x1="1936" />
            <wire x2="2288" y1="1040" y2="1040" x1="1952" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1392" y1="912" y2="912" x1="1376" />
            <wire x2="2288" y1="912" y2="912" x1="1392" />
        </branch>
        <branch name="reset">
            <wire x2="1280" y1="848" y2="848" x1="1264" />
            <wire x2="2288" y1="848" y2="848" x1="1280" />
        </branch>
        <branch name="clk">
            <wire x2="1248" y1="784" y2="784" x1="1232" />
            <wire x2="2288" y1="784" y2="784" x1="1248" />
        </branch>
        <branch name="INT">
            <wire x2="1264" y1="720" y2="720" x1="1248" />
            <wire x2="2288" y1="720" y2="720" x1="1264" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2976" y1="1056" y2="1056" x1="2768" />
            <wire x2="2992" y1="1056" y2="1056" x1="2976" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2976" y1="912" y2="912" x1="2768" />
            <wire x2="2992" y1="912" y2="912" x1="2976" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="1952" y1="1488" y2="1488" x1="1936" />
            <wire x2="2288" y1="1488" y2="1488" x1="1952" />
        </branch>
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="976" type="branch" />
            <wire x2="2128" y1="976" y2="976" x1="1152" />
            <wire x2="2288" y1="976" y2="976" x1="2128" />
        </branch>
        <instance x="2288" y="1520" name="Datapath_unit" orien="R0">
            <attrtext style="fontsize:36;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="176" y="-36" type="instance" />
        </instance>
    </sheet>
</drawing>