<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="XLXN_5(31:0)" />
        <signal name="RegWrite" />
        <signal name="MemtoReg" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="imm_32(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="ALU_Control(2:0)" />
        <signal name="pc_back(31:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="V5" />
        <signal name="rst" />
        <signal name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO" />
        <signal name="pc_4(31:0)" />
        <signal name="XLXN_65(31:0)" />
        <signal name="XLXN_66(31:0)" />
        <signal name="pc_4(31:28),inst_field(25:0),NO,NO" />
        <signal name="imm_32(29:0),NO,NO" />
        <signal name="Jump" />
        <signal name="branch" />
        <signal name="XLXN_104" />
        <signal name="NO" />
        <signal name="clk" />
        <signal name="RegDst" />
        <signal name="XLXN_4(4:0)" />
        <signal name="inst_field(15:11)" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(25:21)" />
        <signal name="XLXN_96" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="MemtoReg" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Jump" />
        <port polarity="Input" name="branch" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="inst_field(25:0)" />
        <blockdef name="REG32">
            <timestamp>2020-5-8T3:34:42</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2020-5-8T3:21:50</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-428" height="24" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="alu">
            <timestamp>2020-5-8T3:21:13</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2020-5-8T3:21:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX2T1_5">
            <timestamp>2020-3-15T5:47:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2020-3-16T13:23:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2020-3-17T9:39:8</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <block symbolname="Regs" name="U2_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="Wt_addr(4:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="wt_data(31:0)" />
            <blockpin signalname="XLXN_1(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD3">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="alu" name="U1_1">
            <blockpin signalname="XLXN_1(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin signalname="XLXN_96" name="zero" />
            <blockpin name="overflow" />
        </block>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="imm_32(31:0)" name="imm_32(31:0)" />
        </block>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="pc_back(31:0)" name="D(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_PC_4">
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO" name="b(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_Branch">
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="imm_32(29:0),NO,NO" name="b(31:0)" />
            <blockpin signalname="XLXN_65(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD4">
            <blockpin signalname="XLXN_104" name="s" />
            <blockpin signalname="pc_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_65(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_66(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD5">
            <blockpin signalname="Jump" name="s" />
            <blockpin signalname="XLXN_66(31:0)" name="I0(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),NO,NO" name="I1(31:0)" />
            <blockpin signalname="pc_back(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="branch" name="I1" />
            <blockpin signalname="XLXN_104" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD2">
            <blockpin signalname="MemtoReg" name="s" />
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="RegDst" name="s" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="o(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1888" y="1904" name="U2_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-320" type="instance" />
        </instance>
        <branch name="XLXN_1(31:0)">
            <wire x2="2992" y1="1488" y2="1488" x1="2336" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2432" y1="1872" y2="1872" x1="2336" />
            <wire x2="2480" y1="1872" y2="1872" x1="2432" />
            <wire x2="2432" y1="1872" y2="2512" x1="2432" />
            <wire x2="5056" y1="2512" y2="2512" x1="2432" />
        </branch>
        <instance x="2480" y="1968" name="MUXD3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-48" type="instance" />
        </instance>
        <instance x="2992" y="1648" name="U1_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-96" type="instance" />
        </instance>
        <branch name="XLXN_3(31:0)">
            <wire x2="2896" y1="1808" y2="1808" x1="2864" />
            <wire x2="2896" y1="1552" y2="1808" x1="2896" />
            <wire x2="2992" y1="1552" y2="1552" x1="2896" />
        </branch>
        <branch name="XLXN_5(31:0)">
            <wire x2="1888" y1="1872" y2="1872" x1="1648" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1760" y1="1184" y2="1184" x1="832" />
            <wire x2="1760" y1="1184" y2="1616" x1="1760" />
            <wire x2="1888" y1="1616" y2="1616" x1="1760" />
        </branch>
        <instance x="1888" y="2224" name="Ext" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-16" type="instance" />
        </instance>
        <branch name="MemtoReg">
            <wire x2="1264" y1="1872" y2="1872" x1="832" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1264" y1="2000" y2="2000" x1="832" />
        </branch>
        <bustap x2="1088" y1="2192" y2="2192" x1="992" />
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1409" y="2192" type="branch" />
            <wire x2="1888" y1="2192" y2="2192" x1="1088" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="1264" y1="1936" y2="1936" x1="1152" />
            <wire x2="1152" y1="1936" y2="2384" x1="1152" />
            <wire x2="3520" y1="2384" y2="2384" x1="1152" />
            <wire x2="3520" y1="1488" y2="1488" x1="3440" />
            <wire x2="3520" y1="1488" y2="2384" x1="3520" />
            <wire x2="4992" y1="1488" y2="1488" x1="3520" />
        </branch>
        <branch name="imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2369" y="2192" type="branch" />
            <wire x2="2384" y1="2192" y2="2192" x1="2320" />
            <wire x2="2480" y1="1936" y2="1936" x1="2384" />
            <wire x2="2384" y1="1936" y2="2192" x1="2384" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="2464" y1="1104" y2="1104" x1="848" />
            <wire x2="2464" y1="1104" y2="1808" x1="2464" />
            <wire x2="2480" y1="1808" y2="1808" x1="2464" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="2944" y1="1024" y2="1024" x1="944" />
            <wire x2="2944" y1="1024" y2="1616" x1="2944" />
            <wire x2="2992" y1="1616" y2="1616" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="832" y="1872" name="MemtoReg" orien="R180" />
        <iomarker fontsize="28" x="832" y="2000" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="848" y="1104" name="ALUSrc_B" orien="R180" />
        <iomarker fontsize="28" x="832" y="1184" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="944" y="1024" name="ALU_Control(2:0)" orien="R180" />
        <instance x="2336" y="608" name="ADD_PC_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-64" type="instance" />
        </instance>
        <instance x="2928" y="816" name="ADD_Branch" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-64" type="instance" />
        </instance>
        <instance x="3568" y="752" name="MUXD4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-64" type="instance" />
        </instance>
        <instance x="4112" y="688" name="MUXD5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-64" type="instance" />
        </instance>
        <branch name="PC_out(31:0)">
            <wire x2="2224" y1="512" y2="512" x1="1824" />
            <wire x2="2336" y1="512" y2="512" x1="2224" />
            <wire x2="5088" y1="416" y2="416" x1="2224" />
            <wire x2="2224" y1="416" y2="512" x1="2224" />
        </branch>
        <branch name="rst">
            <wire x2="1264" y1="576" y2="576" x1="768" />
            <wire x2="1440" y1="576" y2="576" x1="1264" />
            <wire x2="1264" y1="576" y2="1136" x1="1264" />
            <wire x2="1808" y1="1136" y2="1136" x1="1264" />
            <wire x2="1808" y1="1136" y2="1552" x1="1808" />
            <wire x2="1888" y1="1552" y2="1552" x1="1808" />
        </branch>
        <branch name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2227" y="576" type="branch" />
            <wire x2="2336" y1="576" y2="576" x1="2144" />
        </branch>
        <branch name="pc_4(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2816" y="512" type="branch" />
            <wire x2="2816" y1="512" y2="512" x1="2720" />
            <wire x2="2816" y1="512" y2="656" x1="2816" />
            <wire x2="2816" y1="656" y2="720" x1="2816" />
            <wire x2="2928" y1="720" y2="720" x1="2816" />
            <wire x2="3568" y1="656" y2="656" x1="2816" />
        </branch>
        <bustap x2="2048" y1="576" y2="576" x1="2144" />
        <branch name="XLXN_65(31:0)">
            <wire x2="3568" y1="720" y2="720" x1="3312" />
        </branch>
        <branch name="XLXN_66(31:0)">
            <wire x2="4112" y1="592" y2="592" x1="3952" />
        </branch>
        <branch name="pc_4(31:28),inst_field(25:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="880" type="branch" />
            <wire x2="4032" y1="880" y2="880" x1="2384" />
            <wire x2="4112" y1="656" y2="656" x1="4032" />
            <wire x2="4032" y1="656" y2="880" x1="4032" />
        </branch>
        <branch name="imm_32(29:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="784" type="branch" />
            <wire x2="2928" y1="784" y2="784" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="5088" y="416" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="768" y="576" name="rst" orien="R180" />
        <branch name="Jump">
            <wire x2="4096" y1="288" y2="288" x1="816" />
            <wire x2="4096" y1="288" y2="528" x1="4096" />
            <wire x2="4112" y1="528" y2="528" x1="4096" />
        </branch>
        <instance x="1280" y="224" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="816" y="288" name="Jump" orien="R180" />
        <instance x="4880" y="800" name="XLXI_43" orien="R270" />
        <branch name="branch">
            <wire x2="4752" y1="976" y2="976" x1="800" />
            <wire x2="4752" y1="800" y2="976" x1="4752" />
        </branch>
        <iomarker fontsize="28" x="800" y="976" name="branch" orien="R180" />
        <iomarker fontsize="28" x="5056" y="2512" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4992" y="1488" name="ALU_out(31:0)" orien="R0" />
        <branch name="XLXN_104">
            <wire x2="4784" y1="352" y2="352" x1="3504" />
            <wire x2="4784" y1="352" y2="544" x1="4784" />
            <wire x2="3504" y1="352" y2="592" x1="3504" />
            <wire x2="3568" y1="592" y2="592" x1="3504" />
        </branch>
        <instance x="4864" y="352" name="XLXI_12" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="176" type="branch" />
            <wire x2="4928" y1="176" y2="224" x1="4928" />
            <wire x2="5008" y1="176" y2="176" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="768" y="512" name="clk" orien="R180" />
        <branch name="pc_back(31:0)">
            <wire x2="1376" y1="704" y2="928" x1="1376" />
            <wire x2="4512" y1="928" y2="928" x1="1376" />
            <wire x2="1440" y1="704" y2="704" x1="1376" />
            <wire x2="4512" y1="528" y2="528" x1="4496" />
            <wire x2="4512" y1="528" y2="928" x1="4512" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="352" type="branch" />
            <wire x2="1344" y1="224" y2="352" x1="1344" />
            <wire x2="1472" y1="352" y2="352" x1="1344" />
            <wire x2="1888" y1="352" y2="352" x1="1472" />
            <wire x2="1888" y1="352" y2="576" x1="1888" />
            <wire x2="2048" y1="576" y2="576" x1="1888" />
            <wire x2="1344" y1="352" y2="640" x1="1344" />
            <wire x2="1440" y1="640" y2="640" x1="1344" />
        </branch>
        <branch name="clk">
            <wire x2="1312" y1="512" y2="512" x1="768" />
            <wire x2="1440" y1="512" y2="512" x1="1312" />
            <wire x2="1312" y1="512" y2="1056" x1="1312" />
            <wire x2="1872" y1="1056" y2="1056" x1="1312" />
            <wire x2="1872" y1="1056" y2="1488" x1="1872" />
            <wire x2="1888" y1="1488" y2="1488" x1="1872" />
        </branch>
        <instance x="1440" y="736" name="PC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-144" type="instance" />
        </instance>
        <instance x="1264" y="2032" name="MUXD2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-80" type="instance" />
        </instance>
        <iomarker fontsize="28" x="800" y="1264" name="RegDst" orien="R180" />
        <bustap x2="1088" y1="1616" y2="1616" x1="992" />
        <bustap x2="1088" y1="1552" y2="1552" x1="992" />
        <bustap x2="1088" y1="1360" y2="1360" x1="992" />
        <iomarker fontsize="28" x="896" y="1344" name="inst_field(25:0)" orien="R180" />
        <instance x="1264" y="1648" name="MUXD1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-80" type="instance" />
        </instance>
        <branch name="RegDst">
            <wire x2="816" y1="1264" y2="1264" x1="800" />
            <wire x2="1248" y1="1264" y2="1264" x1="816" />
            <wire x2="1248" y1="1264" y2="1488" x1="1248" />
            <wire x2="1264" y1="1488" y2="1488" x1="1248" />
        </branch>
        <branch name="XLXN_4(4:0)">
            <wire x2="1696" y1="1488" y2="1488" x1="1648" />
            <wire x2="1696" y1="1488" y2="1808" x1="1696" />
            <wire x2="1872" y1="1808" y2="1808" x1="1696" />
            <wire x2="1888" y1="1808" y2="1808" x1="1872" />
        </branch>
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1616" type="branch" />
            <wire x2="1152" y1="1616" y2="1616" x1="1088" />
            <wire x2="1264" y1="1616" y2="1616" x1="1152" />
        </branch>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1552" type="branch" />
            <wire x2="1168" y1="1552" y2="1552" x1="1088" />
            <wire x2="1248" y1="1552" y2="1552" x1="1168" />
            <wire x2="1264" y1="1552" y2="1552" x1="1248" />
            <wire x2="1248" y1="1552" y2="1744" x1="1248" />
            <wire x2="1888" y1="1744" y2="1744" x1="1248" />
        </branch>
        <branch name="inst_field(25:0)">
            <wire x2="992" y1="1344" y2="1344" x1="896" />
            <wire x2="992" y1="1344" y2="1360" x1="992" />
            <wire x2="992" y1="1360" y2="1552" x1="992" />
            <wire x2="992" y1="1552" y2="1616" x1="992" />
            <wire x2="992" y1="1616" y2="2192" x1="992" />
        </branch>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1360" type="branch" />
            <wire x2="1376" y1="1360" y2="1360" x1="1088" />
            <wire x2="1728" y1="1360" y2="1360" x1="1376" />
            <wire x2="1728" y1="1360" y2="1680" x1="1728" />
            <wire x2="1888" y1="1680" y2="1680" x1="1728" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="4816" y1="1552" y2="1552" x1="3440" />
            <wire x2="4816" y1="800" y2="1552" x1="4816" />
        </branch>
    </sheet>
</drawing>