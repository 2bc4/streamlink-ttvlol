:: Name:     install.bat
:: Purpose:  Copies the twitch.py file to streamlinks AppData dir
:: Author:   https://steamcommunity.com/id/sokoloft/
:: Revision: December 17/22
:: Notes: 	 Changed file name.

@echo off
title streamlink-ttvlol_install
cd "%AppData%"
if exist streamlink (
	cd streamlink
	mkdir plugins
	cd /d "%~dp0"
	xcopy /q /y ".\twitch.py" "%AppData%\streamlink\plugins"
	cls
	color 0a
	echo twitch.py copied successfully.
	echo This window will now close.
	TIMEOUT 5
	exit
) else (
	color 0c
	echo Error.
	echo Unable to find streamlink AppData directory.
	pause
)
