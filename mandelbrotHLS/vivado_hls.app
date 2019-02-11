<project xmlns="com.autoesl.autopilot.project" name="MandelHLS" top="calc">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" optimizeCompile="true" ldflags="-Wl,--stack,10485760" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="MandelHLS/pretest.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="MandelHLS/mandel.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="../../../OneDrive/Documents/Visual Studio 2017/Projects/MandelViewer/mandelbrotHLS/mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="NoOpt" status="inactive"/>
        <solution name="MemPart" status="inactive"/>
        <solution name="AXI" status="active"/>
    </solutions>
</project>

