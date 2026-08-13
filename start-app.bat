@echo off
setlocal
cd /d "%~dp0"

set PORT=3000
set URL=http://localhost:%PORT%

echo ===========================================
echo   GitHub Repo Pusher - Launcher
echo ===========================================
echo.

rem -- Free the port if it is already in use by a leftover process --
for /f "tokens=5" %%a in ('netstat -ano ^| findstr /r /c:":%PORT% .*LISTENING"') do (
    echo Port %PORT% is busy, stopping process %%a
    taskkill /f /pid %%a >nul 2>&1
)
timeout /t 1 /nobreak >nul

rem -- Check that dependencies are installed --
if not exist "node_modules" (
    echo Installing dependencies, please wait...
    call pnpm install
)

rem -- Start the development server in a separate window --
echo Starting the application on %URL% ...
start "GitHub Repo Pusher" cmd /c "cd /d "%CD%" && pnpm dev"

rem -- Wait for the server to become ready, then open the browser --
echo Waiting for the server to be ready...
set "loop=0"
:waitloop
set /a loop+=1
>nul 2>&1 curl -s -o nul "%URL%"
if %errorlevel%==0 goto ready
if %loop% geq 45 (
    echo Server did not respond in time. Check the opened window for errors.
    goto done
)
timeout /t 1 /nobreak >nul
goto waitloop

:ready
echo Server is ready. Opening browser...
start "" "%URL%"

:done
echo.
echo The launcher can be closed. The application keeps running in its own window.
endlocal