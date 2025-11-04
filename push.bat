@echo off
chcp 65001 >nul
echo ============================================
echo GitHub 推送工具
echo ============================================
echo.

cd /d "d:\gh\konghenfuxue-cpu.github.io-master\konghenfuxue-cpu.github.io-master"

:retry
echo [尝试推送到GitHub...]
git push origin master
if %errorlevel% equ 0 (
    echo.
    echo ============================================
    echo 推送成功!
    echo ============================================
    echo.
    git log --oneline -3
    goto end
) else (
    echo.
    echo [推送失败,5秒后重试...]
    timeout /t 5 /nobreak >nul
    goto retry
)

:end
echo.
echo 按任意键退出...
pause >nul
