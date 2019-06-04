<project xmlns="com.autoesl.autopilot.project" name="mandelbrotHLS" top="calc">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" optimizeCompile="true" ldflags="-Wl,--stack,10485760" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="mandelbrotHLS/mandel.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="mandelbrotHLS/pretest.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="AXI" status="active"/>
        <solution name="AXI" status="active"/>
    </solutions>
</project>

