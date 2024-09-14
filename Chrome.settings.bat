@echo off
set /p PROFILE_NAME="Chrome Profile? "
set "USER_DATA_DIR=%~dp0chrome_profile\%PROFILE_NAME%"
echo USER_DATA_DIR: %USER_DATA_DIR%
if not exist "%USER_DATA_DIR%" (
    mkdir "%USER_DATA_DIR%"
)
start chrome.exe --remote-debugging-port=9223 --user-data-dir="%USER_DATA_DIR%"