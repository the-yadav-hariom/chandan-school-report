# PowerShell Launcher for School Report Card System
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Starting School Report Card System (Backend + Frontend) " -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

Set-Location -Path $PSScriptRoot

Write-Host "`n[1/2] Starting Backend Server (Port 5000)..." -ForegroundColor Green
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$PSScriptRoot'; npm run server"

Start-Sleep -Seconds 2

Write-Host "[2/2] Starting Frontend App (Port 8080)..." -ForegroundColor Green
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$PSScriptRoot'; npm run client"

Write-Host "`nBoth servers have been launched in separate windows!" -ForegroundColor Yellow
Write-Host "Frontend:    http://localhost:8080" -ForegroundColor White
Write-Host "Backend API: http://localhost:5000/api/health`n" -ForegroundColor White
