---
layout: single
title: "示例页面"
permalink: /demo/
author_profile: true
---

<!-- 引入 TimelessTales 设计系统 -->
<link rel="stylesheet" href="/assets/css/timelesstales.css">

<style>
/* 页面特定样式（可选） */
.demo-container {
  margin: 2rem 0;
}

.section-header {
  text-align: center;
  margin-bottom: 3rem;
}

.section-header h2 {
  font-size: 2rem;
  margin-bottom: 1rem;
}

.section-header p {
  color: var(--text-light);
  font-size: 1.1rem;
}
</style>

<div class="demo-container">

<!-- Hero 示例 -->
<section style="text-align: center; padding: 4rem 0;">
  <h1 class="text-gradient animate-fadeInUp">设计模板示例</h1>
  <p class="animate-fadeInUp delay-1" style="font-size: 1.2rem; color: var(--text-light); margin: 1rem 0;">
    这是一个展示 TimelessTales 设计风格的示例页面
  </p>
  <div class="animate-fadeInUp delay-2" style="margin-top: 2rem;">
    <a href="#cards" class="btn btn-primary btn-large">查看组件</a>
    <a href="#grid" class="btn btn-outline btn-large" style="margin-left: 1rem;">了解更多</a>
  </div>
</section>

<!-- 统计卡片示例 -->
<section id="stats" style="margin: 4rem 0;">
  <div class="section-header">
    <h2>统计数据展示</h2>
    <p>使用统计卡片组件</p>
  </div>
  
  <div class="grid grid-4">
    <div class="stat-card animate-fadeInUp">
      <div class="stat-icon">📝</div>
      <div class="stat-value">100</div>
      <div class="stat-label">篇文章</div>
    </div>

    <div class="stat-card animate-fadeInUp delay-1">
      <div class="stat-icon">�</div>
      <div class="stat-value">25</div>
      <div class="stat-label">个项目</div>
    </div>

    <div class="stat-card animate-fadeInUp delay-2">
      <div class="stat-icon">⭐</div>
      <div class="stat-value">500</div>
      <div class="stat-label">Star 数</div>
    </div>

    <div class="stat-card animate-fadeInUp delay-3">
      <div class="stat-icon">🎯</div>
      <div class="stat-value">365</div>
      <div class="stat-label">天坚持</div>
    </div>
  </div>
</section>

<!-- 卡片网格示例 -->
<section id="cards" style="margin: 4rem 0;">
  <div class="section-header">
    <h2>卡片网格布局</h2>
    <p>自适应响应式卡片</p>
  </div>
  
  <div class="grid grid-auto">
    <div class="card animate-fadeInUp">
      <h3>卡片标题 1</h3>
      <p>这是一个标准卡片，包含标题和描述文字。悬停时会有上浮动画效果。</p>
      <a href="#" class="btn btn-primary">了解更多 →</a>
    </div>

    <div class="card animate-fadeInUp delay-1">
      <h3>卡片标题 2</h3>
      <p>卡片支持自动网格布局，会根据屏幕宽度自适应列数。</p>
      <a href="#" class="btn btn-primary">了解更多 →</a>
    </div>

    <div class="card animate-fadeInUp delay-2">
      <h3>卡片标题 3</h3>
      <p>所有组件都支持深色模式，会根据系统主题自动切换。</p>
      <a href="#" class="btn btn-primary">了解更多 →</a>
    </div>
  </div>
</section>

<!-- 按钮示例 -->
<section id="buttons" style="margin: 4rem 0;">
  <div class="section-header">
    <h2>按钮组件</h2>
    <p>多种样式和尺寸</p>
  </div>
  
  <div style="text-align: center;">
    <div style="margin-bottom: 2rem;">
      <a href="#" class="btn btn-primary">主要按钮</a>
      <a href="#" class="btn btn-outline">边框按钮</a>
    </div>
    
    <div style="margin-bottom: 2rem;">
      <a href="#" class="btn btn-primary btn-large">大按钮</a>
      <a href="#" class="btn btn-primary">普通按钮</a>
      <a href="#" class="btn btn-primary btn-small">小按钮</a>
    </div>
  </div>
</section>

<!-- 徽章示例 -->
<section id="badges" style="margin: 4rem 0;">
  <div class="section-header">
    <h2>徽章标签</h2>
    <p>用于标记和分类</p>
  </div>
  
  <div style="text-align: center;">
    <span class="badge badge-primary">主要标签</span>
    <span class="badge badge-success">成功标签</span>
    <span class="badge badge-warning">警告标签</span>
  </div>
</section>

<!-- 社交链接示例 -->
<section id="social" style="margin: 4rem 0;">
  <div class="section-header">
    <h2>社交链接</h2>
    <p>渐变圆形图标按钮</p>
  </div>
  
  <div class="social-links">
    <a href="#" class="social-link" title="GitHub">
      <i class="fab fa-github"></i>
    </a>
    <a href="#" class="social-link" title="Twitter">
      <i class="fab fa-twitter"></i>
    </a>
    <a href="#" class="social-link" title="Email">
      <i class="fas fa-envelope"></i>
    </a>
    <a href="#" class="social-link" title="Blog">
      <i class="fas fa-blog"></i>
    </a>
  </div>
</section>

<!-- 使用说明 -->
<section style="margin: 4rem 0; padding: 2rem; background: var(--bg-white); border-radius: var(--radius-lg);">
  <h3 style="text-align: center; margin-bottom: 2rem;">💡 如何使用</h3>
  
  <div class="grid grid-2" style="gap: 2rem;">
    <div>
      <h4>1. 引入样式表</h4>
      <pre style="background: #f5f5f5; padding: 1rem; border-radius: 6px; overflow-x: auto;"><code>&lt;link rel="stylesheet" href="/assets/css/timelesstales.css"&gt;</code></pre>
    </div>
    
    <div>
      <h4>2. 使用组件类</h4>
      <pre style="background: #f5f5f5; padding: 1rem; border-radius: 6px; overflow-x: auto;"><code>&lt;div class="card animate-fadeInUp"&gt;
  &lt;h3&gt;标题&lt;/h3&gt;
  &lt;p&gt;内容&lt;/p&gt;
&lt;/div&gt;</code></pre>
    </div>
  </div>
  
  <p style="text-align: center; margin-top: 2rem; color: var(--text-light);">
    查看完整文档：<a href="/assets/css/timelesstales.css" style="color: var(--primary-color);">timelesstales.css</a>
  </p>
</section>

</div>

<!-- Font Awesome 图标（如需使用图标） -->
<script src="https://kit.fontawesome.com/your-code.js" crossorigin="anonymous"></script>
