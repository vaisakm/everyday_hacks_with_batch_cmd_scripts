::Author: Vaisak Mohan

@echo off
setlocal enabledelayedexpansion
set loc=%~dp0
echo Root location set as follows:
echo %loc%
pause
for /f "delims=" %%I in ('dir /b /s /a-d *.png') do (
    attrib -s -h "%%I"
    del "%%I"
   )
for /f "delims=" %%F in ('dir /b /s /a-d *.txt') do (
    attrib -s -h "%%F"
    del "%%F"
   )
for /f "delims=" %%F in ('dir /b /s /a-d *.nfo') do (
    attrib -s -h "%%F"
    del "%%F"
   )
for /f "delims=" %%F in ('dir /b /s /a-d *.gif') do (
    attrib -s -h "%%F"
    del "%%F"
   )
pause
