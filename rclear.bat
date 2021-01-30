@echo off
:ask
set /p "yn=Are you sure you want to clear the console? [Y/N]: "
if %yn%==y (cls&echo Cleared the console.) else (echo The operation has been aborted.) 
