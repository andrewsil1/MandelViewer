<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="mandelbrotHLS" top="calc">
  <files>
    <file name="mandel.cpp" sc="0" tb="false" cflags=""/>
    <file name="mandelbrotHLS/pretest.cpp" sc="0" tb="false" cflags=""/>
    <file name="../mandel_maintb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
  </files>
  <solutions>
    <solution name="AXI" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation argv="">
    <SimFlow name="csim" optimizeCompile="true" ldflags="-Wl,--stack,10485760" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
