@echo off
call :check_Permissions
curl.exe https://raw.githubusercontent.com/ert11er/disconnectwifievery10minutes/main/disconnect.bat -o disconnect.bat
curl.exe https://raw.githubusercontent.com/ert11er/disconnectwifievery10minutes/main/runashidden.vbs -o runashidden.vbs
REM start runashidden.vbs
exit

:check_Permissions
net session >nul 2>&1
if %errorLevel% == 0 (
    cls
) else (
    powershell.exe -Command "Start-Process -Verb RunAs -FilePath \"%~f0\""
    exit
)
