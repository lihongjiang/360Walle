cd %~dp0
@echo off
setlocal enabledelayedexpansion
call "readconfig.bat" %~dp0config\config.ini

rd %apkOutPutPath%  /S /Q
md %apkOutPutPath%
dir %apkOutPutPath%
setlocal disabledelayedexpansion

SET STORE_PASSWORD=password
SET KEY_PASSWORD=password

@echo on
java -jar %jiagurootpath%jiagu.jar -login  %jiagulogin% %jiagupass%
java -jar %jiagurootpath%jiagu.jar -importsign  %STORE_FILE% %STORE_PASSWORD% %KEY_ALIAS% %KEY_PASSWORD%
java -jar %jiagurootpath%jiagu.jar -showsign
java -jar %jiagurootpath%jiagu.jar -jiagu %jiaguapppath% %apkOutPutPath% -autosign

ren %apkOutPutPath%\*.apk %apkOutPutName%

java -jar %~dp0getPackageInfo.jar %apkOutPutPath%%apkOutPutName%
java -jar %~dp0walle-cli-all.jar batch -f %apkChannelpath%  %apkOutPutPath%%apkOutPutName%