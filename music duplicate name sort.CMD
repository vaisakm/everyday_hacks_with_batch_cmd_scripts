::Author: Vaisak Mohan

@echo off
set loc=%~dp0
echo Root location set as follows:
echo %loc%
pause
FOR /f delims^=, %%I in ('dir /b /s *.ogg') do (
  if exist "%%~nI.mp3" 2> nul md "%%~dpIogg" & move "%%~I" "%%~dpIogg"
  	)
pause
