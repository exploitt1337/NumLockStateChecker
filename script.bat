@echo off
setlocal enabledelayedexpansion

:: Get the current NumLock state using PowerShell
for /f %%A in ('powershell -command "[console]::NumberLock"') do (
    set "NumLockState=%%A"
)

:: Display the NumLock state
if "%NumLockState%"=="True" (
    echo NumLock is currently ENABLED.
) else (
    echo NumLock is currently DISABLED.
)

pause
