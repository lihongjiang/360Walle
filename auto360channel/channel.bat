@echo off
setlocal enabledelayedexpansion
call "readconfig.bat" %~dp0config\config.ini
setlocal disabledelayedexpansion
@echo off
java -jar ./getPackageInfo.jar %apkOutPutPath%%apkOutPutName%
java -jar walle-cli-all.jar batch -f %apkChannelpath%  %apkOutPutPath%%apkOutPutName%