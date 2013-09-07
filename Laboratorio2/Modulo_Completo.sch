<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8(1:0)" />
        <signal name="nuevo_valor(3:0)" />
        <signal name="time_parameter_selected(1:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="luces(6:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="clk" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="SenalesSincronicas(3:0)" />
        <signal name="XLXN_24" />
        <signal name="SenalesSincronicas(2)" />
        <signal name="XLXN_29(3:0)" />
        <signal name="XLXN_31(3:0)" />
        <signal name="SenalesSincronicas(0)" />
        <signal name="SenalesSincronicas(1)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="SenalesSincronicas(3)" />
        <signal name="XLXN_39" />
        <signal name="Senales_Asincrona(3:0)" />
        <signal name="XLXN_41" />
        <port polarity="Input" name="nuevo_valor(3:0)" />
        <port polarity="Input" name="time_parameter_selected(1:0)" />
        <port polarity="Output" name="luces(6:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Senales_Asincrona(3:0)" />
        <blockdef name="DivisorFrecuencia">
            <timestamp>2013-9-4T13:58:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MaquinaEstadosFinitos">
            <timestamp>2013-9-4T13:59:23</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-208" y2="-208" x1="416" />
            <rect width="64" x="416" y="-140" height="24" />
            <line x2="480" y1="-128" y2="-128" x1="416" />
            <rect width="64" x="416" y="-60" height="24" />
            <line x2="480" y1="-48" y2="-48" x1="416" />
        </blockdef>
        <blockdef name="ParametrosTemporales">
            <timestamp>2013-9-4T13:59:14</timestamp>
            <rect width="416" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-364" height="24" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
        </blockdef>
        <blockdef name="Sincronizador">
            <timestamp>2013-9-4T13:58:53</timestamp>
            <rect width="496" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-108" height="24" />
            <line x2="624" y1="-96" y2="-96" x1="560" />
        </blockdef>
        <blockdef name="Timer">
            <timestamp>2013-9-4T13:58:42</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
        </blockdef>
        <blockdef name="WalkRegister">
            <timestamp>2013-9-4T13:59:5</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <block symbolname="DivisorFrecuencia" name="XLXI_1">
            <blockpin signalname="clk" name="reloj" />
            <blockpin signalname="XLXN_16" name="segunderoSalida" />
        </block>
        <block symbolname="MaquinaEstadosFinitos" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SenalesSincronicas(0)" name="reset" />
            <blockpin signalname="XLXN_21" name="time_expired" />
            <blockpin signalname="SenalesSincronicas(1)" name="sensor" />
            <blockpin signalname="XLXN_5" name="walk_request" />
            <blockpin signalname="XLXN_39" name="WR_requestSalida" />
            <blockpin signalname="XLXN_14" name="start_timerSalida" />
            <blockpin signalname="luces(6:0)" name="lucesSalida(6:0)" />
            <blockpin signalname="XLXN_8(1:0)" name="intervaloSalida(1:0)" />
        </block>
        <block symbolname="ParametrosTemporales" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="clk" />
            <blockpin signalname="SenalesSincronicas(3)" name="reprogram_sincrono" />
            <blockpin signalname="SenalesSincronicas(0)" name="reset_sincrono" />
            <blockpin signalname="time_parameter_selected(1:0)" name="time_parameter_selector(1:0)" />
            <blockpin signalname="nuevo_valor(3:0)" name="time_value(3:0)" />
            <blockpin signalname="XLXN_8(1:0)" name="intervalo(1:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="valor(3:0)" />
        </block>
        <block symbolname="Sincronizador" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Senales_Asincrona(3:0)" name="senales_asincronas(3:0)" />
            <blockpin signalname="SenalesSincronicas(3:0)" name="senales_sincronas(3:0)" />
        </block>
        <block symbolname="WalkRegister" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SenalesSincronicas(2)" name="WR_Sync" />
            <blockpin signalname="XLXN_39" name="WR_Reset" />
            <blockpin signalname="SenalesSincronicas(0)" name="Reset_sincronico" />
            <blockpin signalname="XLXN_5" name="WR_valor" />
        </block>
        <block symbolname="Timer" name="XLXI_5">
            <blockpin signalname="XLXN_16" name="segundero" />
            <blockpin signalname="XLXN_14" name="iniciar_timer" />
            <blockpin signalname="XLXN_12(3:0)" name="valor(3:0)" />
            <blockpin signalname="XLXN_21" name="tiempo_expiroSalida" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1744" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2176" y="944" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1376" y="784" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1984" y1="560" y2="560" x1="1808" />
            <wire x2="1984" y1="560" y2="912" x1="1984" />
            <wire x2="2176" y1="912" y2="912" x1="1984" />
            <wire x2="1984" y1="912" y2="1152" x1="1984" />
            <wire x2="2736" y1="1152" y2="1152" x1="1984" />
        </branch>
        <instance x="2736" y="1504" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_8(1:0)">
            <wire x2="2720" y1="896" y2="896" x1="2656" />
            <wire x2="2720" y1="896" y2="1008" x1="2720" />
            <wire x2="2720" y1="1008" y2="1008" x1="2656" />
            <wire x2="2656" y1="1008" y2="1472" x1="2656" />
            <wire x2="2736" y1="1472" y2="1472" x1="2656" />
        </branch>
        <branch name="nuevo_valor(3:0)">
            <wire x2="2736" y1="1408" y2="1408" x1="368" />
        </branch>
        <instance x="2016" y="1648" name="XLXI_5" orien="R0">
        </instance>
        <branch name="time_parameter_selected(1:0)">
            <wire x2="2720" y1="1344" y2="1344" x1="368" />
            <wire x2="2736" y1="1344" y2="1344" x1="2720" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="1936" y1="1616" y2="1696" x1="1936" />
            <wire x2="3344" y1="1696" y2="1696" x1="1936" />
            <wire x2="2016" y1="1616" y2="1616" x1="1936" />
            <wire x2="3360" y1="1152" y2="1152" x1="3280" />
            <wire x2="3360" y1="1152" y2="1536" x1="3360" />
            <wire x2="3360" y1="1536" y2="1536" x1="3344" />
            <wire x2="3344" y1="1536" y2="1696" x1="3344" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1936" y1="976" y2="1552" x1="1936" />
            <wire x2="2016" y1="1552" y2="1552" x1="1936" />
            <wire x2="2880" y1="976" y2="976" x1="1936" />
            <wire x2="2752" y1="736" y2="736" x1="2656" />
            <wire x2="2752" y1="720" y2="736" x1="2752" />
            <wire x2="2880" y1="720" y2="720" x1="2752" />
            <wire x2="2880" y1="720" y2="976" x1="2880" />
        </branch>
        <branch name="luces(6:0)">
            <wire x2="3392" y1="816" y2="816" x1="2656" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1840" y1="1712" y2="1712" x1="1680" />
            <wire x2="1840" y1="1488" y2="1712" x1="1840" />
            <wire x2="2016" y1="1488" y2="1488" x1="1840" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2176" y1="784" y2="784" x1="1808" />
            <wire x2="1808" y1="784" y2="1776" x1="1808" />
            <wire x2="2528" y1="1776" y2="1776" x1="1808" />
            <wire x2="2528" y1="1488" y2="1488" x1="2496" />
            <wire x2="2528" y1="1488" y2="1776" x1="2528" />
        </branch>
        <branch name="SenalesSincronicas(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="560" type="branch" />
            <wire x2="1040" y1="560" y2="560" x1="896" />
            <wire x2="1040" y1="560" y2="640" x1="1040" />
            <wire x2="1040" y1="640" y2="752" x1="1040" />
            <wire x2="1040" y1="752" y2="832" x1="1040" />
            <wire x2="1040" y1="832" y2="880" x1="1040" />
        </branch>
        <branch name="SenalesSincronicas(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="640" type="branch" />
            <wire x2="1152" y1="640" y2="640" x1="1136" />
            <wire x2="1248" y1="640" y2="640" x1="1152" />
            <wire x2="1376" y1="624" y2="624" x1="1248" />
            <wire x2="1248" y1="624" y2="640" x1="1248" />
        </branch>
        <branch name="clk">
            <wire x2="208" y1="560" y2="560" x1="48" />
            <wire x2="272" y1="560" y2="560" x1="208" />
            <wire x2="1248" y1="352" y2="352" x1="208" />
            <wire x2="1248" y1="352" y2="432" x1="1248" />
            <wire x2="1248" y1="432" y2="560" x1="1248" />
            <wire x2="1264" y1="560" y2="560" x1="1248" />
            <wire x2="1376" y1="560" y2="560" x1="1264" />
            <wire x2="1264" y1="560" y2="1712" x1="1264" />
            <wire x2="1296" y1="1712" y2="1712" x1="1264" />
            <wire x2="2064" y1="432" y2="432" x1="1248" />
            <wire x2="2064" y1="432" y2="656" x1="2064" />
            <wire x2="2176" y1="656" y2="656" x1="2064" />
            <wire x2="208" y1="352" y2="560" x1="208" />
        </branch>
        <branch name="SenalesSincronicas(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="752" type="branch" />
            <wire x2="1200" y1="752" y2="752" x1="1136" />
            <wire x2="1360" y1="752" y2="752" x1="1200" />
            <wire x2="1376" y1="752" y2="752" x1="1360" />
            <wire x2="1360" y1="752" y2="800" x1="1360" />
            <wire x2="2160" y1="800" y2="800" x1="1360" />
            <wire x2="1360" y1="800" y2="1280" x1="1360" />
            <wire x2="2736" y1="1280" y2="1280" x1="1360" />
            <wire x2="2176" y1="720" y2="720" x1="2160" />
            <wire x2="2160" y1="720" y2="800" x1="2160" />
        </branch>
        <bustap x2="1136" y1="752" y2="752" x1="1040" />
        <bustap x2="1136" y1="832" y2="832" x1="1040" />
        <bustap x2="1136" y1="880" y2="880" x1="1040" />
        <bustap x2="1136" y1="640" y2="640" x1="1040" />
        <branch name="SenalesSincronicas(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="832" type="branch" />
            <wire x2="1216" y1="832" y2="832" x1="1136" />
            <wire x2="2064" y1="832" y2="832" x1="1216" />
            <wire x2="2064" y1="832" y2="848" x1="2064" />
            <wire x2="2176" y1="848" y2="848" x1="2064" />
        </branch>
        <branch name="SenalesSincronicas(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="960" type="branch" />
            <wire x2="1168" y1="880" y2="880" x1="1136" />
            <wire x2="1168" y1="880" y2="960" x1="1168" />
            <wire x2="1168" y1="960" y2="1216" x1="1168" />
            <wire x2="2736" y1="1216" y2="1216" x1="1168" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2816" y1="384" y2="384" x1="1328" />
            <wire x2="2816" y1="384" y2="656" x1="2816" />
            <wire x2="1328" y1="384" y2="688" x1="1328" />
            <wire x2="1376" y1="688" y2="688" x1="1328" />
            <wire x2="2816" y1="656" y2="656" x1="2656" />
        </branch>
        <instance x="272" y="656" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Senales_Asincrona(3:0)">
            <wire x2="272" y1="624" y2="624" x1="32" />
        </branch>
        <iomarker fontsize="28" x="48" y="560" name="clk" orien="R180" />
        <iomarker fontsize="28" x="32" y="624" name="Senales_Asincrona(3:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1408" name="nuevo_valor(3:0)" orien="R180" />
        <iomarker fontsize="28" x="3392" y="816" name="luces(6:0)" orien="R0" />
        <iomarker fontsize="28" x="368" y="1344" name="time_parameter_selected(1:0)" orien="R180" />
    </sheet>
</drawing>