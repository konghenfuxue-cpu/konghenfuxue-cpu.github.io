@echo off
echo ================================
echo 同步博客到 GitHub
echo ================================
echo.

cd /d "%~dp0"

echo [1/4] 检查状态...
git status

echo.
echo [2/4] 拉取远程更新...
git pull origin master --rebase

echo.
echo [3/4] 推送到 GitHub...
git push origin master

echo.
echo [4/4] 完成!
echo.
echo ================================
echo 同步完成! 请访问:
echo https://konghenfuxue-cpu.github.io/
echo ================================
pause
