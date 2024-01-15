@echo off
if "%1" == "" (set nlohman_json_tag=v3.11.3) else (set nlohman_json_tag=%1)
echo Installing nlohmann json %nlohman_json_tag% ...
if exist tmp rd /S /Q tmp
md tmp
cd tmp
git clone --branch %nlohman_json_tag% --depth 1 https://github.com/nlohmann/json
cd json
cmake -A x64   -S . -B x64-build -DJSON_BuildTests=OFF -DJSON_Install=ON
cmake -A Win32 -S . -B x86-build -DJSON_BuildTests=OFF -DJSON_Install=ON
cmake --build x64-build --config Debug   --target INSTALL
cmake --build x64-build --config Release --target INSTALL
cmake --build x86-build --config Debug   --target INSTALL
cmake --build x86-build --config Release --target INSTALL
cd ..\..
rd /S /Q tmp
