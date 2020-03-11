@ECHO OFF

rem Build the p8 platform library for Windows

SETLOCAL

SET MYDIR=%~dp0
SET BUILDTYPE=Debug
SET VSVERSION=16
SET INSTALLPATH=%MYDIR%..\build

rmdir %MYDIR%..\build /s /q

for %%T in (amd64 x86) do (
  call %MYDIR%\build-lib.cmd %%T %BUILDTYPE% %VSVERSION% %INSTALLPATH%
)

rem rmdir %MYDIR%..\build\cmake /s /q
