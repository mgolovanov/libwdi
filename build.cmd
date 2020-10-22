@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\Common7\Tools\VsDevCmd.bat" -arch=x86 -host_arch=amd64
cd /d "%~dp0"
pushd "%~dp0"
cd third_party\vcpkg
call bootstrap-vcpkg.bat
vcpkg install libusb-win32
popd
call _bz.cmd
