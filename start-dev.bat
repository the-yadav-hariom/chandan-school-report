@echo off
title School Report Card System Launcher
echo ========================================================
echo   Starting School Report Card System (Backend + Frontend)
echo ========================================================
echo.

cd /d "%~dp0"

echo [1/2] Starting Express Backend on Port 5000...
start "Backend Server (Port 5000)" cmd /k "npm run server"

timeout /t 2 /nobreak >nul

echo [2/2] Starting Vite Frontend on Port 8080...
start "Frontend Client (Port 8080)" cmd /k "npm run client"

echo.
echo Both servers started!
echo - Frontend: http://localhost:8080
echo - Backend API: http://localhost:5000/api/health
echo.
pause
