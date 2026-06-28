# 个人学术主页实现方案

## 方案一：基于现有 Jekyll 模板（推荐）

### 优点
- 现有模板已适配 GitHub Pages
- 修改量小，可快速部署
- 社区支持良好
- 免费托管

### 缺点
- Jekyll 构建速度较慢
- 主题定制相对复杂
- 功能扩展需要 Ruby 知识

### 实现步骤

#### 1. 修改配置文件
编辑 `_config.yml`：

```yaml
# Site settings
title: "[Your Name] - Quantum Researcher"
SEOTitle: "[Your Name] | Quantum Optics & Quantum Communication"
header-img: "img/home-bg.jpg"
email: "your.email@university.edu"
description: "Personal academic homepage of [Your Name], focusing on quantum optics and quantum communication research."
keyword: "quantum optics, quantum communication, QKD, HD-QKD, entanglement"
url: "https://yourusername.github.io/"
baseurl: ""

# Sidebar settings
sidebar: true
sidebar-about-description: "Quantum Researcher<br>[Your University]"
sidebar-avatar: "img/your-photo.jpg"
```

#### 2. 创建页面文件
在根目录创建以下文件：

- `research.md` - 研究页面
- `projects.md` - 项目页面
- `publications.md` - 发表页面
- `cv.md` - 简历页面
- `contact.md` - 联系页面

#### 3. 修改导航栏
编辑 `_includes/nav.html`，添加页面链接：

```html
<li>
    <a href="{{ site.baseurl }}/research">Research</a>
</li>
<li>
    <a href="{{ site.baseurl }}/projects">Projects</a>
</li>
<li>
    <a href="{{ site.baseurl }}/publications">Publications</a>
</li>
<li>
    <a href="{{ site.baseurl }}/cv">CV</a>
</li>
<li>
    <a href="{{ site.baseurl }}/contact">Contact</a>
</li>
```

#### 4. 更新 About 页面
替换 `_includes/about/en.md` 和 `_includes/about/zh.md` 的内容。

#### 5. 添加样式
在 `css` 目录中添加自定义样式文件。

#### 6. 部署到 GitHub Pages
1. 创建 GitHub 仓库：`yourusername.github.io`
2. 推送代码到仓库
3. 在仓库设置中启用 GitHub Pages
4. 访问 `https://yourusername.github.io`

### 文件结构
```
yourusername.github.io/
├── _config.yml
├── _includes/
│   ├── about/
│   │   ├── en.md
│   │   └── zh.md
│   ├── nav.html
│   └── ...
├── _layouts/
├── _posts/
├── css/
├── img/
├── js/
├── index.html
├── about.html
├── research.md
├── projects.md
├── publications.md
├── cv.md
└── contact.md
```

---

## 方案二：迁移到 Hugo

### 优点
- 构建速度极快
- 丰富的学术主题
- 内置功能强大
- 易于扩展

### 缺点
- 需要迁移现有内容
- 学习曲线较陡
- 需要安装 Hugo

### 实现步骤

#### 1. 安装 Hugo
```bash
# Windows (使用 Chocolatey)
choco install hugo

# macOS (使用 Homebrew)
brew install hugo

# Linux (使用包管理器)
sudo apt-get install hugo
```

#### 2. 创建新站点
```bash
hugo new site academic-website
cd academic-website
```

#### 3. 安装学术主题
推荐使用 Hugo Academic 主题：

```bash
git clone https://github.com/wowchemy/wowchemy-hugo-themes.git themes/wowchemy
```

#### 4. 配置主题
编辑 `config.toml`：

```toml
baseURL = "https://yourusername.github.io/"
languageCode = "en-us"
title = "[Your Name] - Quantum Researcher"
theme = "wowchemy"

[params]
  # 个人资料
  name = "[Your Name]"
  role = "Quantum Researcher"
  bio = "Focusing on quantum optics and quantum communication research."
  interests = ["Quantum Optics", "Quantum Communication", "HD-QKD", "Entanglement"]
  
  # 联系信息
  email = "your.email@university.edu"
  github = "yourusername"
  google_scholar = "your-scholar-id"
  orcid = "your-orcid-id"
```

#### 5. 创建内容
```bash
# 创建研究页面
hugo new research.md

# 创建项目页面
hugo new projects.md

# 创建发表页面
hugo new publications.md
```

#### 6. 部署到 GitHub Pages
1. 创建 GitHub 仓库
2. 配置 GitHub Actions 或使用 Netlify
3. 推送代码

### 文件结构
```
academic-website/
├── config.toml
├── content/
│   ├── home/
│   ├── research/
│   ├── projects/
│   ├── publications/
│   └── cv/
├── static/
│   ├── img/
│   └── files/
├── themes/
│   └── wowchemy/
└── ...
```

---

## 方案三：使用 Astro

### 优点
- 现代框架，性能优秀
- 组件化开发
- 支持多种内容格式
- 易于集成现代工具

### 缺点
- 学习曲线较陡
- 需要 Node.js 环境
- 主题相对较少

### 实现步骤

#### 1. 安装 Node.js
下载并安装 Node.js：https://nodejs.org/

#### 2. 创建 Astro 项目
```bash
npm create astro@latest academic-website
cd academic-website
```

#### 3. 安装学术模板
```bash
# 使用 astro-paper 主题
npm install astro-paper
```

#### 4. 配置项目
编辑 `astro.config.mjs`：

```javascript
import { defineConfig } from 'astro/config';
import astroPaper from 'astro-paper';

export default defineConfig({
  integrations: [astroPaper()],
  site: 'https://yourusername.github.io',
});
```

#### 5. 创建内容
在 `src/content/` 目录中创建 Markdown 文件。

#### 6. 部署到 GitHub Pages
1. 创建 GitHub 仓库
2. 配置 GitHub Actions
3. 推送代码

### 文件结构
```
academic-website/
├── astro.config.mjs
├── package.json
├── src/
│   ├── content/
│   │   ├── research/
│   │   ├── projects/
│   │   └── publications/
│   ├── components/
│   ├── layouts/
│   └── pages/
├── public/
│   ├── img/
│   └── files/
└── ...
```

---

## 推荐方案

### 对于初学者：方案一（Jekyll）
- 现有模板已适配
- 修改量小
- 社区支持好

### 对于性能要求高：方案二（Hugo）
- 构建速度快
- 主题丰富
- 功能强大

### 对于现代开发：方案三（Astro）
- 现代框架
- 性能优秀
- 组件化开发

## 内容迁移指南

### 从现有模板迁移
1. 复制 `_includes/about/en.md` 和 `_includes/about/zh.md` 的内容
2. 迁移图片和静态资源
3. 更新配置文件
4. 测试所有页面链接

### 内容准备清单
- [ ] 个人照片
- [ ] 研究方向描述
- [ ] 项目描述和链接
- [ ] 论文列表和摘要
- [ ] CV 信息
- [ ] 联系方式
- [ ] 背景图片

## 维护和更新

### 定期更新
- 更新论文列表
- 添加新项目
- 更新 CV 信息
- 发布研究笔记

### 备份策略
- 使用 Git 版本控制
- 定期备份静态资源
- 保存配置文件副本

## 性能优化

### 图片优化
- 使用 WebP 格式
- 压缩图片大小
- 使用懒加载

### 代码优化
- 压缩 CSS 和 JavaScript
- 使用 CDN 加速
- 启用缓存

## SEO 优化

### 元标签
- 添加描述和关键词
- 使用结构化数据
- 优化页面标题

### 社交媒体
- 添加 Open Graph 标签
- 配置 Twitter Cards
- 添加社交媒体链接