##Author: Vaisak Mohan

@echo off
set loc=%~dp0
echo Root location set as follows:
echo %loc%
pause
for /f "delims=" %%a in ('dir /b /s /a-d *.* ^| findstr /IEV /R "\\*\.mp3" ') do echo "%%~a"
pause
