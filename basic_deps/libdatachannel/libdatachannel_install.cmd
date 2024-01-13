@echo off
if "%1" == "" (set ldc_tag=v0.19.5) else (set ldc_tag=%1)
echo Installing libDataChannel %ldc_tag% ...
if exist tmp rd /S /Q tmp
md tmp
cd tmp
git clone --branch %ldc_tag% --depth 1 --recurse-submodules https://github.com/paullouisageneau/libdatachannel
cd libdatachannel
cmake -A x64   -S . -B x64-build -DNO_EXAMPLES=ON -DNO_TESTS=ON -DCAPI_STDCALL=ON -DCMAKE_DEBUG_POSTFIX=d
cmake -A Win32 -S . -B x86-build -DNO_EXAMPLES=ON -DNO_TESTS=ON -DCAPI_STDCALL=ON -DCMAKE_DEBUG_POSTFIX=d
cmake --build x64-build --config Debug   --target INSTALL
cmake --build x64-build --config Release --target INSTALL
@rem cmake --build x86-build --config Debug   --target INSTALL
@rem cmake --build x86-build --config Release --target INSTALL
@rem 32-bit not compile for reason crypto api 32-bit is not installed - must be tested with installed 32-bit crypto API
cd ..\..
cd ..
rd /S /Q tmp
