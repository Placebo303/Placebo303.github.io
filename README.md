# 个人学术主页模板

基于 Jekyll 的个人学术主页模板，适用于量子光学、量子通信等领域的研究人员。

## 功能特点

- 🎓 学术主页设计
- 📱 响应式布局
- 🔍 SEO 优化
- 📝 多语言支持
- 📊 研究项目展示
- 📚 论文发表管理
- 📝 研究笔记系统
- 📄 简历下载功能

## 快速开始

### 1. 克隆仓库
```bash
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io
```

### 2. 修改配置
编辑 `_config.yml` 文件：
- 修改网站标题和描述
- 更新联系方式
- 配置社交媒体链接

### 3. 添加内容
- 更新 `_includes/about/en.md` 和 `_includes/about/zh.md` 的个人简介
- 修改 `research.md` 的研究方向
- 更新 `projects.md` 的项目信息
- 编辑 `publications.md` 的论文列表
- 更新 `cv.md` 的简历信息

### 4. 部署到 GitHub Pages
1. 创建 GitHub 仓库：`yourusername.github.io`
2. 推送代码到仓库
3. 在仓库设置中启用 GitHub Pages
4. 访问 `https://yourusername.github.io`

## 文件结构

```
yourusername.github.io/
├── _config.yml              # 网站配置
├── _includes/               # 可重用组件
│   ├── about/              # 个人简介
│   ├── nav.html            # 导航栏
│   └── ...
├── _layouts/               # 页面布局
├── _posts/                 # 博客文章
├── css/                    # 样式文件
├── img/                    # 图片资源
├── js/                     # JavaScript 文件
├── index.html              # 首页
├── about.html              # 关于页面
├── research.md             # 研究页面
├── projects.md             # 项目页面
├── publications.md         # 发表页面
├── cv.md                   # 简历页面
├── contact.md              # 联系页面
└── notes.md                # 笔记页面
```

## 自定义配置

### 网站配置
在 `_config.yml` 中修改：

```yaml
title: "Your Name - Quantum Researcher"
SEOTitle: "Your Name | Quantum Optics & Quantum Communication"
email: "your.email@university.edu"
description: "Your personal description"
keyword: "quantum optics, quantum communication, QKD"
url: "https://yourusername.github.io/"
```

### 导航栏配置
编辑 `_includes/nav.html` 添加或删除导航链接。

### 侧边栏配置
在 `_config.yml` 中修改：

```yaml
sidebar: true
sidebar-about-description: "Your description"
sidebar-avatar: "img/your-photo.jpg"
```

## 内容管理

### 添加研究笔记
在 `notes.md` 中添加新的研究笔记：

```markdown
### 新笔记标题

笔记内容...

#### 关键点
- 要点 1
- 要点 2
- 要点 3
```

### 添加论文
在 `publications.md` 中添加新论文：

```markdown
1. **[Your Name]**, [Co-authors]. "[Paper Title]." *[Journal Name]*, vol. [Volume], no. [Number], pp. [Pages], [Year]. DOI: [DOI]
```

### 添加项目
在 `projects.md` 中添加新项目：

```markdown
### 项目名称

**Description**: 项目描述

**Key Features**:
- 功能 1
- 功能 2
- 功能 3

**Technologies**: 技术栈

**GitHub**: [项目链接](https://github.com/username/project)
```

## 样式自定义

### 修改颜色
编辑 `css` 目录中的样式文件：

```css
/* 主色调 */
:root {
  --primary-color: #007bff;
  --secondary-color: #6c757d;
  --accent-color: #28a745;
}

/* 背景颜色 */
body {
  background-color: #f8f9fa;
}

/* 文字颜色 */
h1, h2, h3 {
  color: #343a40;
}
```

### 添加自定义样式
在 `css/custom.css` 中添加自定义样式。

## 图片管理

### 添加个人照片
1. 将照片放入 `img` 目录
2. 在 `_config.yml` 中更新头像路径：

```yaml
sidebar-avatar: "img/your-photo.jpg"
```

### 添加背景图片
1. 将背景图片放入 `img` 目录
2. 在页面配置中更新：

```yaml
header-img: "img/your-background.jpg"
```

## 部署选项

### GitHub Pages（推荐）
1. 创建 GitHub 仓库
2. 推送代码
3. 启用 GitHub Pages

### Netlify
1. 连接 GitHub 仓库
2. 配置构建设置
3. 部署网站

### Vercel
1. 导入 GitHub 仓库
2. 配置项目设置
3. 部署网站

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

## 故障排除

### 常见问题

#### 1. 页面无法访问
- 检查 GitHub Pages 设置
- 确认仓库名称正确
- 检查 `_config.yml` 配置

#### 2. 样式不生效
- 清除浏览器缓存
- 检查 CSS 文件路径
- 确认文件权限

#### 3. 图片不显示
- 检查图片路径
- 确认图片文件存在
- 检查文件权限

### 调试技巧
- 使用浏览器开发者工具
- 检查控制台错误信息
- 查看 GitHub Pages 构建日志

## 贡献指南

欢迎贡献代码和改进建议！

1. Fork 仓库
2. 创建功能分支
3. 提交更改
4. 推送到分支
5. 创建 Pull Request

## 许可证

本项目基于 MIT 许可证开源。

## 联系方式

如有问题或建议，请联系：
- Email: [your.email@university.edu]
- GitHub: [yourusername](https://github.com/yourusername)

## 致谢

感谢所有贡献者和支持者！

---

**注意**: 使用前请务必修改 `_config.yml` 中的个人信息和联系方式。