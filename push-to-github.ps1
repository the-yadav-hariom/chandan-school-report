# PowerShell script to push code to GitHub
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  Pushing code to GitHub:                               " -ForegroundColor Cyan
Write-Host "  https://github.com/the-yadav-hariom/chandan-school-report" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

Set-Location -Path $PSScriptRoot

# 1. Check Git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "`n[ERROR] Git is not installed or not in PATH." -ForegroundColor Red
    Write-Host "Please install Git from https://git-scm.com/ and try again."
    pause
    exit
}

# 2. Init
if (-not (Test-Path ".git")) {
    Write-Host "`n[1/5] Initializing Git repository..." -ForegroundColor Green
    git init
}
git branch -M main

# 3. Remote
Write-Host "`n[2/5] Setting remote origin..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin https://github.com/the-yadav-hariom/chandan-school-report.git

# 4. Stage
Write-Host "`n[3/5] Staging files..." -ForegroundColor Green
git add .

# 5. Commit
Write-Host "`n[4/5] Committing changes..." -ForegroundColor Green
git commit -m "Initial commit: School Report Card System"

# 6. Push
Write-Host "`n[5/5] Pushing to main branch..." -ForegroundColor Green
git push -u origin main

if ($LASTEXITCODE -ne 0) {
    Write-Host "`n[NOTE] Push failed. If the remote has initial commits, pulling with rebase..." -ForegroundColor Yellow
    git pull --rebase origin main
    git push -u origin main
}

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n========================================================" -ForegroundColor Green
    Write-Host "  SUCCESS! Code pushed successfully." -ForegroundColor Green
    Write-Host "========================================================" -ForegroundColor Green
} else {
    Write-Host "`n========================================================" -ForegroundColor Red
    Write-Host "  Push failed. Check credentials or permissions." -ForegroundColor Red
    Write-Host "========================================================" -ForegroundColor Red
}
