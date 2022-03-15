<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Data_out(31:0)" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="inst_in(25:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="MIO_ready" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="XLXN_91" />
        <signal name="INT" />
        <signal name="XLXN_92" />
        <signal name="Data_in(31:0)" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98(1:0)" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100(1:0)" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102(2:0)" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="INT" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <blockdef name="Data_path">
            <timestamp>2020-8-15T11:46:38</timestamp>
            <rect width="352" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-748" height="24" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <rect width="64" x="416" y="-572" height="24" />
            <line x2="480" y1="-560" y2="-560" x1="416" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="480" y1="-208" y2="-208" x1="416" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="SCPU_ctrl_more">
            <timestamp>2020-8-15T11:48:16</timestamp>
            <line x2="464" y1="32" y2="32" x1="400" />
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
            <rect width="336" x="64" y="-576" height="640" />
        </blockdef>
        <block symbolname="SCPU_ctrl_more" name="Controler">
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_91" name="zero" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="XLXN_96" name="RegDst" />
            <blockpin signalname="XLXN_97" name="ALUSrc_B" />
            <blockpin signalname="XLXN_99" name="Jal" />
            <blockpin signalname="XLXN_101" name="RegWrite" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_98(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="XLXN_100(1:0)" name="Branch(1:0)" />
            <blockpin signalname="XLXN_102(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="XLXN_92" name="ALUSrc_A" />
        </block>
        <block symbolname="Data_path" name="new_Data_path">
            <blockpin signalname="XLXN_101" name="RegWrite" />
            <blockpin signalname="XLXN_98(1:0)" name="DatatoReg(1:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="XLXN_97" name="ALUSrc_B" />
            <blockpin signalname="XLXN_102(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="XLXN_100(1:0)" name="Branch(1:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_99" name="Jal" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="XLXN_96" name="RegDst" />
            <blockpin signalname="XLXN_92" name="ALUSrc_A" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_91" name="zero" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2288" y="1456" name="new_Data_path" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-608" type="instance" />
        </instance>
        <instance x="1472" y="1584" name="Controler" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="128" y="-528" type="instance" />
        </instance>
        <branch name="mem_w">
            <wire x2="2992" y1="1488" y2="1488" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1488" name="mem_w" orien="R0" />
        <branch name="CPU_MIO">
            <wire x2="2992" y1="1552" y2="1552" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1552" name="CPU_MIO" orien="R0" />
        <branch name="inst_in(31:0)">
            <wire x2="1008" y1="976" y2="976" x1="912" />
            <wire x2="1056" y1="976" y2="976" x1="1008" />
            <wire x2="1008" y1="976" y2="1152" x1="1008" />
            <wire x2="1008" y1="1152" y2="1232" x1="1008" />
        </branch>
        <branch name="MIO_ready">
            <wire x2="1472" y1="1472" y2="1472" x1="912" />
        </branch>
        <bustap x2="1152" y1="976" y2="976" x1="1056" />
        <iomarker fontsize="28" x="912" y="976" name="inst_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="912" y="1472" name="MIO_ready" orien="R180" />
        <bustap x2="1104" y1="1152" y2="1152" x1="1008" />
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1277" y="1152" type="branch" />
            <wire x2="1472" y1="1152" y2="1152" x1="1104" />
        </branch>
        <bustap x2="1104" y1="1232" y2="1232" x1="1008" />
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1273" y="1232" type="branch" />
            <wire x2="1472" y1="1232" y2="1232" x1="1104" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1472" y1="1536" y2="1536" x1="1456" />
            <wire x2="1456" y1="1536" y2="1664" x1="1456" />
            <wire x2="2848" y1="1664" y2="1664" x1="1456" />
            <wire x2="2848" y1="1424" y2="1424" x1="2768" />
            <wire x2="2848" y1="1424" y2="1664" x1="2848" />
        </branch>
        <branch name="INT">
            <wire x2="1248" y1="1648" y2="1648" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1648" name="INT" orien="R180" />
        <branch name="XLXN_92">
            <wire x2="2224" y1="1616" y2="1616" x1="1936" />
            <wire x2="2288" y1="1424" y2="1424" x1="2224" />
            <wire x2="2224" y1="1424" y2="1616" x1="2224" />
        </branch>
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="976" type="branch" />
            <wire x2="1984" y1="976" y2="976" x1="1152" />
            <wire x2="2176" y1="976" y2="976" x1="1984" />
            <wire x2="2176" y1="976" y2="1296" x1="2176" />
            <wire x2="2288" y1="1296" y2="1296" x1="2176" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="2288" y1="848" y2="848" x1="1328" />
        </branch>
        <branch name="reset">
            <wire x2="2272" y1="880" y2="880" x1="816" />
            <wire x2="2272" y1="880" y2="1040" x1="2272" />
            <wire x2="2288" y1="1040" y2="1040" x1="2272" />
        </branch>
        <branch name="clk">
            <wire x2="2272" y1="1744" y2="1744" x1="816" />
            <wire x2="2288" y1="1168" y2="1168" x1="2272" />
            <wire x2="2272" y1="1168" y2="1744" x1="2272" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="2112" y1="1040" y2="1040" x1="1936" />
            <wire x2="2112" y1="1040" y2="1360" x1="2112" />
            <wire x2="2288" y1="1360" y2="1360" x1="2112" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="2144" y1="1104" y2="1104" x1="1936" />
            <wire x2="2144" y1="912" y2="1104" x1="2144" />
            <wire x2="2288" y1="912" y2="912" x1="2144" />
        </branch>
        <branch name="XLXN_98(1:0)">
            <wire x2="2224" y1="1168" y2="1168" x1="1936" />
            <wire x2="2288" y1="784" y2="784" x1="2224" />
            <wire x2="2224" y1="784" y2="1168" x1="2224" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2288" y1="1232" y2="1232" x1="1936" />
        </branch>
        <branch name="XLXN_100(1:0)">
            <wire x2="2160" y1="1296" y2="1296" x1="1936" />
            <wire x2="2160" y1="1104" y2="1296" x1="2160" />
            <wire x2="2288" y1="1104" y2="1104" x1="2160" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="2048" y1="1360" y2="1360" x1="1936" />
            <wire x2="2048" y1="720" y2="1360" x1="2048" />
            <wire x2="2288" y1="720" y2="720" x1="2048" />
        </branch>
        <branch name="XLXN_102(2:0)">
            <wire x2="2192" y1="1424" y2="1424" x1="1936" />
            <wire x2="2192" y1="976" y2="1424" x1="2192" />
            <wire x2="2288" y1="976" y2="976" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="816" y="880" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1328" y="848" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1744" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2992" y="720" name="Data_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="2992" y1="720" y2="720" x1="2768" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="2992" y1="1072" y2="1072" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1072" name="PC_out(31:0)" orien="R0" />
        <branch name="Addr_out(31:0)">
            <wire x2="2992" y1="896" y2="896" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2992" y="896" name="Addr_out(31:0)" orien="R0" />
    </sheet>
</drawing>