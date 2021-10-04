::Author: Vaisak Mohan

@echo off
set loc=%~dp0
echo Root location set as follows:
echo %loc%
pause
for /f delims^=, %%I in ('dir /b /s *.*') do (
  if exist "%%~I" (move "%%I" "%loc%")
   )
pause
