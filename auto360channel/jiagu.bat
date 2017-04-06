@echo off
setlocal enabledelayedexpansion
call "readconfig.bat" %~dp0config\config.ini
setlocal disabledelayedexpansion

rd %apkOutPutPath%  /S /Q
md %apkOutPutPath%
dir %apkOutPutPath%

@echo off
java -jar %jiagurootpath%jiagu.jar -login  %jiagulogin% %jiagupass%
java -jar %jiagurootpath%jiagu.jar -jiagu %jiaguapppath% %apkOutPutPath%

ren %apkOutPutPath%\*.apk %apkOutPutName%