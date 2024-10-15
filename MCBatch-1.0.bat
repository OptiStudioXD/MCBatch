@echo off
color 0A
title MCBatch Launcher


if "%PROCESSOR_ARCHITECTURE%"=="x86" (
  goto 32Bits
) else (
  goto 64Bits
)

::Para mis compas de 32Bits
:32Bits

:: Local Route
cd /d "%~dp0"

:: Game Route
set MC_DIR=%CD%\mcdata

:: Options, World, Saves
set GAME_DIR="%MC_DIR%"

:: Runtimes DIR
set ASSETS_DIR="assets"
set NATIVES_DIR="natives"

:: Args
set GC=-XX:+IgnoreUnrecognizedVMOptions -XX:+UnlockExperimentalVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AggressiveOpts -XX:+AlwaysPreTouch -XX:+UseAES -XX:-DontCompileHugeMethods -XX:+DisableAttachMechanism -XX:+OptimizeStringConcat -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UseBiasedLocking -XX:+UseCodeCacheFlushing -XX:+UseCompressedOops -XX:+UseFastJNIAccessors -XX:+UseFastAccessorMethods -XX:+UseNUMA -XX:+UseStringDeduplication -XX:+UseThreadPriorities -XX:+UseVectorCmov -XX:+DisableExplicitGC -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -XX:+PerfDisableSharedMem -XX:G1HeapRegionSize=16M -XX:G1NewSizePercent=23 -XX:G1ReservePercent=20 -XX:SurvivorRatio=32 -XX:G1MixedGCCountTarget=3 -XX:G1HeapWastePercent=20 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1RSetUpdatingPauseTimePercent=0 -XX:MaxTenuringThreshold=1 -XX:G1SATBBufferEnqueueingThresholdPercent=30 -XX:G1ConcMarkStepDurationMillis=5.0 -XX:G1ConcRSHotCardLimit=16 -XX:G1ConcRefinementServiceIntervalMillis=150 -XX:GCTimeRatio=99 -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Dfml.ignoreInvalidMinecraftCertificates=true -Dfml.ignorePatchDiscrepancies=true -Djava.net.useSystemProxies=true -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Dsun.rmi.dgc.server.gcInterval=2147483646 -Djava.net.preferIPv4Stack=true -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true
set RAM=-Xms64M -Xmx1024M

:: Player Name
echo Solo version 1.20.4!
set /p PLAYER_NAME=Username: 

:: CD game route
cd /d "%~dp0\mcdata"

:: Start Game
start "" "runtime\32\bin\minecraft.exe" %RAM% %GC% -Djava.library.path=%NATIVES_DIR% -cp "libraries\lwjgl-stb-3.3.2-natives-windows-x86.jar;libraries\lwjgl-stb-3.3.2-natives-windows.jar;libraries\lwjgl-opengl-3.3.2-natives-windows-x86.jar;libraries\lwjgl-opengl-3.3.2-natives-windows.jar;libraries\lwjgl-openal-3.3.2-natives-windows-x86.jar;libraries\lwjgl-openal-3.3.2-natives-windows.jar;libraries\lwjgl-jemalloc-3.3.2-natives-windows-x86.jar;libraries\lwjgl-jemalloc-3.3.2-natives-windows.jar;libraries\lwjgl-glfw-3.3.2-natives-windows-x86.jar;libraries\lwjgl-glfw-3.3.2-natives-windows.jar;libraries\lwjgl-3.3.2-natives-windows-x86.jar;libraries\lwjgl-3.3.2-natives-windows.jar;libraries\guava-32.1.2-jre.jar;libraries\logging-1.1.1.jar;libraries\blocklist-1.0.10.jar;libraries\patchy-2.2.10.jar;libraries\oshi-core-6.4.5.jar;libraries\jna-5.13.0.jar;libraries\jna-platform-5.13.0.jar;libraries\blocklist-1.0.10.jar;libraries\slf4j-api-2.0.7.jar;libraries\log4j-slf4j2-impl-2.19.0.jar;libraries\icu4j-73.2.jar;libraries\netty-common-4.1.97.Final.jar;libraries\netty-buffer-4.1.97.Final.jar;libraries\netty-codec-4.1.97.Final.jar;libraries\netty-handler-4.1.97.Final.jar;libraries\netty-resolver-4.1.97.Final.jar;libraries\netty-transport-4.1.97.Final.jar;libraries\netty-transport-native-unix-common-4.1.97.Final.jar;libraries\netty-transport-classes-epoll-4.1.97.Final.jar;libraries\failureaccess-1.0.1.jar;libraries\gson-2.10.1.jar;libraries\commons-lang3-3.13.0.jar;libraries\commons-io-2.13.0.jar;libraries\commons-codec-1.16.0.jar;libraries\brigadier-1.2.9.jar;libraries\jopt-simple-5.0.4.jar;libraries\datafixerupper-6.0.8.jar;libraries\gson-2.10.1.jar;libraries\authlib-6.0.52.2.jar;libraries\commons-compress-1.22.jar;libraries\httpclient-4.5.13.jar;libraries\commons-logging-1.2.jar;libraries\fastutil-8.5.12.jar;libraries\httpcore-4.4.16.jar;libraries\log4j-api-2.19.0.jar;libraries\log4j-core-2.19.0.jar;libraries\lwjgl-glfw-3.3.2.jar;libraries\joml-1.10.5.jar;libraries\lwjgl-3.3.2.jar;libraries\lwjgl-stb-3.3.2.jar;libraries\lwjgl-jemalloc-3.3.2.jar;libraries\lwjgl-openal-3.3.2.jar;libraries\lwjgl-opengl-3.3.2.jar;libraries\lwjgl-tinyfd-3.3.2.jar;libraries\text2speech-1.17.9.jar;libraries\access-widener-2.1.0.jar;libraries\fabric-loader-0.15.7.jar;libraries\intermediary-1.20.4.jar;libraries\tiny-mappings-parser-0.3.0build.17.jar;libraries\asm-util-9.6.jar;libraries\asm-tree-9.6.jar;libraries\asm-debug-all-5.2.jar;libraries\asm-commons-9.6.jar;libraries\asm-analysis-9.6.jar;libraries\asm-9.6.jar;libraries\tiny-remapper-0.8.2.jar;libraries\sponge-mixin-0.12.5mixin.0.8.5.jar;libraries\game.jar" net.fabricmc.loader.impl.launch.knot.KnotClient --username %PLAYER_NAME% --version 1.20.4 --accessToken [random] --userProperties {} --gameDir %GAME_DIR% --assetsDir %ASSETS_DIR% --assetIndex 1.20 --width 925 --height 530 -DFabricMcEmu= net.minecraft.client.main.Main --assetIndex 12 --uuid e4ff1ea62ec43e1ca0ceb206a0d472b5
exit

:: Para mis compas de 64Bits
:64Bits

:: Local Route
cd /d "%~dp0"

:: Game Route
set MC_DIR=%CD%\mcdata

:: Options, World, Saves
set GAME_DIR="%MC_DIR%"

:: Runtimes DIR
set ASSETS_DIR="assets"
set NATIVES_DIR="natives"

:: Args
set GC=-XX:+IgnoreUnrecognizedVMOptions -XX:+UnlockExperimentalVMOptions -XX:+AlwaysActAsServerClassMachine -XX:+AggressiveOpts -XX:+AlwaysPreTouch -XX:+UseAES -XX:-DontCompileHugeMethods -XX:+DisableAttachMechanism -XX:+OptimizeStringConcat -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UseBiasedLocking -XX:+UseCodeCacheFlushing -XX:+UseCompressedOops -XX:+UseFastJNIAccessors -XX:+UseFastAccessorMethods -XX:+UseNUMA -XX:+UseStringDeduplication -XX:+UseThreadPriorities -XX:+UseVectorCmov -XX:+DisableExplicitGC -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -XX:+PerfDisableSharedMem -XX:G1HeapRegionSize=16M -XX:G1NewSizePercent=23 -XX:G1ReservePercent=20 -XX:SurvivorRatio=32 -XX:G1MixedGCCountTarget=3 -XX:G1HeapWastePercent=20 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1RSetUpdatingPauseTimePercent=0 -XX:MaxTenuringThreshold=1 -XX:G1SATBBufferEnqueueingThresholdPercent=30 -XX:G1ConcMarkStepDurationMillis=5.0 -XX:G1ConcRSHotCardLimit=16 -XX:G1ConcRefinementServiceIntervalMillis=150 -XX:GCTimeRatio=99 -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Dfml.ignoreInvalidMinecraftCertificates=true -Dfml.ignorePatchDiscrepancies=true -Djava.net.useSystemProxies=true -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe_minecraft.exe.heapdump -Dsun.rmi.dgc.server.gcInterval=2147483646 -Djava.net.preferIPv4Stack=true -Dfml.ignorePatchDiscrepancies=true -Dfml.ignoreInvalidMinecraftCertificates=true
set RAM=-Xms64M -Xmx2048M

:: Player Name
echo SOLO VERSION 1.20.4
set /p PLAYER_NAME=Username: 

:: CD game route
cd /d "%~dp0\mcdata"

:: Start Game
start "" "runtime\64\bin\minecraft.exe" %RAM% %GC% -Djava.library.path=%NATIVES_DIR% -cp "libraries\lwjgl-stb-3.3.2-natives-windows-x86.jar;libraries\lwjgl-stb-3.3.2-natives-windows.jar;libraries\lwjgl-opengl-3.3.2-natives-windows-x86.jar;libraries\lwjgl-opengl-3.3.2-natives-windows.jar;libraries\lwjgl-openal-3.3.2-natives-windows-x86.jar;libraries\lwjgl-openal-3.3.2-natives-windows.jar;libraries\lwjgl-jemalloc-3.3.2-natives-windows-x86.jar;libraries\lwjgl-jemalloc-3.3.2-natives-windows.jar;libraries\lwjgl-glfw-3.3.2-natives-windows-x86.jar;libraries\lwjgl-glfw-3.3.2-natives-windows.jar;libraries\lwjgl-3.3.2-natives-windows-x86.jar;libraries\lwjgl-3.3.2-natives-windows.jar;libraries\empty-0.1.jar;libraries\guava-32.1.2-jre.jar;libraries\logging-1.1.1.jar;libraries\blocklist-1.0.10.jar;libraries\patchy-2.2.10.jar;libraries\oshi-core-6.4.5.jar;libraries\jna-5.13.0.jar;libraries\jna-platform-5.13.0.jar;libraries\blocklist-1.0.10.jar;libraries\slf4j-api-2.0.7.jar;libraries\log4j-slf4j2-impl-2.19.0.jar;libraries\icu4j-73.2.jar;libraries\netty-common-4.1.97.Final.jar;libraries\netty-buffer-4.1.97.Final.jar;libraries\netty-codec-4.1.97.Final.jar;libraries\netty-handler-4.1.97.Final.jar;libraries\netty-resolver-4.1.97.Final.jar;libraries\netty-transport-4.1.97.Final.jar;libraries\netty-transport-native-unix-common-4.1.97.Final.jar;libraries\netty-transport-classes-epoll-4.1.97.Final.jar;libraries\failureaccess-1.0.1.jar;libraries\gson-2.10.1.jar;libraries\commons-lang3-3.13.0.jar;libraries\commons-io-2.13.0.jar;libraries\commons-codec-1.16.0.jar;libraries\brigadier-1.2.9.jar;libraries\jopt-simple-5.0.4.jar;libraries\datafixerupper-6.0.8.jar;libraries\gson-2.10.1.jar;libraries\authlib-6.0.52.2.jar;libraries\commons-compress-1.22.jar;libraries\httpclient-4.5.13.jar;libraries\commons-logging-1.2.jar;libraries\fastutil-8.5.12.jar;libraries\httpcore-4.4.16.jar;libraries\log4j-api-2.19.0.jar;libraries\log4j-core-2.19.0.jar;libraries\lwjgl-glfw-3.3.2.jar;libraries\joml-1.10.5.jar;libraries\lwjgl-3.3.2.jar;libraries\lwjgl-stb-3.3.2.jar;libraries\lwjgl-jemalloc-3.3.2.jar;libraries\lwjgl-openal-3.3.2.jar;libraries\lwjgl-opengl-3.3.2.jar;libraries\lwjgl-tinyfd-3.3.2.jar;libraries\text2speech-1.17.9.jar;libraries\access-widener-2.1.0.jar;libraries\fabric-loader-0.15.7.jar;libraries\intermediary-1.20.4.jar;libraries\tiny-mappings-parser-0.3.0build.17.jar;libraries\asm-util-9.6.jar;libraries\asm-tree-9.6.jar;libraries\asm-debug-all-5.2.jar;libraries\asm-commons-9.6.jar;libraries\asm-analysis-9.6.jar;libraries\asm-9.6.jar;libraries\tiny-remapper-0.8.2.jar;libraries\sponge-mixin-0.12.5mixin.0.8.5.jar;libraries\game.jar" net.fabricmc.loader.impl.launch.knot.KnotClient --username %PLAYER_NAME% --version 1.20.4 --accessToken [random] --userProperties {} --gameDir %GAME_DIR% --assetsDir %ASSETS_DIR% --assetIndex 1.20 --width 925 --height 530 -DFabricMcEmu= net.minecraft.client.main.Main --assetIndex 12 --uuid e4ff1ea62ec43e1ca0ceb206a0d472b5
exit

:exit
pause
exit
