@echo off
color c
:home
cls
echo.
echo -----------------------------------------
echo - 1. Disable LargeSystemCache (Default) -
echo -----------------------------------------
echo.
set /p lsc=:
if %lsc% EQU 1 goto 1
goto home

:1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
exit