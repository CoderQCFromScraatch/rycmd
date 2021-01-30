@echo off
if not exist R:\ (echo Error reading RDRIVE. Maybe it's not connected or not assigned to the correct drive letter.) ELSE (dir /R R:\)