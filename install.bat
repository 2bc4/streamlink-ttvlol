:: Name:     install.bat
:: Purpose:  Copies the twitch.py file to streamlinks AppData dir
:: Author:   https://steamcommunity.com/id/sokoloft/
:: Revision: December 17/22
:: Notes: 	 Changed file name.

@echo off
title streamlink-ttvlol
:restart
C:
cd "%AppData%"
if exist streamlink (
	cd streamlink
	mkdir plugins
	cd /d "%~dp0"
	xcopy /q /y ".\twitch.py" "%AppData%\streamlink\plugins"
	cls
	color 0a
	echo twitch.py copied successfully.
	echo This window will now close shortly.
	TIMEOUT 7 >nul
	exit
) else (
	cd "%AppData%"
	mkdir streamlink
	cls
	color 0e
	echo streamlink directory not found. So it was created.
	echo Press any key to resume installation...
	pause >nul
	goto restart
)
