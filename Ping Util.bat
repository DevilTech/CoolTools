:: Cody's Ping Utility
@echo off
title Ping Utility
color 0F
:home
cls
echo Cody's Ping Utility
echo -------------------------------
echo This File assumes that you are connected to network 10.15.59.XXX
echo type "?" to see what network you are connected to
echo Choose a device to Ping
echo -------------------------------
echo [1] Network Computer
echo [2] cRio
echo [3] Router
echo [4] Camera
echo [5] Camera (Default)
echo [6] Other Address
echo [x] Exit Utility
echo -------------------------------

set /p choice="Enter your choice: "
if "%choice%"=="1" goto cpu
if "%choice%"=="2" goto crio
if "%choice%"=="3" goto router
if "%choice%"=="4" goto camera
if "%choice%"=="5" goto camerad
if "%choice%"=="6" goto other
if "%choice%"=="x" exit
if "%choice%"=="?" goto help
echo Invalid choice: %choice%
echo .
pause
goto home

:cpu
ping 10.15.59.5
echo .
pause
goto home

:crio
ping 10.15.59.2
echo .
pause
goto home

:router
ping 10.15.59.1
echo .
pause
goto home

:camera
ping 10.15.59.11
pause
goto home

:camerad
ping 192.168.0.199
echo .
pause
goto home

:other
set /p choice="Enter Address to Ping: "
ping %choice%
echo .
pause
goto home

:help
ipconfig
echo .
pause
goto home
