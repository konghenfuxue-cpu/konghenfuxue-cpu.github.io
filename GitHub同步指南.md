# 🔄 GitHub 同步指南

## 快速同步

### 方法1: 使用批处理文件(推荐)

双击运行 `sync-to-github.bat` 文件即可自动同步!

### 方法2: PowerShell命令

在博客目录打开PowerShell,依次执行:

```powershell
# 1. 检查状态
git status

# 2. 拉取远程更新
git pull origin master --rebase

# 3. 推送到GitHub
git push origin master
```

### 方法3: 一键命令

```powershell
git pull origin master --rebase; git push origin master
```

## 📊 当前状态检查

### 查看提交历史
```powershell
git log --oneline -10
```

### 查看当前状态
```powershell
git status
```

### 查看远程仓库
```powershell
git remote -v
```

## ⚠️ 常见问题

### 问题1: 分支冲突

```
error: Your local changes to the following files would be overwritten by merge
```

**解决方案:**
```powershell
# 保存当前工作
git stash

# 拉取更新
git pull origin master --rebase

# 恢复工作
git stash pop
```

### 问题2: 推送被拒绝

```
! [rejected] master -> master (non-fast-forward)
```

**解决方案:**
```powershell
# 先拉取再推送
git pull origin master --rebase
git push origin master
```

### 问题3: 远程和本地分歧

```
Your branch and 'origin/master' have diverged
```

**解决方案(谨慎使用):**
```powershell
# 强制推送(会覆盖远程)
git push origin master --force-with-lease
```

## 🚀 日常工作流

### 添加新文章后

```powershell
# 1. 添加文件
git add _posts/新文章.md

# 2. 提交
git commit -m "添加新文章"

# 3. 推送
git push origin master
```

### 修改配置后

```powershell
# 1. 添加所有修改
git add .

# 2. 提交
git commit -m "更新配置"

# 3. 推送
git push origin master
```

### 批量更新

```powershell
# 一次性完成添加、提交、推送
git add .; git commit -m "批量更新"; git push
```

## 📝 提交信息规范

建议使用语义化的提交信息:

- `feat:` 新功能
- `fix:` 修复bug
- `docs:` 文档更新
- `style:` 样式调整
- `refactor:` 重构代码
- `chore:` 日常维护

**示例:**
```powershell
git commit -m "feat: 添加散记页面"
git commit -m "fix: 修复导航链接错误"
git commit -m "docs: 更新README文档"
```

## 🔍 查看同步状态

### 检查是否已同步

```powershell
git status
```

**输出示例:**
- `Your branch is up to date` - 已同步✅
- `Your branch is ahead of` - 需要推送⬆️
- `Your branch is behind` - 需要拉取⬇️

### 查看最近的更改

```powershell
# 查看未提交的更改
git diff

# 查看已暂存的更改
git diff --staged

# 查看最近5次提交
git log --oneline -5
```

## 🌐 验证部署

推送后等待1-3分钟,然后访问:

- **博客首页**: https://konghenfuxue-cpu.github.io/
- **Actions状态**: https://github.com/konghenfuxue-cpu/konghenfuxue-cpu.github.io/actions

查看绿色✅表示部署成功!

## 💡 小技巧

### 设置Git别名

在PowerShell配置文件中添加:

```powershell
function gs { git status }
function ga { git add $args }
function gc { git commit -m $args }
function gp { git push }
function gl { git log --oneline -10 }
function sync { git add .; git commit -m "update"; git push }
```

然后就可以使用简短命令:
```powershell
sync  # 一键同步
gs    # 查看状态
gl    # 查看日志
```

### 自动同步脚本

创建 `auto-sync.ps1`:

```powershell
# 自动同步脚本
$message = Read-Host "输入提交信息(留空使用默认)"
if ([string]::IsNullOrWhiteSpace($message)) {
    $message = "更新于 $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
}

git add .
git commit -m $message
git pull origin master --rebase
git push origin master

Write-Host "同步完成!" -ForegroundColor Green
```

---

**快速开始**: 双击 `sync-to-github.bat` 文件即可同步! 🚀
