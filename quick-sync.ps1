# GitHub Auto Sync Script
# Double-click to run

Write-Host "===============================================" -ForegroundColor Cyan
Write-Host " GitHub Sync Tool - Don Quixote Theme" -ForegroundColor Cyan
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host ""

Set-Location "d:\gh\konghenfuxue-cpu.github.io-master\konghenfuxue-cpu.github.io-master"

Write-Host "[1/4] Checking status..." -ForegroundColor Yellow
git status
Write-Host ""

Write-Host "[2/4] Adding files..." -ForegroundColor Yellow
git add .
Write-Host "Files added" -ForegroundColor Green
Write-Host ""

Write-Host "[3/4] Committing..." -ForegroundColor Yellow
$date = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "update: $date"
Write-Host ""

Write-Host "[4/4] Pushing to GitHub..." -ForegroundColor Yellow
$success = $false
for ($i = 1; $i -le 3; $i++) {
    Write-Host "Attempt $i of 3..." -ForegroundColor Cyan
    git push origin master
    if ($LASTEXITCODE -eq 0) {
        $success = $true
        Write-Host "SUCCESS!" -ForegroundColor Green
        break
    }
    if ($i -lt 3) {
        Write-Host "Failed. Retrying in 5 seconds..." -ForegroundColor Yellow
        Start-Sleep -Seconds 5
    }
}

Write-Host ""
Write-Host "===============================================" -ForegroundColor Cyan
if ($success) {
    Write-Host " SYNC COMPLETED!" -ForegroundColor Green
    Write-Host " Visit: https://konghenfuxue-cpu.github.io/" -ForegroundColor Cyan
} else {
    Write-Host " Push failed. Please try again later." -ForegroundColor Yellow
}
Write-Host "===============================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Recent commits:" -ForegroundColor Cyan
git log --oneline -3
Write-Host ""

Write-Host "Press any key to exit..."
$null = Read-Host
