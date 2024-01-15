# [nlohmann/json](https://github.com/nlohmann/json) basic integration

Shows how to integrate nlohmann/json in your project.
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

> NOTE: If the optional argument is provided it must specifies a valid nlohmann/json repository tag. Otherwise `v3.11.3` tag is used.

Build and run project `nlohmann_json_test` executable to ensure the nlohmann/json package is properly installed.
