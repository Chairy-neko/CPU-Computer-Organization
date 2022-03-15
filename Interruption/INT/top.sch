<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PC(31:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_10(0:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_14(31:0)" />
        <signal name="Counter_out(31:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="SW_OK(15)" />
        <signal name="XLXN_19" />
        <signal name="Div(31:0)" />
        <signal name="CR" />
        <signal name="XLXN_30(4:0)" />
        <signal name="RDY" />
        <signal name="Pulse(3:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="SW_OK(2)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="RSTN" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="blink(7:0)" />
        <signal name="readn" />
        <signal name="GPIOF0" />
        <signal name="CPU2IO(31:0)" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="XLXN_80(1:0)" />
        <signal name="XLXN_99" />
        <signal name="Div(20)" />
        <signal name="XLXN_122(15:0)" />
        <signal name="NO,NO,PC(31:2)" />
        <signal name="inst(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" />
        <signal name="seg_clk" />
        <signal name="seg_clrn" />
        <signal name="seg_out" />
        <signal name="SEG_PEN" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="Disp_num(31:0)" />
        <signal name="Div(25)" />
        <signal name="SW_OK(0)" />
        <signal name="rst" />
        <signal name="V5" />
        <signal name="NO" />
        <signal name="clk_100mhz" />
        <signal name="Clk_CPU" />
        <signal name="IO_clk" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="led_clrn" />
        <signal name="LED_PEN" />
        <signal name="XLXN_147" />
        <signal name="XLXN_214(9:0)" />
        <signal name="PC(11:2)" />
        <signal name="XLXN_226" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="seg_out" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED_PEN" />
        <blockdef name="MIO_BUS">
            <timestamp>2020-7-3T9:52:29</timestamp>
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
        <blockdef name="Counter_x">
            <timestamp>2020-7-3T9:52:5</timestamp>
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
        <blockdef name="clk_div">
            <timestamp>2020-7-3T9:48:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SAnti_jitter">
            <timestamp>2020-7-3T9:48:27</timestamp>
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
            <timestamp>2020-7-3T9:49:5</timestamp>
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
        <blockdef name="Multi_8CH32">
            <timestamp>2020-8-10T1:18:44</timestamp>
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
        <blockdef name="SSeg7_Dev">
            <timestamp>2020-7-3T9:8:51</timestamp>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2020-8-11T5:35:52</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-1-3T10:6:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="416" y1="144" y2="144" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2016-1-3T10:17:26</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="84" height="244" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="416" y1="208" y2="208" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="SCPU">
            <timestamp>2020-8-13T7:24:23</timestamp>
            <rect width="320" x="64" y="-396" height="396" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="384" y1="-224" y2="-224" x1="448" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
            <line x2="384" y1="-32" y2="-32" x1="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
        </blockdef>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_7" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_214(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_10(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_13(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_16" name="counter2_out" />
            <blockpin signalname="XLXN_17" name="counter1_out" />
            <blockpin signalname="XLXN_226" name="counter0_out" />
            <blockpin signalname="XLXN_19" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="XLXN_122(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_99" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_30(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_30(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_19" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_80(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_226" name="counter0_OUT" />
            <blockpin signalname="XLXN_17" name="counter1_OUT" />
            <blockpin signalname="XLXN_16" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_99" name="EN" />
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
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
        <block symbolname="vcc" name="XLXI_24">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_25">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="clk_100mhz" name="I" />
            <blockpin signalname="XLXN_147" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_28">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin signalname="led_sout" name="led_sout" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="XLXN_80(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="XLXN_122(15:0)" name="LED_out(15:0)" />
            <blockpin name="GPIOf0(13:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="XLXN_214(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_147" name="clka" />
            <blockpin signalname="XLXN_10(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="PC(11:2)" name="a(9:0)" />
            <blockpin signalname="inst(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="SCPU" name="U1">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="XLXN_7" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="inst(31:0)" name="inst_in(31:0)" />
            <blockpin name="CPU_MIO" />
            <blockpin name="MIO_ready" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="SW_OK(15)" name="INT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1472" type="branch" />
            <wire x2="464" y1="1472" y2="1472" x1="416" />
            <wire x2="624" y1="1472" y2="1472" x1="464" />
            <wire x2="464" y1="1472" y2="1904" x1="464" />
            <wire x2="1056" y1="1904" y2="1904" x1="464" />
            <wire x2="1056" y1="1904" y2="2048" x1="1056" />
            <wire x2="1056" y1="2048" y2="2048" x1="1040" />
        </branch>
        <instance x="1520" y="1904" name="U4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="352" y="-480" type="instance" />
        </instance>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1329" y="1424" type="branch" />
            <wire x2="1552" y1="1424" y2="1424" x1="1072" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1332" y="1488" type="branch" />
            <wire x2="1552" y1="1488" y2="1488" x1="1072" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1342" y="1552" type="branch" />
            <wire x2="1552" y1="1552" y2="1552" x1="1072" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1552" y1="1360" y2="1360" x1="1072" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1712" type="branch" />
            <wire x2="2288" y1="1712" y2="1712" x1="2048" />
            <wire x2="2288" y1="1712" y2="2464" x1="2288" />
            <wire x2="2288" y1="2464" y2="2464" x1="2048" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2240" y1="1744" y2="1744" x1="2048" />
            <wire x2="2240" y1="1744" y2="2320" x1="2240" />
            <wire x2="2240" y1="2320" y2="2320" x1="2048" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2192" y1="1776" y2="1776" x1="2048" />
            <wire x2="2192" y1="1776" y2="2176" x1="2192" />
            <wire x2="2192" y1="2176" y2="2176" x1="2048" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1008" type="branch" />
            <wire x2="1376" y1="1008" y2="1008" x1="1040" />
            <wire x2="1376" y1="1008" y2="2160" x1="1376" />
            <wire x2="1376" y1="2160" y2="2224" x1="1376" />
            <wire x2="1376" y1="2224" y2="2288" x1="1376" />
            <wire x2="1440" y1="1008" y2="1008" x1="1376" />
        </branch>
        <branch name="CR">
            <wire x2="1136" y1="384" y2="384" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1136" y="384" name="CR" orien="R0" />
        <branch name="XLXN_30(4:0)">
            <wire x2="1664" y1="416" y2="416" x1="992" />
        </branch>
        <branch name="RDY">
            <wire x2="1440" y1="448" y2="448" x1="992" />
            <wire x2="1664" y1="448" y2="448" x1="1440" />
            <wire x2="1440" y1="240" y2="448" x1="1440" />
            <wire x2="1680" y1="240" y2="240" x1="1440" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="480" type="branch" />
            <wire x2="1152" y1="480" y2="480" x1="992" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="560" type="branch" />
            <wire x2="1056" y1="560" y2="560" x1="992" />
            <wire x2="1072" y1="560" y2="560" x1="1056" />
            <wire x2="1152" y1="560" y2="560" x1="1072" />
            <wire x2="1072" y1="560" y2="944" x1="1072" />
            <wire x2="2480" y1="944" y2="944" x1="1072" />
            <wire x2="2480" y1="944" y2="1248" x1="2480" />
            <wire x2="1072" y1="944" y2="1280" x1="1072" />
            <wire x2="1552" y1="1280" y2="1280" x1="1072" />
        </branch>
        <bustap x2="1248" y1="512" y2="512" x1="1152" />
        <bustap x2="1248" y1="560" y2="560" x1="1152" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1444" y="512" type="branch" />
            <wire x2="1664" y1="512" y2="512" x1="1248" />
        </branch>
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1444" y="560" type="branch" />
            <wire x2="1664" y1="560" y2="560" x1="1248" />
        </branch>
        <instance x="1664" y="624" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-128" type="instance" />
        </instance>
        <instance x="592" y="608" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-216" type="instance" />
        </instance>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1008" type="branch" />
            <wire x2="656" y1="1008" y2="1008" x1="640" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="512" type="branch" />
            <wire x2="1056" y1="512" y2="512" x1="992" />
            <wire x2="1104" y1="512" y2="512" x1="1056" />
            <wire x2="1152" y1="512" y2="512" x1="1104" />
            <wire x2="1104" y1="512" y2="1232" x1="1104" />
            <wire x2="1552" y1="1232" y2="1232" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1680" y="240" name="RDY" orien="R0" />
        <branch name="BTN_y(3:0)">
            <wire x2="624" y1="448" y2="448" x1="400" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="624" y1="496" y2="496" x1="400" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="624" y1="544" y2="544" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="448" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="544" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="496" name="BTN_x(4:0)" orien="R180" />
        <branch name="RSTN">
            <wire x2="624" y1="384" y2="384" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="384" name="RSTN" orien="R180" />
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="432" type="branch" />
            <wire x2="2080" y1="432" y2="432" x1="1984" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="496" type="branch" />
            <wire x2="2080" y1="496" y2="496" x1="1984" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="560" type="branch" />
            <wire x2="2080" y1="560" y2="560" x1="1984" />
        </branch>
        <branch name="readn">
            <wire x2="624" y1="576" y2="576" x1="576" />
            <wire x2="576" y1="576" y2="688" x1="576" />
            <wire x2="2032" y1="688" y2="688" x1="576" />
            <wire x2="2032" y1="384" y2="384" x1="1984" />
            <wire x2="2080" y1="384" y2="384" x1="2032" />
            <wire x2="2032" y1="384" y2="688" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2080" y="384" name="readn" orien="R0" />
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2218" y="1136" type="branch" />
            <wire x2="1536" y1="2416" y2="2416" x1="1376" />
            <wire x2="1376" y1="2416" y2="2608" x1="1376" />
            <wire x2="2432" y1="2608" y2="2608" x1="1376" />
            <wire x2="2432" y1="1136" y2="1136" x1="2048" />
            <wire x2="2432" y1="1136" y2="1440" x1="2432" />
            <wire x2="2432" y1="1440" y2="2432" x1="2432" />
            <wire x2="2432" y1="2432" y2="2608" x1="2432" />
            <wire x2="2624" y1="2432" y2="2432" x1="2432" />
            <wire x2="2640" y1="1440" y2="1440" x1="2432" />
        </branch>
        <instance x="1536" y="2512" name="U10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-272" type="instance" />
        </instance>
        <bustap x2="1472" y1="2160" y2="2160" x1="1376" />
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1501" y="2160" type="branch" />
            <wire x2="1536" y1="2160" y2="2160" x1="1472" />
        </branch>
        <bustap x2="1472" y1="2224" y2="2224" x1="1376" />
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1501" y="2224" type="branch" />
            <wire x2="1536" y1="2224" y2="2224" x1="1472" />
        </branch>
        <bustap x2="1472" y1="2288" y2="2288" x1="1376" />
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1500" y="2288" type="branch" />
            <wire x2="1536" y1="2288" y2="2288" x1="1472" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1328" y1="1952" y2="2352" x1="1328" />
            <wire x2="1536" y1="2352" y2="2352" x1="1328" />
            <wire x2="2096" y1="1952" y2="1952" x1="1328" />
            <wire x2="2096" y1="1840" y2="1840" x1="2048" />
            <wire x2="2096" y1="1840" y2="1952" x1="2096" />
        </branch>
        <branch name="XLXN_80(1:0)">
            <wire x2="1536" y1="2480" y2="2480" x1="1520" />
            <wire x2="1520" y1="2480" y2="2560" x1="1520" />
            <wire x2="3472" y1="2560" y2="2560" x1="1520" />
            <wire x2="3472" y1="2240" y2="2240" x1="3056" />
            <wire x2="3472" y1="2240" y2="2560" x1="3472" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2640" y1="1184" y2="1184" x1="2048" />
        </branch>
        <instance x="2640" y="1920" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-560" type="instance" />
        </instance>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2228" y="1232" type="branch" />
            <wire x2="2384" y1="1232" y2="1232" x1="2048" />
            <wire x2="2384" y1="1232" y2="2336" x1="2384" />
            <wire x2="2624" y1="2336" y2="2336" x1="2384" />
        </branch>
        <branch name="XLXN_122(15:0)">
            <wire x2="2336" y1="1536" y2="1536" x1="2048" />
            <wire x2="2336" y1="1536" y2="2512" x1="2336" />
            <wire x2="3376" y1="2512" y2="2512" x1="2336" />
            <wire x2="3376" y1="2272" y2="2272" x1="3056" />
            <wire x2="3376" y1="2272" y2="2512" x1="3376" />
        </branch>
        <branch name="NO,NO,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1504" type="branch" />
            <wire x2="2640" y1="1504" y2="1504" x1="2592" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1568" type="branch" />
            <wire x2="2640" y1="1568" y2="1568" x1="2592" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1632" type="branch" />
            <wire x2="2640" y1="1632" y2="1632" x1="2592" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1696" type="branch" />
            <wire x2="2640" y1="1696" y2="1696" x1="2592" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1760" type="branch" />
            <wire x2="2640" y1="1760" y2="1760" x1="2592" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1824" type="branch" />
            <wire x2="2640" y1="1824" y2="1824" x1="2592" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1888" type="branch" />
            <wire x2="2640" y1="1888" y2="1888" x1="2592" />
        </branch>
        <bustap x2="2576" y1="1248" y2="1248" x1="2480" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2607" y="1248" type="branch" />
            <wire x2="2640" y1="1248" y2="1248" x1="2576" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1312" type="branch" />
            <wire x2="2640" y1="1312" y2="1312" x1="2592" />
        </branch>
        <branch name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1376" type="branch" />
            <wire x2="2640" y1="1376" y2="1376" x1="2592" />
        </branch>
        <instance x="2672" y="720" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-224" type="instance" />
        </instance>
        <branch name="seg_clk">
            <wire x2="3088" y1="240" y2="240" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="240" name="seg_clk" orien="R0" />
        <branch name="seg_clrn">
            <wire x2="3088" y1="384" y2="384" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="384" name="seg_clrn" orien="R0" />
        <branch name="seg_out">
            <wire x2="3088" y1="528" y2="528" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="528" name="seg_out" orien="R0" />
        <branch name="SEG_PEN">
            <wire x2="3088" y1="672" y2="672" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="672" name="SEG_PEN" orien="R0" />
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="912" type="branch" />
            <wire x2="2528" y1="304" y2="912" x1="2528" />
            <wire x2="2976" y1="912" y2="912" x1="2528" />
            <wire x2="3168" y1="912" y2="912" x1="2976" />
            <wire x2="3168" y1="912" y2="1056" x1="3168" />
            <wire x2="2672" y1="304" y2="304" x1="2528" />
            <wire x2="3168" y1="1056" y2="1056" x1="3120" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="848" type="branch" />
            <wire x2="2672" y1="368" y2="368" x1="2576" />
            <wire x2="2576" y1="368" y2="848" x1="2576" />
            <wire x2="2976" y1="848" y2="848" x1="2576" />
            <wire x2="3216" y1="848" y2="848" x1="2976" />
            <wire x2="3216" y1="848" y2="1472" x1="3216" />
            <wire x2="3216" y1="1472" y2="1472" x1="3120" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2974" y="800" type="branch" />
            <wire x2="2672" y1="240" y2="240" x1="2624" />
            <wire x2="2624" y1="240" y2="800" x1="2624" />
            <wire x2="3264" y1="800" y2="800" x1="2624" />
            <wire x2="3264" y1="800" y2="1888" x1="3264" />
            <wire x2="3264" y1="1888" y2="1888" x1="3120" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="432" type="branch" />
            <wire x2="2672" y1="432" y2="432" x1="2480" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="496" type="branch" />
            <wire x2="2672" y1="496" y2="496" x1="2480" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="560" type="branch" />
            <wire x2="2672" y1="560" y2="560" x1="2480" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="624" type="branch" />
            <wire x2="2672" y1="624" y2="624" x1="2480" />
        </branch>
        <instance x="3248" y="160" name="XLXI_24" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3344" y="192" type="branch" />
            <wire x2="3312" y1="160" y2="192" x1="3312" />
            <wire x2="3344" y1="192" y2="192" x1="3312" />
        </branch>
        <instance x="3248" y="480" name="XLXI_25" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3344" y="320" type="branch" />
            <wire x2="3312" y1="320" y2="352" x1="3312" />
            <wire x2="3344" y1="320" y2="320" x1="3312" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="320" y1="880" y2="880" x1="288" />
            <wire x2="480" y1="880" y2="880" x1="320" />
            <wire x2="656" y1="880" y2="880" x1="480" />
            <wire x2="320" y1="880" y2="1104" x1="320" />
            <wire x2="320" y1="1104" y2="2144" x1="320" />
            <wire x2="1552" y1="1104" y2="1104" x1="320" />
            <wire x2="480" y1="320" y2="416" x1="480" />
            <wire x2="624" y1="416" y2="416" x1="480" />
            <wire x2="480" y1="416" y2="880" x1="480" />
            <wire x2="1600" y1="320" y2="320" x1="480" />
            <wire x2="1600" y1="320" y2="384" x1="1600" />
            <wire x2="1664" y1="384" y2="384" x1="1600" />
            <wire x2="2272" y1="320" y2="320" x1="1600" />
            <wire x2="2272" y1="320" y2="688" x1="2272" />
            <wire x2="2672" y1="688" y2="688" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="288" y="880" name="clk_100mhz" orien="R180" />
        <instance x="288" y="2144" name="XLXI_27" orien="R90" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="592" type="branch" />
            <wire x2="1024" y1="592" y2="592" x1="992" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="944" type="branch" />
            <wire x2="656" y1="944" y2="944" x1="592" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1168" type="branch" />
            <wire x2="1552" y1="1168" y2="1168" x1="1504" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1408" type="branch" />
            <wire x2="624" y1="1408" y2="1408" x1="592" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="2096" type="branch" />
            <wire x2="1536" y1="2096" y2="2096" x1="1488" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1120" type="branch" />
            <wire x2="2640" y1="1120" y2="1120" x1="2608" />
        </branch>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="880" type="branch" />
            <wire x2="1136" y1="1200" y2="1200" x1="560" />
            <wire x2="560" y1="1200" y2="1360" x1="560" />
            <wire x2="624" y1="1360" y2="1360" x1="560" />
            <wire x2="1136" y1="880" y2="880" x1="1040" />
            <wire x2="1136" y1="880" y2="1200" x1="1136" />
            <wire x2="1232" y1="880" y2="880" x1="1136" />
            <wire x2="1280" y1="880" y2="880" x1="1232" />
        </branch>
        <instance x="1280" y="912" name="XLXI_28" orien="R0" />
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="880" type="branch" />
            <wire x2="2128" y1="880" y2="880" x1="1504" />
            <wire x2="2128" y1="880" y2="1056" x1="2128" />
            <wire x2="2640" y1="1056" y2="1056" x1="2128" />
        </branch>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="2032" type="branch" />
            <wire x2="1536" y1="2032" y2="2032" x1="1504" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="1680" type="branch" />
            <wire x2="352" y1="1680" y2="1680" x1="176" />
            <wire x2="624" y1="1680" y2="1680" x1="352" />
            <wire x2="352" y1="1680" y2="2048" x1="352" />
            <wire x2="368" y1="2048" y2="2048" x1="352" />
        </branch>
        <instance x="2592" y="2464" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="208" y="-164" type="instance" />
        </instance>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2240" type="branch" />
            <wire x2="2624" y1="2240" y2="2240" x1="2576" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2288" type="branch" />
            <wire x2="2624" y1="2288" y2="2288" x1="2576" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2384" type="branch" />
            <wire x2="2624" y1="2384" y2="2384" x1="2576" />
        </branch>
        <branch name="led_clk">
            <wire x2="3088" y1="2336" y2="2336" x1="3056" />
        </branch>
        <branch name="led_sout">
            <wire x2="3088" y1="2368" y2="2368" x1="3056" />
        </branch>
        <branch name="led_clrn">
            <wire x2="3088" y1="2432" y2="2432" x1="3056" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="3088" y1="2400" y2="2400" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="2368" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="3088" y="2432" name="led_clrn" orien="R0" />
        <iomarker fontsize="28" x="3088" y="2336" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="3088" y="2400" name="LED_PEN" orien="R0" />
        <branch name="XLXN_14(31:0)">
            <wire x2="1280" y1="2448" y2="2448" x1="1088" />
            <wire x2="1280" y1="1840" y2="2448" x1="1280" />
            <wire x2="1552" y1="1840" y2="1840" x1="1280" />
        </branch>
        <branch name="XLXN_10(0:0)">
            <wire x2="544" y1="2256" y2="2448" x1="544" />
            <wire x2="640" y1="2448" y2="2448" x1="544" />
            <wire x2="1184" y1="2256" y2="2256" x1="544" />
            <wire x2="1552" y1="1744" y2="1744" x1="1184" />
            <wire x2="1184" y1="1744" y2="2256" x1="1184" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="1136" y1="2208" y2="2208" x1="496" />
            <wire x2="496" y1="2208" y2="2528" x1="496" />
            <wire x2="640" y1="2528" y2="2528" x1="496" />
            <wire x2="1552" y1="1696" y2="1696" x1="1136" />
            <wire x2="1136" y1="1696" y2="2208" x1="1136" />
        </branch>
        <branch name="XLXN_147">
            <wire x2="320" y1="2368" y2="2576" x1="320" />
            <wire x2="640" y1="2576" y2="2576" x1="320" />
        </branch>
        <instance x="592" y="1840" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="162" type="instance" />
        </instance>
        <branch name="XLXN_214(9:0)">
            <wire x2="592" y1="2304" y2="2384" x1="592" />
            <wire x2="640" y1="2384" y2="2384" x1="592" />
            <wire x2="1232" y1="2304" y2="2304" x1="592" />
            <wire x2="1552" y1="1792" y2="1792" x1="1232" />
            <wire x2="1232" y1="1792" y2="2304" x1="1232" />
        </branch>
        <instance x="640" y="2304" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="204" type="instance" />
        </instance>
        <instance x="656" y="1040" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-96" type="instance" />
        </instance>
        <bustap x2="464" y1="2048" y2="2048" x1="368" />
        <branch name="PC(11:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="512" y="2048" type="branch" />
            <wire x2="512" y1="2048" y2="2048" x1="464" />
            <wire x2="592" y1="2048" y2="2048" x1="512" />
        </branch>
        <instance x="624" y="1712" name="U1" orien="R0">
            <attrtext style="fontsize:32;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-304" type="instance" />
        </instance>
        <branch name="SW_OK(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1600" type="branch" />
            <wire x2="624" y1="1600" y2="1600" x1="576" />
        </branch>
        <branch name="XLXN_226">
            <wire x2="2144" y1="1808" y2="1808" x1="2048" />
            <wire x2="2144" y1="1808" y2="2032" x1="2144" />
            <wire x2="2144" y1="2032" y2="2032" x1="2048" />
        </branch>
    </sheet>
</drawing>