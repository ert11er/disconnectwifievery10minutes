@echo off
:LOOP
netsh wlan disconnect
timeout /t 60 > NUL
goto LOOP

