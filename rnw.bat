@echo off
cd R:\
set /p "file=Type in a .nw file in %prmpt% to start it: "
cd C:\rmp\RyCMD\nw
copy /y R:\%file% C:\rmp\RyCMD\nw
start nw.exe