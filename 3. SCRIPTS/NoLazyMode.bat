@echo off
mode con: cols=83 lines=20
color c
:home
cls
echo -----------------------------
echo - NoLazyMode at 1 (ON)   -	 
echo -----------------------------
echo.
set /p nlm=Select an option: 
if %nlm% EQU 1 goto 1
goto home

:1
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
echo Done, restart your computer and test it.
timeout /t 3 /nobreak
exit
