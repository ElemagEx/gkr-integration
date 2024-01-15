# [libDataChannel](https://github.com/paullouisageneau/libdatachannel) basic integration

Shows how to integrate libDataChannel in your project.
Just copy all `cmd` (Windows) or all `sh` (Linux, MacOS) files in your reposity and eventually modify them accordingly your needs.

- both Windows and Linux requires administrative rights to execute
```
@rem must be executed in administrative mode
./bootstrap.cmd [tag]
```
- for Linux, MacOS
```
sudo ./bootstrap.sh [tag]
```

> NOTE: If the optional argument is provided it must specifies a valid libDataChannel repository tag. Otherwise `v0.19.5` tag is used.

Build and run `ldc_build_test` executable to ensure the libDataChannel package is properly installed.
