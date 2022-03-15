<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_9(5:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27(5:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_42(25:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="XLXN_47" />
        <signal name="XLXN_50" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67(1:0)" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69(1:0)" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71(2:0)" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="MIO_ready" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="XLXN_91" />
        <signal name="INT" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="INT" />
        <blockdef name="Data_path">
            <timestamp>2020-5-9T14:21:46</timestamp>
            <rect width="352" x="64" y="-704" height="704" />
            <rect width="64" x="416" y="-684" height="24" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <rect width="64" x="416" y="-524" height="24" />
            <line x2="480" y1="-512" y2="-512" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-192" y2="-192" x1="416" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
        </blockdef>
        <blockdef name="SCPU_ctrl_more">
            <timestamp>2020-5-9T14:22:11</timestamp>
            <rect width="336" x="64" y="-576" height="576" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
        </blockdef>
        <block symbolname="SCPU_ctrl_more" name="Controler">
            <blockpin signalname="XLXN_65" name="RegDst" />
            <blockpin signalname="XLXN_66" name="ALUSrc_B" />
            <blockpin signalname="XLXN_67(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_68" name="Jal" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="XLXN_69(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_70" name="RegWrite" />
            <blockpin signalname="XLXN_71(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="XLXN_91" name="zero" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
        </block>
        <block symbolname="Data_path" name="new_Data_path">
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_91" name="zero" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_71(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="XLXN_70" name="RegWrite" />
            <blockpin signalname="XLXN_69(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_68" name="Jal" />
            <blockpin signalname="XLXN_67(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_66" name="ALUSrc_B" />
            <blockpin signalname="XLXN_65" name="RegDst" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="rst" name="rst" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Data_out(31:0)">
            <wire x2="2784" y1="784" y2="784" x1="2768" />
            <wire x2="2992" y1="784" y2="784" x1="2784" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2784" y1="944" y2="944" x1="2768" />
            <wire x2="2992" y1="944" y2="944" x1="2784" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2784" y1="1104" y2="1104" x1="2768" />
            <wire x2="2992" y1="1104" y2="1104" x1="2784" />
        </branch>
        <instance x="2288" y="1456" name="new_Data_path" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-608" type="instance" />
        </instance>
        <branch name="XLXN_65">
            <wire x2="2288" y1="1040" y2="1040" x1="1936" />
        </branch>
        <instance x="1472" y="1584" name="Controler" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="128" y="-528" type="instance" />
        </instance>
        <branch name="XLXN_66">
            <wire x2="2288" y1="1104" y2="1104" x1="1936" />
        </branch>
        <branch name="XLXN_67(1:0)">
            <wire x2="2288" y1="1168" y2="1168" x1="1936" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2288" y1="1232" y2="1232" x1="1936" />
        </branch>
        <branch name="XLXN_69(1:0)">
            <wire x2="2288" y1="1296" y2="1296" x1="1936" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2288" y1="1360" y2="1360" x1="1936" />
        </branch>
        <branch name="XLXN_71(2:0)">
            <wire x2="2288" y1="1424" y2="1424" x1="1936" />
        </branch>
        <branch name="mem_w">
            <wire x2="2992" y1="1488" y2="1488" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1488" name="mem_w" orien="R0" />
        <branch name="CPU_MIO">
            <wire x2="2992" y1="1552" y2="1552" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1552" name="CPU_MIO" orien="R0" />
        <branch name="clk">
            <wire x2="2288" y1="784" y2="784" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1232" y="784" name="clk" orien="R180" />
        <branch name="rst">
            <wire x2="2288" y1="848" y2="848" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1232" y="848" name="rst" orien="R180" />
        <branch name="Data_in(31:0)">
            <wire x2="2288" y1="912" y2="912" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="912" name="Data_in(31:0)" orien="R180" />
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="976" type="branch" />
            <wire x2="2128" y1="976" y2="976" x1="1152" />
            <wire x2="2288" y1="976" y2="976" x1="2128" />
        </branch>
        <branch name="inst_in(31:0)">
            <wire x2="1008" y1="976" y2="976" x1="912" />
            <wire x2="1056" y1="976" y2="976" x1="1008" />
            <wire x2="1008" y1="976" y2="1152" x1="1008" />
            <wire x2="1008" y1="1152" y2="1232" x1="1008" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="1456" y1="1472" y2="1472" x1="912" />
            <wire x2="1472" y1="1472" y2="1472" x1="1456" />
        </branch>
        <bustap x2="1152" y1="976" y2="976" x1="1056" />
        <iomarker fontsize="28" x="912" y="976" name="inst_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="912" y="1472" name="MIO_ready" orien="R180" />
        <bustap x2="1104" y1="1152" y2="1152" x1="1008" />
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1277" y="1152" type="branch" />
            <wire x2="1277" y1="1152" y2="1152" x1="1104" />
            <wire x2="1472" y1="1152" y2="1152" x1="1277" />
        </branch>
        <bustap x2="1104" y1="1232" y2="1232" x1="1008" />
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1273" y="1232" type="branch" />
            <wire x2="1273" y1="1232" y2="1232" x1="1104" />
            <wire x2="1472" y1="1232" y2="1232" x1="1273" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1472" y1="1536" y2="1536" x1="1456" />
            <wire x2="1456" y1="1536" y2="1664" x1="1456" />
            <wire x2="1472" y1="1664" y2="1664" x1="1456" />
            <wire x2="2848" y1="1664" y2="1664" x1="1472" />
            <wire x2="2848" y1="1424" y2="1424" x1="2768" />
            <wire x2="2848" y1="1424" y2="1664" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1104" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="944" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2992" y="784" name="Data_out(31:0)" orien="R0" />
        <branch name="INT">
            <wire x2="1248" y1="1648" y2="1648" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1648" name="INT" orien="R180" />
    </sheet>
</drawing>