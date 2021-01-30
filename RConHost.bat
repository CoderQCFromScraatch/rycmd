@echo off
call ini /s ConsoleHost /i Disabled config.ini > ini.tmp
for /f "delims=" %%x in (ini.tmp) do set Val=%%x
if %val%==1 (goto disabled) ELSE (goto cmdst)
:cmdst
call rver.bat
goto :cmd
:cmd
cd C:\RMP\rycmd
set "prmpt=RDRIVE"
set "cmd="
set /p"cmd=%prmpt%>"
if not exist "r%cmd%.bat" (echo %cmd% is not a valid command or a file in %prmpt%.) ELSE call "r%cmd%.bat"
goto :cmd
:disabled
echo RyCMD is currently disabled by your administrator
pause
exit /b
