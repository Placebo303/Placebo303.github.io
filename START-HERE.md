# 🚀 快速开始指南

## 项目位置
```
D:\Code\academic-website
```

---

## 📋 当前状态

✅ 网站结构已创建  
✅ 所有内容已填充（基于你提供的信息）  
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

## 👀 第二步：本地预览（可选）

打开 PowerShell，运行以下命令：

```powershell
cd D:\Code\academic-website
bundle install
bundle exec jekyll serve
```

然后在浏览器中访问：http://localhost:4000

---

## 🚀 第三步：部署到 GitHub

### 方法一：使用 Git 命令行

```powershell
# 1. 进入项目目录
cd D:\Code\academic-website

# 2. 初始化 Git 仓库（如果还没有）
git init

# 3. 添加远程仓库
git remote add origin https://github.com/Placebo303/Placebo303.github.io.git

# 4. 添加所有文件
git add .

# 5. 提交
git commit -m "Update academic homepage with research content"

# 6. 推送
git push -u origin main
```

### 方法二：直接替换仓库文件

1. 克隆你的仓库：
   ```powershell
   git clone https://github.com/Placebo303/Placebo303.github.io.git D:\Code\Placebo303.github.io
   ```

2. 复制更新的文件：
   ```powershell
   Copy-Item -Path "D:\Code\academic-website\*" -Destination "D:\Code\Placebo303.github.io" -Recurse -Force
   ```

3. 提交并推送：
   ```powershell
   cd D:\Code\Placebo303.github.io
   git add .
   git commit -m "Update academic homepage"
   git push origin main
   ```

---

## ⚙️ 第四步：启用 GitHub Pages

1. 打开 https://github.com/Placebo303/Placebo303.github.io
2. 点击 **Settings**
3. 左侧菜单选择 **Pages**
4. **Source** 选择 `main` 分支
5. 点击 **Save**

等待几分钟后，你的网站将在以下地址可用：
```
https://placebo303.github.io
```

---

## 📁 项目文件结构

```
D:\Code\academic-website\
├── _config.yml              # 网站配置
├── _includes/
│   ├── about/
│   │   ├── en.md           # 英文简介
│   │   └── zh.md           # 中文简介
│   └── nav.html            # 导航栏
├── img/                    # 图片目录（放头像）
├── research.md             # 研究页面
├── projects.md             # 项目页面
├── publications.md         # 论文页面
├── cv.md                   # 简历页面
├── contact.md              # 联系页面
├── notes.md                # 笔记页面
├── Gemfile                 # Ruby 依赖
├── Rakefile                # 自动化脚本
└── README.md               # 说明文档
```

---

## 🔧 常用命令

### 本地预览
```powershell
cd D:\Code\academic-website
bundle exec jekyll serve --livereload
```

### 构建网站
```powershell
cd D:\Code\academic-website
bundle exec jekyll build
```

### 清理缓存
```powershell
cd D:\Code\academic-website
Remove-Item -Path "_site" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path ".jekyll-cache" -Recurse -Force -ErrorAction SilentlyContinue
```

---

## ❓ 常见问题

### Q: 没有安装 Ruby/Jekyll 怎么办？
A: 可以直接推送到 GitHub，GitHub Pages 会自动构建。

### Q: 如何修改网站内容？
A: 编辑对应的 `.md` 文件，然后重新部署。

### Q: 如何添加论文？
A: 编辑 `publications.md`，按照模板添加论文信息。

### Q: 图片不显示怎么办？
A: 检查图片路径是否正确，确保图片文件存在。

---

## 📞 需要帮助？

如有问题，请联系：
- Email: kaiyanghust@hust.edu.cn

---

## ✅ 部署检查清单

- [ ] 个人头像已添加到 `img/kai-yang.jpg`
- [ ] 本地预览测试通过（可选）
- [ ] 代码已推送到 GitHub
- [ ] GitHub Pages 已启用
- [ ] 网站可以正常访问

---

**下一步：请发送你的个人头像照片，我帮你放到正确位置。**