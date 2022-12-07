:: Name:     streamlink-ttvlol_install.bat
:: Purpose:  Copies the twitch.py file to streamlinks default install dir
:: Author:   https://steamcommunity.com/id/sokoloft/
:: Revision: December 6/22
:: Notes: 	 This is simple and can probably be expanded on to check where the users streamlink install is. I might add that functionality in the future.


@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title streamlink-ttvlol_install
cd /d "%~dp0"
xcopy /q /y ".\twitch.py" "%ProgramFiles%\Streamlink\pkgs\streamlink\plugins"
echo twitch.py copied successfully.
pause
