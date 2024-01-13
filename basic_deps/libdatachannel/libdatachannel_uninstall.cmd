@echo off

echo Removing previously installed libDataChannel ...

if not exist "%ProgramFiles%\libdatachannel" goto next

rd /S /Q "%ProgramFiles%\libdatachannel"

:next

if not exist "%ProgramFiles(x86)%\libdatachannel" goto end

rd /S /Q "%ProgramFiles(x86)%\libdatachannel"

:end
