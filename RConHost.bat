@echo off
cd C:\RMP\rycmd\RubCmSettings
call ini /s ConsoleHost /i Prompt config.ini > ini.tmp
for /f "delims=" %%x in (ini.tmp) do set prmpt=%%x
call ini /s ConsoleHost /i CmdDir config.ini > ini.tmp
for /f "delims=" %%x in (ini.tmp) do set cmddir=%%x
call ini /s ConsoleHost /i Startup config.ini > ini.tmp
for /f "delims=" %%x in (ini.tmp) do set startup=%%x
call ini /s ConsoleHost /i Disabled config.ini > ini.tmp
for /f "delims=" %%x in (ini.tmp) do set Val=%%x
if %val%==1 (goto disabled) ELSE (goto cmdst)
:cmdst
cd %cmddir%
call r%startup%.bat
goto :cmd
:cmd
cd %cmddir%
set "cmd="
set /p"cmd=%prmpt%>"
if not exist "r%cmd%.bat" (echo %cmd% is not a valid command or a file in %prmpt%.) ELSE call "r%cmd%.bat"
goto :cmd
:disabled
echo RyCMD is currently disabled by your administrator
pause
exit /b
