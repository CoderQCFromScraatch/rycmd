@echo off
cd C:\RMP\rycmd\RubCmSettings\
call ini.bat /s RScript /i RequireAdmin config.ini>ini.tmp
for /f "delims=" %%x in (ini.tmp) do set Vala=%%x
title RyCMD
cd C:\RMP\rycmd
if %Vala%==1 (call host.exe) ELSE (call RConHost.exe)
exit
