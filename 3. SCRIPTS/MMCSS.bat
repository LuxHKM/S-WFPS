@echo off
color c
:home
cls
timeout /t 2 /nobreak >nul
echo --------------------------------
echo - 1. Habilitar MMCSS
echo --------------------------------
set /p menu2=:
if %menu2% EQU 1 goto e

:e
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MMCSS" /v "Start" /t REG_DWORD /d "2" /f
timeout /t 2 /nobreak >NUL 2>&1
exit
