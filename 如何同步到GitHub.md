# 如何将博客同步到 GitHub

## 📋 准备工作

### 1. 确保已安装 Git
```powershell
# 检查 Git 是否已安装
git --version
```

如果未安装,请从 [https://git-scm.com/](https://git-scm.com/) 下载安装。

### 2. 配置 Git (首次使用)
```powershell
# 设置用户名和邮箱
git config --global user.name "你的名字"
git config --global user.email "你的邮箱"
```

## 🚀 同步步骤

### 方法一: 初始化新仓库并推送

#### 步骤 1: 初始化本地 Git 仓库
```powershell
# 进入博客目录
cd d:\gh\konghenfuxue-cpu.github.io-master\konghenfuxue-cpu.github.io-master

# 初始化 Git 仓库
git init
```

#### 步骤 2: 添加所有文件
```powershell
# 添加所有文件到暂存区
git add .

# 查看状态
git status
```

#### 步骤 3: 提交更改
```powershell
# 提交更改,添加提交信息
git commit -m "改造为个人博客网站"
```

#### 步骤 4: 关联远程仓库
```powershell
# 关联到你的 GitHub 仓库
# 替换为你的实际仓库地址
git remote add origin https://github.com/konghenfuxue-cpu/konghenfuxue-cpu.github.io.git

# 验证远程仓库
git remote -v
```

#### 步骤 5: 推送到 GitHub
```powershell
# 推送到 GitHub (首次推送)
git push -u origin master

# 如果默认分支是 main,使用:
# git push -u origin main
```

### 方法二: 如果 GitHub 仓库已存在

#### 1. 克隆现有仓库
```powershell
# 克隆你的 GitHub 仓库
git clone https://github.com/konghenfuxue-cpu/konghenfuxue-cpu.github.io.git

# 进入克隆的目录
cd konghenfuxue-cpu.github.io
```

#### 2. 复制改造后的文件
将本地博客目录的所有文件复制到克隆的仓库目录中,替换原有文件。

#### 3. 提交并推送
```powershell
# 添加所有更改
git add .

# 提交更改
git commit -m "改造为个人博客网站"

# 推送到 GitHub
git push origin master
```

## 🔄 日常更新流程

当你添加新文章或修改内容后:

```powershell
# 1. 添加更改的文件
git add .

# 2. 提交更改
git commit -m "添加新文章/更新内容"

# 3. 推送到 GitHub
git push
```

## 🌐 启用 GitHub Pages

### 步骤 1: 进入仓库设置
1. 登录 GitHub
2. 进入你的仓库页面
3. 点击 **Settings** (设置)

### 步骤 2: 配置 GitHub Pages
1. 在左侧菜单找到 **Pages**
2. 在 **Source** 下选择分支:
   - Branch: `master` (或 `main`)
   - Folder: `/ (root)`
3. 点击 **Save**

### 步骤 3: 等待部署
- GitHub 会自动构建和部署你的网站
- 通常需要 1-5 分钟
- 部署完成后会显示网站地址

### 步骤 4: 访问你的网站
```
https://konghenfuxue-cpu.github.io/
```

## 📝 常用 Git 命令

### 查看状态
```powershell
git status              # 查看当前状态
git log                 # 查看提交历史
git log --oneline       # 简洁查看历史
```

### 分支操作
```powershell
git branch              # 查看所有分支
git branch -a           # 查看所有分支(包括远程)
git checkout -b dev     # 创建并切换到新分支
git checkout master     # 切换回主分支
```

### 撤销操作
```powershell
git checkout -- 文件名   # 撤销文件修改
git reset HEAD 文件名    # 取消暂存
git reset --hard HEAD   # 重置到上次提交
```

### 更新本地仓库
```powershell
git pull                # 拉取远程更新
git fetch               # 获取远程更新但不合并
```

## 🔐 使用 SSH 认证 (推荐)

### 1. 生成 SSH 密钥
```powershell
# 生成 SSH 密钥对
ssh-keygen -t rsa -b 4096 -C "你的邮箱@example.com"

# 按提示操作,默认保存在:
# C:\Users\你的用户名\.ssh\id_rsa
```

### 2. 添加公钥到 GitHub
```powershell
# 查看公钥内容
cat ~/.ssh/id_rsa.pub

# 或在 Windows 上:
type C:\Users\你的用户名\.ssh\id_rsa.pub
```

复制输出的内容,然后:
1. 登录 GitHub
2. 点击右上角头像 → **Settings**
3. 左侧菜单 → **SSH and GPG keys**
4. 点击 **New SSH key**
5. 粘贴公钥内容,点击 **Add SSH key**

### 3. 修改远程仓库地址
```powershell
# 修改为 SSH 地址
git remote set-url origin git@github.com:konghenfuxue-cpu/konghenfuxue-cpu.github.io.git

# 验证
git remote -v
```

现在推送时不需要输入用户名和密码了!

## ⚠️ 注意事项

### 1. .gitignore 文件
确保 `.gitignore` 文件包含以下内容,避免提交不必要的文件:

```
_site/
.sass-cache/
.jekyll-cache/
.jekyll-metadata
vendor/
.bundle/
node_modules/
*.gem
Gemfile.lock
```

### 2. 敏感信息
- ❌ 不要提交包含密码、API密钥等敏感信息的文件
- ❌ 不要提交 `.env` 文件
- ✅ 使用环境变量存储敏感信息

### 3. 大文件
- GitHub 单文件限制 100MB
- 仓库建议不超过 1GB
- 大文件使用 Git LFS

### 4. 提交信息规范
使用清晰的提交信息:
```
✅ "添加STM32学习笔记文章"
✅ "修复导航菜单链接错误"
✅ "更新个人信息和头像"
❌ "update"
❌ "fix"
```

## 🔍 故障排除

### 问题 1: push 被拒绝
```powershell
# 先拉取远程更改
git pull origin master --rebase

# 再推送
git push origin master
```

### 问题 2: 认证失败
- 检查用户名和密码
- 或使用 SSH 认证
- 或使用 Personal Access Token

### 问题 3: 文件冲突
```powershell
# 查看冲突文件
git status

# 手动编辑解决冲突后
git add .
git commit -m "解决冲突"
git push
```

### 问题 4: GitHub Pages 不显示
1. 检查仓库名是否为 `username.github.io`
2. 确认 Pages 已启用
3. 检查 `_config.yml` 中的 `url` 和 `baseurl`
4. 等待几分钟让部署完成
5. 查看 Actions 标签页确认构建状态

## 📚 相关资源

- [Git 官方文档](https://git-scm.com/doc)
- [GitHub Pages 文档](https://docs.github.com/zh/pages)
- [GitHub 官方教程](https://docs.github.com/zh/get-started)
- [Pro Git 电子书](https://git-scm.com/book/zh/v2)

## 🎯 快速命令总结

```powershell
# 初始化和首次推送
git init
git add .
git commit -m "改造为个人博客"
git remote add origin https://github.com/konghenfuxue-cpu/konghenfuxue-cpu.github.io.git
git push -u origin master

# 日常更新
git add .
git commit -m "更新内容"
git push

# 拉取更新
git pull
```

---

**提示**: 如果遇到问题,可以查看 GitHub Actions 的构建日志来定位错误。
