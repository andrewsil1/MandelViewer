<project xmlns="com.autoesl.autopilot.project" name="mandelbrotHLS" top="calc">
    <files>
        <file name="../mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../../mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="pretest.cpp" sc="0" tb="false" cflags=""/>
        <file name="mandel.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" optimizeCompile="true" ldflags="-Wl,--stack,10485760" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="AXI" status="active"/>
    </solutions>
</project>

