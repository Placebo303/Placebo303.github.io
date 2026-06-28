# 🚀 快速开始指南

## 项目位置
```
D:\Code\academic-website
```

---

## 📋 当前状态

✅ 网站结构已创建  
✅ 所有内容已填充（基于你提供的信息）  
✅ index.html 已添加  
⏳ 等待个人头像照片  
⏳ 等待部署到 GitHub  

---

## 🖼️ 第一步：添加个人头像

将你的个人头像照片复制到：
```
D:\Code\academic-website\img\kai-yang.jpg
```

**要求：**
- 正方形图片
- 至少 300×300 像素
- JPG 或 PNG 格式

---

## 🚀 第二步：部署到 GitHub

### 方法一：使用部署脚本（推荐）

```powershell
cd D:\Code\academic-website
.\deploy.ps1
```

### 方法二：手动部署

```powershell
# 1. 进入项目目录
cd D:\Code\academic-website

# 2. 初始化 Git 仓库
git init

# 3. 添加远程仓库
git remote add origin https://github.com/Placebo303/Placebo303.github.io.git

# 4. 添加所有文件
git add .

# 5. 提交
git commit -m "Initial commit: Academic homepage"

# 6. 推送
git push -u origin main --force
```

---

## ⚙️ 第三步：启用 GitHub Pages

1. 打开 https://github.com/Placebo303/Placebo303.github.io
2. 点击 **Settings**
3. 左侧菜单选择 **Pages**
4. **Source** 设置：
   - 选择 **Deploy from a branch**
   - Branch 选择 **main**
   - 文件夹选择 **/ (root)**
5. 点击 **Save**

等待 1-5 分钟后，访问：
```
https://placebo303.github.io
```

---

## 📁 项目文件结构

```
D:\Code\academic-website\
├── index.html              # 首页 ✅已添加
├── _config.yml             # 网站配置 ✅已更新
├── _includes/
│   ├── about/
│   │   ├── en.md          # 英文简介 ✅已更新
│   │   └── zh.md          # 中文简介 ✅已更新
│   └── nav.html           # 导航栏 ✅已更新
├── _layouts/              # 布局模板
├── css/                   # 样式文件
├── js/                    # JavaScript
├── img/                   # 图片目录（放头像）
├── research.md            # 研究页面 ✅已更新
├── projects.md            # 项目页面 ✅已更新
├── publications.md        # 论文页面 ✅已更新
├── cv.md                  # 简历页面 ✅已更新
├── contact.md             # 联系页面 ✅已更新
├── notes.md               # 笔记页面
├── deploy.ps1             # 部署脚本 ✅新增
└── DEPLOY-GUIDE.md        # 部署指南 ✅新增
```

---

## ❓ 常见问题

### Q: 404 错误怎么办？
A: 检查以下几点：
1. 确保代码已推送到 GitHub
2. GitHub Pages 设置中选择 `main` 分支
3. 等待 1-5 分钟让构建完成
4. 清除浏览器缓存

### Q: 如何更新网站内容？
A: 编辑对应的 `.md` 文件，然后运行 `.\deploy.ps1`

### Q: 没有安装 Ruby 怎么办？
A: 不需要安装 Ruby，GitHub Pages 会自动构建。

---

## 📞 需要帮助？

如有问题，请联系：
- Email: kaiyanghust@hust.edu.cn

详细部署指南请查看：[DEPLOY-GUIDE.md](DEPLOY-GUIDE.md)