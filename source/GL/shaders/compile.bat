@echo off

set PATH=%XEDK%\bin\win32;%PATH%;
set INCLUDE=%XEDK%\include\win32;%XEDK%\include\xbox;%XEDK%\include\xbox\sys;%INCLUDE%
set LIB=%XEDK%\lib\win32;%XEDK%\lib\xbox;%LIB%
set _NT_SYMBOL_PATH=SRV*%XEDK%\bin\xbox\symsrv;%_NT_SYMBOL_PATH%

echo.
echo Setting environment for using Microsoft Xbox 360 SDK tools.
echo.

echo Compile psx shader
fxc /Fh opengl.vs.h /Tvs_3_0 opengl.hlsl /Evs_main
fxc /Fh opengl.ps.h /Tps_3_0 opengl.hlsl /Eps_main
fxc /Fh opengl.ps.test.h /Tps_3_0 opengl.hlsl /Eps_test_main
cmd
