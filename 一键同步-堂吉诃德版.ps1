# 一键同步到GitHub
# 使用方法: 双击运行或在PowerShell中执行

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "  GitHub 同步工具 - 堂吉诃德主题版本" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# 进入项目目录
Set-Location "d:\gh\konghenfuxue-cpu.github.io-master\konghenfuxue-cpu.github.io-master"

# 显示当前状态
Write-Host "[1/4] 检查Git状态..." -ForegroundColor Yellow
git status
Write-Host ""

# 添加所有更改
Write-Host "[2/4] 添加所有更改..." -ForegroundColor Yellow
git add .
Write-Host "✓ 文件已添加" -ForegroundColor Green
Write-Host ""

# 提交更改
Write-Host "[3/4] 提交更改..." -ForegroundColor Yellow
$commitMessage = Read-Host "请输入提交信息 (直接回车使用默认信息)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "update: 更新博客内容 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
}
git commit -m $commitMessage
Write-Host "✓ 提交完成" -ForegroundColor Green
Write-Host ""

# 推送到GitHub
Write-Host "[4/4] 推送到GitHub..." -ForegroundColor Yellow
Write-Host "正在连接GitHub,请稍候..." -ForegroundColor Gray

$maxRetries = 3
$retryCount = 0
$success = $false

while ($retryCount -lt $maxRetries -and -not $success) {
    try {
        git push origin master 2>&1 | Tee-Object -Variable output
        if ($LASTEXITCODE -eq 0) {
            $success = $true
            Write-Host "✓ 推送成功!" -ForegroundColor Green
        } else {
            throw "Push failed"
        }
    } catch {
        $retryCount++
        if ($retryCount -lt $maxRetries) {
            Write-Host "⚠ 推送失败,第 $retryCount 次重试..." -ForegroundColor Yellow
            Start-Sleep -Seconds 3
        } else {
            Write-Host "✗ 推送失败,已重试 $maxRetries 次" -ForegroundColor Red
            Write-Host ""
            Write-Host "可能的原因:" -ForegroundColor Yellow
            Write-Host "  1. 网络连接不稳定" -ForegroundColor Gray
            Write-Host "  2. GitHub访问受限" -ForegroundColor Gray
            Write-Host "  3. 代理设置问题" -ForegroundColor Gray
            Write-Host ""
            Write-Host "解决方案:" -ForegroundColor Yellow
            Write-Host "  • 检查网络连接" -ForegroundColor Gray
            Write-Host "  • 稍后再次运行此脚本" -ForegroundColor Gray
            Write-Host "  • 或手动执行: git push origin master" -ForegroundColor Gray
        }
    }
}

Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
if ($success) {
    Write-Host "  同步完成!" -ForegroundColor Green
    Write-Host "  您的更改已推送到GitHub" -ForegroundColor Green
    Write-Host "  网站将在1-5分钟内自动更新" -ForegroundColor Green
    Write-Host "  访问: https://konghenfuxue-cpu.github.io/" -ForegroundColor Cyan
} else {
    Write-Host "  同步未完成" -ForegroundColor Yellow
    Write-Host "  本地更改已保存,但未推送到GitHub" -ForegroundColor Yellow
}
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# 显示最近的提交
Write-Host "最近的3次提交:" -ForegroundColor Cyan
git log --oneline -3
Write-Host ""

# 等待用户按键
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
