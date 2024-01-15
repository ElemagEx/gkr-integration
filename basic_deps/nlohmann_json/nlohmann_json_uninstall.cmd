@echo off

echo Removing previously installed nlohmann json ...

if not exist "%ProgramFiles%\nlohmann_json" goto next

rd /S /Q "%ProgramFiles%\nlohmann_json"

:next

if not exist "%ProgramFiles(x86)%\nlohmann_json" goto end

rd /S /Q "%ProgramFiles(x86)%\nlohmann_json"

:end
