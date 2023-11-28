# [Catch2](https://github.com/catchorg/Catch2) basic integration

Shows how to integrate Catch2 in your project.
Just copy all `cmd` (Windows) or all `sh` (Linux, MacOS) files in your reposity and eventually modify them accordingly your needs.
The execution of script files will install Catch2 package.

- for Windows (must have administrative rights)
```
./bootstrap.cmd [tag]
```
- for Linux, MacOS
```
sudo ./bootstrap.sh [tag]
```

> NOTE: If the optional argument is provided it must specifies a valid Catch2 repository tag. Otherwise `v3.4.0` tag is used.

Build and run project to ensure the Catch2 package is properly installed.
