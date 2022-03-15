<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rdata_A(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_3(31:0)" />
        <signal name="XLXN_5(31:0)" />
        <signal name="RegWrite" />
        <signal name="DatatoReg(1:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_field(15:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="imm_32(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="ALU_Control(2:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="rst" />
        <signal name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO" />
        <signal name="pc_4(31:0)" />
        <signal name="branch_pc(31:0)" />
        <signal name="pc_4(31:28),inst_field(25:0),NO,NO" />
        <signal name="imm_32(29:0),NO,NO" />
        <signal name="Branch(1:0)" />
        <signal name="NO" />
        <signal name="V5" />
        <signal name="clk" />
        <signal name="overflow" />
        <signal name="zero" />
        <signal name="Jal" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(25:0)" />
        <signal name="inst_field(20:16)" />
        <signal name="XLXN_113(4:0)" />
        <signal name="XLXN_114(4:0)" />
        <signal name="inst_field(15:11)" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="RegDst" />
        <signal name="inst_field(15:0),NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" />
        <signal name="INT" />
        <signal name="eret" />
        <signal name="XLXN_129(31:0)" />
        <signal name="XLXN_132(31:0)" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134(31:0)" />
        <signal name="XLXN_135(31:0)" />
        <signal name="XLXN_137" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139(31:0)" />
        <signal name="XLXN_140(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="DatatoReg(1:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Branch(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="zero" />
        <port polarity="Input" name="Jal" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Input" name="INT" />
        <port polarity="Input" name="eret" />
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
        <blockdef name="Ext_32">
            <timestamp>2020-3-17T9:39:8</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <blockdef name="MUX4T1_32">
            <timestamp>2020-3-4T2:46:21</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2020-8-10T5:46:32</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="ARM_INT">
            <timestamp>2020-8-13T6:8:29</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="Regs" name="U2_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_114(4:0)" name="Wt_addr(4:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="wt_data(31:0)" />
            <blockpin signalname="rdata_A(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="MUXD3">
            <blockpin signalname="ALUSrc_B" name="s" />
            <blockpin signalname="Data_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="imm_32(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="Ext">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="imm_32(31:0)" name="imm_32(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_PC_4">
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO" name="b(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="add_32" name="ADD_Branch">
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="imm_32(29:0),NO,NO" name="b(31:0)" />
            <blockpin signalname="branch_pc(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="REG32" name="PC">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="CE" />
            <blockpin signalname="XLXN_132(31:0)" name="D(31:0)" />
            <blockpin signalname="PC_out(31:0)" name="Q(31:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="MUXD1">
            <blockpin signalname="Jal" name="s" />
            <blockpin signalname="inst_field(20:16)" name="I0(4:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5" name="I1(4:0)" />
            <blockpin signalname="XLXN_113(4:0)" name="o(4:0)" />
        </block>
        <block symbolname="MUX2T1_5" name="XLXI_45">
            <blockpin signalname="RegDst" name="s" />
            <blockpin signalname="XLXN_113(4:0)" name="I0(4:0)" />
            <blockpin signalname="inst_field(15:11)" name="I1(4:0)" />
            <blockpin signalname="XLXN_114(4:0)" name="o(4:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_47">
            <blockpin signalname="ALU_out(31:0)" name="I0(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="I1(31:0)" />
            <blockpin signalname="inst_field(15:0),NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" name="I2(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="I3(31:0)" />
            <blockpin signalname="DatatoReg(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="MUX4T1_32" name="XLXI_49">
            <blockpin signalname="pc_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="branch_pc(31:0)" name="I1(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),NO,NO" name="I2(31:0)" />
            <blockpin signalname="rdata_A(31:0)" name="I3(31:0)" />
            <blockpin signalname="Branch(1:0)" name="s(1:0)" />
            <blockpin signalname="XLXN_129(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_51">
            <blockpin signalname="rdata_A(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_3(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="ARM_INT" name="XLXI_52">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="INT" name="INT" />
            <blockpin signalname="eret" name="eret" />
            <blockpin signalname="XLXN_129(31:0)" name="pc_next(31:0)" />
            <blockpin signalname="XLXN_132(31:0)" name="pc(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="V5" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1696" y="2288" name="U2_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-320" type="instance" />
        </instance>
        <branch name="rdata_A(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="1088" type="branch" />
            <wire x2="2512" y1="1872" y2="1872" x1="2144" />
            <wire x2="2800" y1="1872" y2="1872" x1="2512" />
            <wire x2="2512" y1="1744" y2="1872" x1="2512" />
            <wire x2="3376" y1="1744" y2="1744" x1="2512" />
            <wire x2="3376" y1="1088" y2="1744" x1="3376" />
            <wire x2="3488" y1="1088" y2="1088" x1="3376" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="2240" y1="2256" y2="2256" x1="2144" />
            <wire x2="2288" y1="2256" y2="2256" x1="2240" />
            <wire x2="2240" y1="2256" y2="2896" x1="2240" />
            <wire x2="4864" y1="2896" y2="2896" x1="2240" />
        </branch>
        <instance x="2288" y="2352" name="MUXD3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-48" type="instance" />
        </instance>
        <branch name="XLXN_3(31:0)">
            <wire x2="2704" y1="2192" y2="2192" x1="2672" />
            <wire x2="2704" y1="1936" y2="2192" x1="2704" />
            <wire x2="2800" y1="1936" y2="1936" x1="2704" />
        </branch>
        <branch name="XLXN_5(31:0)">
            <wire x2="1520" y1="2192" y2="2192" x1="1504" />
            <wire x2="1520" y1="2192" y2="2256" x1="1520" />
            <wire x2="1696" y1="2256" y2="2256" x1="1520" />
        </branch>
        <branch name="RegWrite">
            <wire x2="1616" y1="1568" y2="1568" x1="640" />
            <wire x2="1616" y1="1568" y2="2000" x1="1616" />
            <wire x2="1696" y1="2000" y2="2000" x1="1616" />
        </branch>
        <instance x="1696" y="2608" name="Ext" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-16" type="instance" />
        </instance>
        <branch name="DatatoReg(1:0)">
            <wire x2="1120" y1="2448" y2="2448" x1="320" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1120" y1="2256" y2="2256" x1="304" />
        </branch>
        <bustap x2="896" y1="2576" y2="2576" x1="800" />
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="2576" type="branch" />
            <wire x2="1280" y1="2576" y2="2576" x1="896" />
            <wire x2="1696" y1="2576" y2="2576" x1="1280" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="992" y1="2192" y2="2528" x1="992" />
            <wire x2="3328" y1="2528" y2="2528" x1="992" />
            <wire x2="1120" y1="2192" y2="2192" x1="992" />
            <wire x2="3328" y1="2000" y2="2000" x1="3248" />
            <wire x2="3328" y1="2000" y2="2528" x1="3328" />
            <wire x2="4752" y1="2000" y2="2000" x1="3328" />
        </branch>
        <branch name="imm_32(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2177" y="2576" type="branch" />
            <wire x2="2192" y1="2576" y2="2576" x1="2128" />
            <wire x2="2288" y1="2320" y2="2320" x1="2192" />
            <wire x2="2192" y1="2320" y2="2576" x1="2192" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="2272" y1="1488" y2="1488" x1="656" />
            <wire x2="2272" y1="1488" y2="2192" x1="2272" />
            <wire x2="2288" y1="2192" y2="2192" x1="2272" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="2752" y1="1408" y2="1408" x1="752" />
            <wire x2="2752" y1="1408" y2="2000" x1="2752" />
            <wire x2="2800" y1="2000" y2="2000" x1="2752" />
        </branch>
        <instance x="2144" y="992" name="ADD_PC_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-64" type="instance" />
        </instance>
        <branch name="PC_out(31:0)">
            <wire x2="1952" y1="832" y2="832" x1="1872" />
            <wire x2="1952" y1="832" y2="896" x1="1952" />
            <wire x2="2032" y1="896" y2="896" x1="1952" />
            <wire x2="2144" y1="896" y2="896" x1="2032" />
            <wire x2="4896" y1="800" y2="800" x1="2032" />
            <wire x2="2032" y1="800" y2="896" x1="2032" />
        </branch>
        <branch name="rst">
            <wire x2="896" y1="1008" y2="1008" x1="576" />
            <wire x2="896" y1="1008" y2="1520" x1="896" />
            <wire x2="1648" y1="1520" y2="1520" x1="896" />
            <wire x2="1648" y1="1520" y2="1936" x1="1648" />
            <wire x2="1696" y1="1936" y2="1936" x1="1648" />
            <wire x2="1024" y1="1008" y2="1008" x1="896" />
            <wire x2="1488" y1="896" y2="896" x1="896" />
            <wire x2="896" y1="896" y2="1008" x1="896" />
        </branch>
        <branch name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,V5,NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="960" type="branch" />
            <wire x2="2144" y1="960" y2="960" x1="1952" />
        </branch>
        <branch name="pc_4(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="896" type="branch" />
            <wire x2="2624" y1="1680" y2="1680" x1="1088" />
            <wire x2="1088" y1="1680" y2="2384" x1="1088" />
            <wire x2="1120" y1="2384" y2="2384" x1="1088" />
            <wire x2="2624" y1="896" y2="896" x1="2528" />
            <wire x2="3488" y1="896" y2="896" x1="2624" />
            <wire x2="2624" y1="896" y2="1216" x1="2624" />
            <wire x2="2624" y1="1216" y2="1680" x1="2624" />
            <wire x2="2736" y1="1216" y2="1216" x1="2624" />
        </branch>
        <branch name="branch_pc(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="960" type="branch" />
            <wire x2="3248" y1="1216" y2="1216" x1="3120" />
            <wire x2="3248" y1="960" y2="1216" x1="3248" />
            <wire x2="3376" y1="960" y2="960" x1="3248" />
            <wire x2="3488" y1="960" y2="960" x1="3376" />
        </branch>
        <branch name="pc_4(31:28),inst_field(25:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1328" type="branch" />
            <wire x2="2240" y1="1328" y2="1328" x1="528" />
            <wire x2="3488" y1="1024" y2="1024" x1="2240" />
            <wire x2="2240" y1="1024" y2="1328" x1="2240" />
        </branch>
        <branch name="imm_32(29:0),NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1280" type="branch" />
            <wire x2="2736" y1="1280" y2="1280" x1="512" />
        </branch>
        <branch name="Branch(1:0)">
            <wire x2="3200" y1="672" y2="672" x1="624" />
            <wire x2="3200" y1="672" y2="1152" x1="3200" />
            <wire x2="3488" y1="1152" y2="1152" x1="3200" />
        </branch>
        <instance x="4672" y="736" name="XLXI_11" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4816" y="560" type="branch" />
            <wire x2="4736" y1="560" y2="608" x1="4736" />
            <wire x2="4816" y1="560" y2="560" x1="4736" />
        </branch>
        <branch name="clk">
            <wire x2="944" y1="832" y2="832" x1="560" />
            <wire x2="944" y1="832" y2="944" x1="944" />
            <wire x2="944" y1="944" y2="1440" x1="944" />
            <wire x2="1680" y1="1440" y2="1440" x1="944" />
            <wire x2="1680" y1="1440" y2="1872" x1="1680" />
            <wire x2="1696" y1="1872" y2="1872" x1="1680" />
            <wire x2="1024" y1="944" y2="944" x1="944" />
            <wire x2="1488" y1="832" y2="832" x1="944" />
        </branch>
        <iomarker fontsize="28" x="656" y="1488" name="ALUSrc_B" orien="R180" />
        <iomarker fontsize="28" x="640" y="1568" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="752" y="1408" name="ALU_Control(2:0)" orien="R180" />
        <iomarker fontsize="28" x="4896" y="800" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="672" name="Branch(1:0)" orien="R180" />
        <iomarker fontsize="28" x="4864" y="2896" name="Data_out(31:0)" orien="R0" />
        <bustap x2="496" y1="1936" y2="1936" x1="400" />
        <bustap x2="496" y1="1744" y2="1744" x1="400" />
        <instance x="672" y="2032" name="MUXD1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-80" type="instance" />
        </instance>
        <branch name="Jal">
            <wire x2="656" y1="1680" y2="1680" x1="160" />
            <wire x2="656" y1="1680" y2="1872" x1="656" />
            <wire x2="672" y1="1872" y2="1872" x1="656" />
        </branch>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1744" type="branch" />
            <wire x2="784" y1="1744" y2="1744" x1="496" />
            <wire x2="1584" y1="1744" y2="1744" x1="784" />
            <wire x2="1584" y1="1744" y2="2064" x1="1584" />
            <wire x2="1696" y1="2064" y2="2064" x1="1584" />
        </branch>
        <branch name="inst_field(25:0)">
            <wire x2="400" y1="1728" y2="1728" x1="304" />
            <wire x2="400" y1="1728" y2="1744" x1="400" />
            <wire x2="400" y1="1744" y2="1936" x1="400" />
            <wire x2="400" y1="1936" y2="2080" x1="400" />
            <wire x2="400" y1="2080" y2="2576" x1="400" />
            <wire x2="800" y1="2576" y2="2576" x1="400" />
        </branch>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1936" type="branch" />
            <wire x2="576" y1="1936" y2="1936" x1="496" />
            <wire x2="624" y1="1936" y2="1936" x1="576" />
            <wire x2="624" y1="1936" y2="2128" x1="624" />
            <wire x2="1696" y1="2128" y2="2128" x1="624" />
            <wire x2="672" y1="1936" y2="1936" x1="624" />
        </branch>
        <iomarker fontsize="28" x="304" y="1728" name="inst_field(25:0)" orien="R180" />
        <branch name="XLXN_113(4:0)">
            <wire x2="1120" y1="1872" y2="1872" x1="1056" />
        </branch>
        <branch name="XLXN_114(4:0)">
            <wire x2="1552" y1="1808" y2="1808" x1="1504" />
            <wire x2="1552" y1="1808" y2="2192" x1="1552" />
            <wire x2="1696" y1="2192" y2="2192" x1="1552" />
        </branch>
        <instance x="1120" y="1968" name="XLXI_45" orien="R0">
        </instance>
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2080" type="branch" />
            <wire x2="592" y1="2080" y2="2080" x1="496" />
            <wire x2="1056" y1="2080" y2="2080" x1="592" />
            <wire x2="1056" y1="1936" y2="2080" x1="1056" />
            <wire x2="1120" y1="1936" y2="1936" x1="1056" />
        </branch>
        <bustap x2="496" y1="2080" y2="2080" x1="400" />
        <branch name="V5,V5,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="2000" type="branch" />
            <wire x2="672" y1="2000" y2="2000" x1="512" />
        </branch>
        <branch name="RegDst">
            <wire x2="1120" y1="1632" y2="1632" x1="224" />
            <wire x2="1120" y1="1632" y2="1808" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="160" y="1680" name="Jal" orien="R180" />
        <iomarker fontsize="28" x="224" y="1632" name="RegDst" orien="R180" />
        <iomarker fontsize="28" x="320" y="2448" name="DatatoReg(1:0)" orien="R180" />
        <branch name="inst_field(15:0),NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2320" type="branch" />
            <wire x2="1120" y1="2320" y2="2320" x1="1072" />
        </branch>
        <instance x="1120" y="2480" name="XLXI_47" orien="R0">
        </instance>
        <iomarker fontsize="28" x="304" y="2256" name="Data_in(31:0)" orien="R180" />
        <instance x="3488" y="1184" name="XLXI_49" orien="R0">
        </instance>
        <instance x="2800" y="2032" name="XLXI_51" orien="R0">
        </instance>
        <branch name="overflow">
            <wire x2="4784" y1="1936" y2="1936" x1="3248" />
        </branch>
        <iomarker fontsize="28" x="4784" y="1872" name="zero" orien="R0" />
        <branch name="zero">
            <wire x2="4784" y1="1872" y2="1872" x1="3248" />
        </branch>
        <iomarker fontsize="28" x="4752" y="2000" name="ALU_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4784" y="1936" name="overflow" orien="R0" />
        <branch name="INT">
            <wire x2="1024" y1="1072" y2="1072" x1="576" />
        </branch>
        <branch name="eret">
            <wire x2="1024" y1="1136" y2="1136" x1="576" />
        </branch>
        <instance x="1024" y="1232" name="XLXI_52" orien="R0">
        </instance>
        <iomarker fontsize="28" x="576" y="1072" name="INT" orien="R180" />
        <iomarker fontsize="28" x="576" y="1136" name="eret" orien="R180" />
        <iomarker fontsize="28" x="576" y="1008" name="rst" orien="R180" />
        <branch name="XLXN_129(31:0)">
            <wire x2="1024" y1="1200" y2="1200" x1="992" />
            <wire x2="992" y1="1200" y2="1376" x1="992" />
            <wire x2="3952" y1="1376" y2="1376" x1="992" />
            <wire x2="3952" y1="896" y2="896" x1="3872" />
            <wire x2="3952" y1="896" y2="1376" x1="3952" />
        </branch>
        <instance x="2736" y="1312" name="ADD_Branch" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="128" y="-64" type="instance" />
        </instance>
        <branch name="XLXN_132(31:0)">
            <wire x2="1424" y1="944" y2="944" x1="1408" />
            <wire x2="1424" y1="944" y2="1024" x1="1424" />
            <wire x2="1488" y1="1024" y2="1024" x1="1424" />
        </branch>
        <instance x="1488" y="1056" name="PC" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-144" type="instance" />
        </instance>
        <iomarker fontsize="28" x="560" y="832" name="clk" orien="R180" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="608" type="branch" />
            <wire x2="1472" y1="560" y2="608" x1="1472" />
            <wire x2="1472" y1="608" y2="960" x1="1472" />
            <wire x2="1488" y1="960" y2="960" x1="1472" />
        </branch>
        <instance x="1408" y="560" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>