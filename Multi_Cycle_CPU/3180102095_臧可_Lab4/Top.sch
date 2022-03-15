<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="V5" />
        <signal name="NO" />
        <signal name="CR" />
        <signal name="XLXN_2(4:0)" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="RDY" />
        <signal name="BTN_OK(2:0)" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="RSTN" />
        <signal name="readn" />
        <signal name="blink(7:0)" />
        <signal name="rst" />
        <signal name="seg_clrn" />
        <signal name="seg_out" />
        <signal name="SEG_PEN" />
        <signal name="Clk_CPU" />
        <signal name="SW_OK(2)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="led_clrn" />
        <signal name="LED_PEN" />
        <signal name="seg_clk" />
        <signal name="Disp_num(31:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_109(31:0)" />
        <signal name="XLXN_115(9:0)" />
        <signal name="XLXN_116(31:0)" />
        <signal name="PC(11:2)" />
        <signal name="XLXN_134" />
        <signal name="XLXN_137" />
        <signal name="Div(31:0)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="XLXN_133" />
        <signal name="Div(6)" />
        <signal name="XLXN_151(1:0)" />
        <signal name="GPIOF0" />
        <signal name="LED_out(15:0)" />
        <signal name="CPU2IO(31:0)" />
        <signal name="XLXN_186" />
        <signal name="clk_100mhz" />
        <signal name="XLXN_82" />
        <signal name="SW_OK(2:0)" />
        <signal name="IO_clk" />
        <signal name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="XLXN_120" />
        <signal name="NO,NO,PC(31:2)" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="inst(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="XLXN_227(0:0)" />
        <signal name="Counter_out(31:0)" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="point_out(7:0)" />
        <signal name="Div(25)" />
        <signal name="XLXN_314" />
        <signal name="XLXN_315" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Input" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="seg_out" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Input" name="clk_100mhz" />
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2016-2-25T15:50:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2020-3-18T15:7:15</timestamp>
            <rect width="224" x="32" y="32" height="148" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2020-3-18T14:10:6</timestamp>
            <rect width="352" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <rect width="64" x="416" y="-876" height="24" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <rect width="64" x="416" y="-460" height="24" />
            <line x2="480" y1="-448" y2="-448" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2020-4-1T14:9:50</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2020-3-1T9:1:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2020-4-1T15:20:28</timestamp>
            <rect width="512" x="32" y="32" height="324" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2020-3-19T9:41:55</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-336" y2="-336" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="SCPU">
            <timestamp>2020-5-9T14:30:39</timestamp>
            <line x2="-48" y1="-64" y2="-64" x1="-16" />
            <line x2="-48" y1="-512" y2="-512" x1="-16" />
            <line x2="-48" y1="-384" y2="-384" style="linewidth:W" x1="-16" />
            <line x2="-48" y1="-224" y2="-224" style="linecolor:rgb(255,0,0)" x1="-16" />
            <line x2="400" y1="-432" y2="-432" style="linewidth:W" x1="368" />
            <line x2="400" y1="-496" y2="-496" x1="368" />
            <line x2="400" y1="-368" y2="-368" style="linewidth:W" x1="368" />
            <line x2="400" y1="-304" y2="-304" style="linewidth:W" x1="368" />
            <line x2="-16" y1="-112" y2="-112" style="linewidth:W" x1="-48" />
            <line x2="400" y1="-176" y2="-176" x1="368" />
            <line x2="400" y1="-112" y2="-112" x1="368" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="384" x="-16" y="-580" height="612" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
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
        <block symbolname="vcc" name="XLXI_20">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_21">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_2(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="seg_out" name="seg_out" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin signalname="led_sout" name="led_sout" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="XLXN_151(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="LED_out(15:0)" name="LED_out(15:0)" />
            <blockpin name="GPIOf0(13:0)" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="PC(11:2)" name="a(9:0)" />
            <blockpin signalname="inst(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_89" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_116(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_115(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_227(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_109(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_137" name="counter2_out" />
            <blockpin signalname="XLXN_134" name="counter1_out" />
            <blockpin signalname="XLXN_120" name="counter0_out" />
            <blockpin signalname="XLXN_133" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="LED_out(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_314" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_133" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_151(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_120" name="counter0_OUT" />
            <blockpin signalname="XLXN_134" name="counter1_OUT" />
            <blockpin signalname="XLXN_137" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="XLXN_115(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_109(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_227(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_82" name="clka" />
            <blockpin signalname="XLXN_116(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="XLXN_314" name="EN" />
            <blockpin signalname="SW_OK(2:0)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" name="blink_in(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="NO,NO,PC(31:2)" name="Test_data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="Test_data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="Test_data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Test_data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Test_data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Test_data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="Test_data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="blink_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="SCPU" name="U1">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="inst(31:0)" name="inst_in(31:0)" />
            <blockpin name="MIO_ready" />
            <blockpin signalname="XLXN_120" name="INT" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="XLXN_89" name="mem_w" />
            <blockpin name="CPU_MIO" />
            <blockpin signalname="XLXN_186" name="rst" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="clk_100mhz" name="I" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_2(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="XLXN_186" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="4688" y="752" name="XLXI_20" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4816" y="816" type="branch" />
            <wire x2="4752" y1="752" y2="816" x1="4752" />
            <wire x2="4816" y1="816" y2="816" x1="4752" />
        </branch>
        <instance x="4688" y="1216" name="XLXI_21" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4784" y="1040" type="branch" />
            <wire x2="4752" y1="1040" y2="1088" x1="4752" />
            <wire x2="4784" y1="1040" y2="1040" x1="4752" />
        </branch>
        <instance x="992" y="1008" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-96" type="instance" />
        </instance>
        <branch name="CR">
            <wire x2="1440" y1="448" y2="448" x1="1344" />
        </branch>
        <branch name="XLXN_2(4:0)">
            <wire x2="1968" y1="480" y2="480" x1="1344" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="544" type="branch" />
            <wire x2="1440" y1="544" y2="544" x1="1344" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1472" y1="576" y2="576" x1="1344" />
            <wire x2="1488" y1="576" y2="576" x1="1472" />
            <wire x2="1488" y1="576" y2="592" x1="1488" />
            <wire x2="1472" y1="576" y2="1296" x1="1472" />
            <wire x2="1952" y1="1296" y2="1296" x1="1472" />
            <wire x2="1488" y1="560" y2="576" x1="1488" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="624" type="branch" />
            <wire x2="1392" y1="624" y2="624" x1="1344" />
            <wire x2="1440" y1="624" y2="624" x1="1392" />
            <wire x2="1440" y1="624" y2="768" x1="1440" />
            <wire x2="3232" y1="768" y2="768" x1="1440" />
            <wire x2="3232" y1="768" y2="1408" x1="3232" />
            <wire x2="3232" y1="1408" y2="1424" x1="3232" />
            <wire x2="1440" y1="768" y2="1344" x1="1440" />
            <wire x2="1952" y1="1344" y2="1344" x1="1440" />
            <wire x2="1488" y1="624" y2="624" x1="1440" />
            <wire x2="1488" y1="624" y2="640" x1="1488" />
            <wire x2="1488" y1="608" y2="624" x1="1488" />
        </branch>
        <bustap x2="1584" y1="576" y2="576" x1="1488" />
        <bustap x2="1584" y1="624" y2="624" x1="1488" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="624" type="branch" />
            <wire x2="1744" y1="624" y2="624" x1="1584" />
            <wire x2="1968" y1="624" y2="624" x1="1744" />
        </branch>
        <branch name="RDY">
            <wire x2="1840" y1="512" y2="512" x1="1344" />
            <wire x2="1968" y1="512" y2="512" x1="1840" />
            <wire x2="1840" y1="352" y2="512" x1="1840" />
            <wire x2="2416" y1="352" y2="352" x1="1840" />
        </branch>
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="576" type="branch" />
            <wire x2="1776" y1="576" y2="576" x1="1584" />
            <wire x2="1968" y1="576" y2="576" x1="1776" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="976" y1="512" y2="512" x1="528" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="976" y1="560" y2="560" x1="528" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="976" y1="608" y2="608" x1="528" />
        </branch>
        <branch name="RSTN">
            <wire x2="976" y1="448" y2="448" x1="528" />
        </branch>
        <branch name="readn">
            <wire x2="976" y1="640" y2="640" x1="896" />
            <wire x2="896" y1="640" y2="736" x1="896" />
            <wire x2="2320" y1="736" y2="736" x1="896" />
            <wire x2="2320" y1="448" y2="448" x1="2288" />
            <wire x2="2416" y1="448" y2="448" x1="2320" />
            <wire x2="2320" y1="448" y2="736" x1="2320" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="624" type="branch" />
            <wire x2="2368" y1="624" y2="624" x1="2288" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="736" type="branch" />
            <wire x2="3488" y1="736" y2="736" x1="3376" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="4032" y1="496" y2="496" x1="3872" />
        </branch>
        <branch name="seg_out">
            <wire x2="4032" y1="640" y2="640" x1="3872" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="4032" y1="784" y2="784" x1="3872" />
        </branch>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="848" type="branch" />
            <wire x2="816" y1="1088" y2="1232" x1="816" />
            <wire x2="880" y1="1232" y2="1232" x1="816" />
            <wire x2="1408" y1="1088" y2="1088" x1="816" />
            <wire x2="1408" y1="848" y2="848" x1="1376" />
            <wire x2="1760" y1="848" y2="848" x1="1408" />
            <wire x2="1408" y1="848" y2="1088" x1="1408" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="976" type="branch" />
            <wire x2="992" y1="976" y2="976" x1="880" />
        </branch>
        <bustap x2="3328" y1="1408" y2="1408" x1="3232" />
        <instance x="1968" y="688" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-240" type="instance" />
        </instance>
        <branch name="led_clk">
            <wire x2="4192" y1="2240" y2="2240" x1="4128" />
        </branch>
        <branch name="led_sout">
            <wire x2="4192" y1="2304" y2="2304" x1="4128" />
        </branch>
        <branch name="led_clrn">
            <wire x2="4192" y1="2368" y2="2368" x1="4128" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="4192" y1="2432" y2="2432" x1="4128" />
        </branch>
        <branch name="seg_clk">
            <wire x2="4128" y1="352" y2="352" x1="3872" />
        </branch>
        <instance x="3488" y="832" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-256" type="instance" />
        </instance>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="896" type="branch" />
            <wire x2="3488" y1="352" y2="352" x1="3408" />
            <wire x2="3408" y1="352" y2="896" x1="3408" />
            <wire x2="4112" y1="896" y2="896" x1="3408" />
            <wire x2="4624" y1="896" y2="896" x1="4112" />
            <wire x2="4624" y1="896" y2="2048" x1="4624" />
            <wire x2="4624" y1="2048" y2="2048" x1="4512" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="944" type="branch" />
            <wire x2="3488" y1="480" y2="480" x1="3472" />
            <wire x2="3472" y1="480" y2="944" x1="3472" />
            <wire x2="4112" y1="944" y2="944" x1="3472" />
            <wire x2="4592" y1="944" y2="944" x1="4112" />
            <wire x2="4592" y1="944" y2="1632" x1="4592" />
            <wire x2="4592" y1="1632" y2="1632" x1="4512" />
        </branch>
        <instance x="1760" y="880" name="XLXI_18" orien="R0" />
        <instance x="3664" y="2656" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-336" type="instance" />
        </instance>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="2432" type="branch" />
            <wire x2="3664" y1="2432" y2="2432" x1="3440" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="1664" y1="1248" y2="1248" x1="1328" />
            <wire x2="1664" y1="1248" y2="1424" x1="1664" />
            <wire x2="1952" y1="1424" y2="1424" x1="1664" />
        </branch>
        <branch name="XLXN_109(31:0)">
            <wire x2="896" y1="2080" y2="2224" x1="896" />
            <wire x2="944" y1="2224" y2="2224" x1="896" />
            <wire x2="1568" y1="2080" y2="2080" x1="896" />
            <wire x2="1952" y1="1760" y2="1760" x1="1568" />
            <wire x2="1568" y1="1760" y2="2080" x1="1568" />
        </branch>
        <instance x="1008" y="1808" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="112" y="68" type="instance" />
        </instance>
        <branch name="XLXN_115(9:0)">
            <wire x2="928" y1="2112" y2="2192" x1="928" />
            <wire x2="944" y1="2192" y2="2192" x1="928" />
            <wire x2="1600" y1="2112" y2="2112" x1="928" />
            <wire x2="1952" y1="1856" y2="1856" x1="1600" />
            <wire x2="1600" y1="1856" y2="2112" x1="1600" />
        </branch>
        <branch name="XLXN_116(31:0)">
            <wire x2="1632" y1="2192" y2="2192" x1="1520" />
            <wire x2="1632" y1="1904" y2="2192" x1="1632" />
            <wire x2="1952" y1="1904" y2="1904" x1="1632" />
        </branch>
        <bustap x2="720" y1="1888" y2="1888" x1="624" />
        <branch name="PC(11:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1888" type="branch" />
            <wire x2="736" y1="1888" y2="1888" x1="720" />
            <wire x2="1008" y1="1888" y2="1888" x1="736" />
        </branch>
        <instance x="1920" y="1968" name="U4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="-752" type="instance" />
        </instance>
        <branch name="XLXN_134">
            <wire x2="2544" y1="1840" y2="1840" x1="2448" />
            <wire x2="2544" y1="1840" y2="2512" x1="2544" />
            <wire x2="2544" y1="2512" y2="2512" x1="2464" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="2576" y1="1808" y2="1808" x1="2448" />
            <wire x2="2576" y1="1808" y2="2656" x1="2576" />
            <wire x2="2576" y1="2656" y2="2656" x1="2464" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="976" type="branch" />
            <wire x2="1808" y1="976" y2="976" x1="1376" />
            <wire x2="1808" y1="976" y2="2496" x1="1808" />
            <wire x2="1808" y1="2496" y2="2560" x1="1808" />
            <wire x2="1808" y1="2560" y2="2624" x1="1808" />
            <wire x2="1856" y1="976" y2="976" x1="1808" />
        </branch>
        <bustap x2="1904" y1="2496" y2="2496" x1="1808" />
        <bustap x2="1904" y1="2560" y2="2560" x1="1808" />
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2560" type="branch" />
            <wire x2="1936" y1="2560" y2="2560" x1="1904" />
            <wire x2="1952" y1="2560" y2="2560" x1="1936" />
        </branch>
        <bustap x2="1904" y1="2624" y2="2624" x1="1808" />
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2624" type="branch" />
            <wire x2="1936" y1="2624" y2="2624" x1="1904" />
            <wire x2="1952" y1="2624" y2="2624" x1="1936" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="2480" y1="2192" y2="2192" x1="1888" />
            <wire x2="1888" y1="2192" y2="2688" x1="1888" />
            <wire x2="1952" y1="2688" y2="2688" x1="1888" />
            <wire x2="2480" y1="1904" y2="1904" x1="2448" />
            <wire x2="2480" y1="1904" y2="2192" x1="2480" />
        </branch>
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2496" type="branch" />
            <wire x2="1936" y1="2496" y2="2496" x1="1904" />
            <wire x2="1952" y1="2496" y2="2496" x1="1936" />
        </branch>
        <instance x="1952" y="2848" name="U10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-464" type="instance" />
        </instance>
        <branch name="XLXN_151(1:0)">
            <wire x2="1952" y1="2816" y2="2816" x1="1920" />
            <wire x2="1920" y1="2816" y2="2880" x1="1920" />
            <wire x2="4304" y1="2880" y2="2880" x1="1920" />
            <wire x2="4304" y1="2496" y2="2496" x1="4128" />
            <wire x2="4304" y1="2496" y2="2880" x1="4304" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2654" y="1296" type="branch" />
            <wire x2="2944" y1="1296" y2="1296" x1="2448" />
            <wire x2="2944" y1="1296" y2="2528" x1="2944" />
            <wire x2="3664" y1="2528" y2="2528" x1="2944" />
        </branch>
        <branch name="LED_out(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2537" y="1600" type="branch" />
            <wire x2="2640" y1="1600" y2="1600" x1="2448" />
            <wire x2="2640" y1="1600" y2="2832" x1="2640" />
            <wire x2="4256" y1="2832" y2="2832" x1="2640" />
            <wire x2="4256" y1="2560" y2="2560" x1="4128" />
            <wire x2="4256" y1="2560" y2="2832" x1="4256" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1200" type="branch" />
            <wire x2="1952" y1="2752" y2="2752" x1="1888" />
            <wire x2="1888" y1="2752" y2="2912" x1="1888" />
            <wire x2="3040" y1="2912" y2="2912" x1="1888" />
            <wire x2="2704" y1="1200" y2="1200" x1="2448" />
            <wire x2="3040" y1="1200" y2="1200" x1="2704" />
            <wire x2="3040" y1="1200" y2="1600" x1="3040" />
            <wire x2="3040" y1="1600" y2="2624" x1="3040" />
            <wire x2="3664" y1="2624" y2="2624" x1="3040" />
            <wire x2="3040" y1="2624" y2="2912" x1="3040" />
            <wire x2="4032" y1="1600" y2="1600" x1="3040" />
        </branch>
        <branch name="XLXN_186">
            <wire x2="768" y1="800" y2="912" x1="768" />
            <wire x2="992" y1="912" y2="912" x1="768" />
            <wire x2="768" y1="912" y2="1056" x1="768" />
            <wire x2="1856" y1="1056" y2="1056" x1="768" />
            <wire x2="3088" y1="1056" y2="1056" x1="1856" />
            <wire x2="3088" y1="1056" y2="1280" x1="3088" />
            <wire x2="3088" y1="1280" y2="2336" x1="3088" />
            <wire x2="3664" y1="2336" y2="2336" x1="3088" />
            <wire x2="4032" y1="1280" y2="1280" x1="3088" />
            <wire x2="1856" y1="1056" y2="1232" x1="1856" />
            <wire x2="1952" y1="1232" y2="1232" x1="1856" />
            <wire x2="1856" y1="1232" y2="2432" x1="1856" />
            <wire x2="1952" y1="2432" y2="2432" x1="1856" />
            <wire x2="768" y1="1056" y2="1680" x1="768" />
            <wire x2="880" y1="1680" y2="1680" x1="768" />
            <wire x2="1408" y1="800" y2="800" x1="768" />
            <wire x2="1408" y1="656" y2="656" x1="1344" />
            <wire x2="1408" y1="656" y2="800" x1="1408" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="544" y1="1120" y2="1120" x1="480" />
            <wire x2="704" y1="1120" y2="1120" x1="544" />
            <wire x2="1408" y1="1120" y2="1120" x1="704" />
            <wire x2="1408" y1="1120" y2="1168" x1="1408" />
            <wire x2="1952" y1="1168" y2="1168" x1="1408" />
            <wire x2="544" y1="1120" y2="2384" x1="544" />
            <wire x2="592" y1="2384" y2="2384" x1="544" />
            <wire x2="1600" y1="384" y2="384" x1="704" />
            <wire x2="3264" y1="384" y2="384" x1="1600" />
            <wire x2="3264" y1="384" y2="800" x1="3264" />
            <wire x2="3488" y1="800" y2="800" x1="3264" />
            <wire x2="1600" y1="384" y2="448" x1="1600" />
            <wire x2="1968" y1="448" y2="448" x1="1600" />
            <wire x2="704" y1="384" y2="480" x1="704" />
            <wire x2="704" y1="480" y2="848" x1="704" />
            <wire x2="992" y1="848" y2="848" x1="704" />
            <wire x2="704" y1="848" y2="1120" x1="704" />
            <wire x2="976" y1="480" y2="480" x1="704" />
        </branch>
        <instance x="944" y="2112" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="288" y="80" type="instance" />
        </instance>
        <branch name="XLXN_82">
            <wire x2="944" y1="2384" y2="2384" x1="816" />
        </branch>
        <branch name="SW_OK(2:0)">
            <wire x2="4032" y1="1408" y2="1408" x1="3328" />
        </branch>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3138" y="848" type="branch" />
            <wire x2="1920" y1="2240" y2="2368" x1="1920" />
            <wire x2="1952" y1="2368" y2="2368" x1="1920" />
            <wire x2="3456" y1="2240" y2="2240" x1="1920" />
            <wire x2="3664" y1="2240" y2="2240" x1="3456" />
            <wire x2="3152" y1="848" y2="848" x1="1984" />
            <wire x2="3152" y1="848" y2="1216" x1="3152" />
            <wire x2="3456" y1="1216" y2="1216" x1="3152" />
            <wire x2="3456" y1="1216" y2="2240" x1="3456" />
            <wire x2="4032" y1="1216" y2="1216" x1="3456" />
        </branch>
        <instance x="4032" y="2080" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-784" type="instance" />
        </instance>
        <branch name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3504" y="1536" type="branch" />
            <wire x2="4032" y1="1536" y2="1536" x1="3504" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3504" y="1472" type="branch" />
            <wire x2="4032" y1="1472" y2="1472" x1="3504" />
        </branch>
        <instance x="928" y="1744" name="U1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-528" type="instance" />
        </instance>
        <branch name="XLXN_120">
            <wire x2="880" y1="1520" y2="1520" x1="832" />
            <wire x2="832" y1="1520" y2="2016" x1="832" />
            <wire x2="2512" y1="2016" y2="2016" x1="832" />
            <wire x2="2512" y1="2016" y2="2368" x1="2512" />
            <wire x2="2512" y1="1872" y2="1872" x1="2448" />
            <wire x2="2512" y1="1872" y2="2016" x1="2512" />
            <wire x2="2512" y1="2368" y2="2368" x1="2464" />
        </branch>
        <branch name="NO,NO,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1664" type="branch" />
            <wire x2="4032" y1="1664" y2="1664" x1="3664" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="496" type="branch" />
            <wire x2="2416" y1="496" y2="496" x1="2288" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="560" type="branch" />
            <wire x2="2416" y1="560" y2="560" x1="2288" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1618" y="1616" type="branch" />
            <wire x2="1424" y1="1440" y2="1440" x1="1328" />
            <wire x2="1424" y1="1440" y2="1616" x1="1424" />
            <wire x2="1952" y1="1616" y2="1616" x1="1424" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1552" type="branch" />
            <wire x2="1472" y1="1376" y2="1376" x1="1328" />
            <wire x2="1472" y1="1376" y2="1552" x1="1472" />
            <wire x2="1616" y1="1552" y2="1552" x1="1472" />
            <wire x2="1952" y1="1552" y2="1552" x1="1616" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1621" y="1488" type="branch" />
            <wire x2="1520" y1="1312" y2="1312" x1="1328" />
            <wire x2="1520" y1="1312" y2="1488" x1="1520" />
            <wire x2="1952" y1="1488" y2="1488" x1="1520" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1360" type="branch" />
            <wire x2="800" y1="1360" y2="1360" x1="640" />
            <wire x2="880" y1="1360" y2="1360" x1="800" />
            <wire x2="800" y1="1360" y2="1808" x1="800" />
            <wire x2="1344" y1="1808" y2="1808" x1="800" />
            <wire x2="1344" y1="1808" y2="1888" x1="1344" />
            <wire x2="1344" y1="1888" y2="1888" x1="1296" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1632" type="branch" />
            <wire x2="624" y1="1632" y2="1632" x1="592" />
            <wire x2="880" y1="1632" y2="1632" x1="624" />
            <wire x2="624" y1="1632" y2="1888" x1="624" />
        </branch>
        <instance x="592" y="2416" name="XLXI_10" orien="R0" />
        <branch name="XLXN_227(0:0)">
            <wire x2="1536" y1="2048" y2="2048" x1="864" />
            <wire x2="864" y1="2048" y2="2320" x1="864" />
            <wire x2="944" y1="2320" y2="2320" x1="864" />
            <wire x2="1952" y1="1808" y2="1808" x1="1536" />
            <wire x2="1536" y1="1808" y2="2048" x1="1536" />
        </branch>
        <instance x="944" y="672" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-216" type="instance" />
        </instance>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2520" y="1776" type="branch" />
            <wire x2="2528" y1="1776" y2="1776" x1="2448" />
            <wire x2="2608" y1="1776" y2="1776" x1="2528" />
            <wire x2="2608" y1="1776" y2="2800" x1="2608" />
            <wire x2="2608" y1="2800" y2="2800" x1="2464" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="1728" type="branch" />
            <wire x2="4032" y1="1728" y2="1728" x1="3680" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="1792" type="branch" />
            <wire x2="4032" y1="1792" y2="1792" x1="3680" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="1856" type="branch" />
            <wire x2="4032" y1="1856" y2="1856" x1="3680" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="1920" type="branch" />
            <wire x2="4032" y1="1920" y2="1920" x1="3680" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="1984" type="branch" />
            <wire x2="4032" y1="1984" y2="1984" x1="3680" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3680" y="2048" type="branch" />
            <wire x2="4032" y1="2048" y2="2048" x1="3680" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3376" y="672" type="branch" />
            <wire x2="3488" y1="672" y2="672" x1="3376" />
        </branch>
        <iomarker fontsize="28" x="1440" y="448" name="CR" orien="R0" />
        <iomarker fontsize="28" x="528" y="448" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="528" y="512" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="560" name="BTN_x(4:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="608" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2416" y="448" name="readn" orien="R0" />
        <iomarker fontsize="28" x="4128" y="352" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="4032" y="496" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="4032" y="640" name="seg_out" orien="R0" />
        <iomarker fontsize="28" x="4032" y="784" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2240" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2304" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2368" name="led_clrn" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2432" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="480" y="1120" name="clk_100mhz" orien="R180" />
        <iomarker fontsize="28" x="2416" y="352" name="RDY" orien="R0" />
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="608" type="branch" />
            <wire x2="3488" y1="608" y2="608" x1="3360" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4112" y="992" type="branch" />
            <wire x2="3488" y1="416" y2="416" x1="3440" />
            <wire x2="3440" y1="416" y2="992" x1="3440" />
            <wire x2="4112" y1="992" y2="992" x1="3440" />
            <wire x2="4560" y1="992" y2="992" x1="4112" />
            <wire x2="4560" y1="992" y2="1216" x1="4560" />
            <wire x2="4560" y1="1216" y2="1216" x1="4512" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="544" type="branch" />
            <wire x2="3488" y1="544" y2="544" x1="3248" />
        </branch>
        <branch name="XLXN_314">
            <wire x2="2992" y1="1248" y2="1248" x1="2448" />
            <wire x2="2992" y1="1248" y2="1344" x1="2992" />
            <wire x2="4032" y1="1344" y2="1344" x1="2992" />
        </branch>
    </sheet>
</drawing>