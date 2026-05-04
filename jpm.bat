@echo off
setlocal

cd /d "%~dp0"

where java >nul 2>nul
if %errorlevel% neq 0 (
    echo Java is not installed or not added to PATH.
    pause
    exit /b
)

java -jar "wrapper\JPMUpdater.jar" %*

endlocal