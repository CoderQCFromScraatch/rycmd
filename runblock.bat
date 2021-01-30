@echo off
set /p "delstream=What file or directory to unblock in RDRIVE: "
streams -s -d %delstream%
echo Streams deleted.