# 🚀 GitHub Pages 部署指南

## 问题诊断

你看到 404 错误可能是因为：
1. 文件还没有推送到 GitHub
2. GitHub Pages 没有正确配置
3. 分支名称不正确

---

## 解决方案

### 步骤 1：准备仓库

打开 PowerShell，运行以下命令：

```powershell
# 进入项目目录
cd D:\Code\academic-website

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Academic homepage for Kai Yang"

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/Placebo303/Placebo303.github.io.git

# 推送到 GitHub
git push -u origin main --force
```

### 步骤 2：配置 GitHub Pages

1. 打开 https://github.com/Placebo303/Placebo303.github.io
2. 点击 **Settings**（设置）
3. 左侧菜单找到 **Pages**
4. 在 **Source** 部分：
   - 选择 **Deploy from a branch**
   - Branch 选择 **main**
   - 文件夹选择 **/ (root)**
5. 点击 **Save**

### 步骤 3：等待部署

- GitHub Actions 会自动构建你的网站
- 通常需要 1-5 分钟
- 部署完成后会显示绿色勾号

### 步骤 4：访问网站

部署成功后，访问：
```
https://placebo303.github.io
```

---

## 常见问题

### Q1: 仍然显示 404

**检查分支名称**：
```powershell
git branch
```
确保你在 `main` 分支上。如果显示 `master`，需要重命名：
```powershell
git branch -M main
git push -u origin main --force
```

### Q2: GitHub Pages 设置中没有 main 分支

确保你已经推送了代码：
```powershell
git push origin main
```

### Q3: 构建失败

检查 `_config.yml` 文件是否有语法错误：
```powershell
bundle exec jekyll build
```

### Q4: 样式不生效

确保 CSS 文件已正确复制：
```powershell
ls D:\Code\academic-website\css
```

---

## 完整部署脚本

创建一个部署脚本 `deploy.ps1`：

```powershell
# deploy.ps1
Write-Host "开始部署学术主页..." -ForegroundColor Green

# 进入项目目录
Set-Location "D:\Code\academic-website"

# 初始化 Git（如果还没有）
if (!(Test-Path ".git")) {
    git init
    git remote add origin https://github.com/Placebo303/Placebo303.github.io.git
}

# 添加所有文件
git add .

# 提交
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "Update academic homepage: $timestamp"

# 推送
git push -u origin main --force

Write-Host "部署完成！请等待 1-5 分钟后访问 https://placebo303.github.io" -ForegroundColor Green
```

运行脚本：
```powershell
.\deploy.ps1
```

---

## 验证清单

- [ ] 所有文件已推送到 GitHub
- [ ] GitHub Pages 设置正确（main 分支）
- [ ] 构建成功（绿色勾号）
- [ ] 网站可以访问

---

## 需要帮助？

如果问题仍然存在，请提供：
1. GitHub 仓库截图
2. GitHub Pages 设置截图
3. 错误信息截图

联系邮箱：kaiyanghust@hust.edu.cn