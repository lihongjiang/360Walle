@ECHO OFF
setlocal enabledelayedexpansion
call "readconfig.bat" %~dp0config\config.ini
setlocal disabledelayedexpansion

start "" "%~dp0inputpassword.vbs"
@ECHO ON
%apksignerpath%apksigner sign --ks %STORE_FILE% --ks-key-alias %KEY_ALIAS% %apkOutPutPath%%apkOutPutName% 