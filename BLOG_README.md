# 黑背雪的个人博客

这是一个基于 Jekyll 搭建的个人技术博客,托管在 GitHub Pages 上。

## 博客特色

- ✨ 简洁清爽的设计
- 📱 响应式布局,支持移动端
- 🔍 支持文章分类和标签
- 📝 支持 Markdown 写作
- 💬 可扩展评论系统
- 📊 集成 Google Analytics

## 快速开始

### 本地预览

如果你想在本地预览博客,需要先安装 Ruby 和 Jekyll:

```bash
# 安装依赖
bundle install

# 本地运行
bundle exec jekyll serve

# 访问 http://localhost:4000
```

### 发布文章

1. 在 `_posts` 目录下创建新的 Markdown 文件
2. 文件命名格式: `YYYY-MM-DD-title.md`
3. 在文件开头添加 YAML Front Matter:

```yaml
---
title: '文章标题'
date: 2025-11-04
permalink: /posts/2025/11/article-name/
tags:
  - 标签1
  - 标签2
categories:
  - 分类名称
---

文章内容...
```

## 目录结构

```
.
├── _config.yml          # 网站配置文件
├── _data/              
│   └── navigation.yml   # 导航菜单配置
├── _pages/              # 静态页面
│   ├── about.md         # 首页
│   ├── about-me.md      # 关于页面
│   ├── year-archive.html # 博客归档
│   ├── category-archive.html # 分类页面
│   └── tag-archive.html # 标签页面
├── _posts/              # 博客文章
│   ├── 2025-11-04-welcome-to-my-blog.md
│   └── 2025-11-03-stm32-getting-started.md
├── images/              # 图片资源
└── files/               # 文件资源
```

## 自定义配置

### 修改个人信息

编辑 `_config.yml` 文件中的以下部分:

```yaml
title: "你的博客名称"
name: "你的名字"
description: "博客描述"
url: "https://yourusername.github.io"

author:
  name: "你的名字"
  bio: "个人简介"
  location: "所在地"
  email: "your@email.com"
  github: "https://github.com/yourusername"
```

### 修改导航菜单

编辑 `_data/navigation.yml` 文件:

```yaml
main:
  - title: "首页"
    url: /
  - title: "博客"
    url: /year-archive/
  - title: "分类"
    url: /categories/
  - title: "标签"
    url: /tags/
  - title: "关于我"
    url: /about/
```

### 添加 Google Analytics

在 `_config.yml` 中配置:

```yaml
analytics:
  provider: "google-gtag"
  google:
    tracking_id: "你的GA跟踪ID"
```

## 写作技巧

### Markdown 语法

支持标准 Markdown 语法,以及:

- 代码高亮
- 数学公式 (KaTeX)
- 表格
- 图片
- 链接

### 代码块示例

\`\`\`python
def hello_world():
    print("Hello, World!")
\`\`\`

### 添加图片

```markdown
![图片描述](/images/your-image.png)
```

将图片放在 `images/` 目录下。

### 数学公式

行内公式: `$E = mc^2$`

块级公式:
```
$$
\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}
$$
```

## 部署到 GitHub Pages

1. Fork 或克隆这个仓库
2. 将仓库重命名为 `yourusername.github.io`
3. 在仓库设置中启用 GitHub Pages
4. 推送代码后自动部署

```bash
git add .
git commit -m "Update blog"
git push origin master
```

## 技术栈

- **静态网站生成器**: Jekyll
- **主题**: 基于 Academic Pages 模板
- **托管**: GitHub Pages
- **评论系统**: 可选 Disqus/Utterances
- **分析工具**: Google Analytics

## 参考资源

- [Jekyll 官方文档](https://jekyllrb.com/)
- [Markdown 语法](https://www.markdownguide.org/)
- [GitHub Pages 文档](https://docs.github.com/en/pages)
- [Academic Pages 模板](https://github.com/academicpages/academicpages.github.io)

## 常见问题

### 如何添加新页面?

在 `_pages/` 目录下创建新的 Markdown 文件,然后在 `_data/navigation.yml` 中添加链接。

### 如何修改样式?

自定义 CSS 可以在 `assets/css/` 目录下修改。

### 本地预览出错怎么办?

1. 确认 Ruby 和 Jekyll 已正确安装
2. 运行 `bundle install` 安装依赖
3. 清除缓存: `bundle exec jekyll clean`
4. 重新运行: `bundle exec jekyll serve`

## 许可证

本项目基于 MIT 许可证开源。

## 联系方式

- Email: adai_23@qq.com
- GitHub: [@konghenfuxue-cpu](https://github.com/konghenfuxue-cpu)

---

**祝你写作愉快!** 📝✨
