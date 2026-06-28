# GitHub Pages 部署脚本
# 用法：.\deploy.ps1

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  学术主页部署脚本" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查是否安装了 Git
if (!(Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "错误：未安装 Git" -ForegroundColor Red
    Write-Host "请先安装 Git：https://git-scm.com/" -ForegroundColor Yellow
    exit 1
}

# 进入项目目录
Set-Location "D:\Code\academic-website"
Write-Host "当前目录：$(Get-Location)" -ForegroundColor Green

# 初始化 Git 仓库（如果还没有）
if (!(Test-Path ".git")) {
    Write-Host "初始化 Git 仓库..." -ForegroundColor Yellow
    git init
    git remote add origin https://github.com/Placebo303/Placebo303.github.io.git
}

# 检查是否有更改
$status = git status --porcelain
if ($status) {
    Write-Host "检测到文件更改，准备提交..." -ForegroundColor Yellow
    
    # 添加所有文件
    git add .
    
    # 提交
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "Update academic homepage: $timestamp"
    
    Write-Host "代码已提交" -ForegroundColor Green
} else {
    Write-Host "没有检测到更改" -ForegroundColor Yellow
}

# 推送到 GitHub
Write-Host "正在推送到 GitHub..." -ForegroundColor Yellow
git push -u origin main --force

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  部署成功！" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "请等待 1-5 分钟后访问：" -ForegroundColor Cyan
    Write-Host "https://placebo303.github.io" -ForegroundColor White
    Write-Host ""
    Write-Host "如果仍然显示 404，请检查：" -ForegroundColor Yellow
    Write-Host "1. GitHub Pages 设置是否正确" -ForegroundColor Yellow
    Write-Host "2. 分支是否选择 main" -ForegroundColor Yellow
    Write-Host "3. 等待几分钟让构建完成" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "  推送失败" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "请检查：" -ForegroundColor Yellow
    Write-Host "1. 网络连接是否正常" -ForegroundColor Yellow
    Write-Host "2. GitHub 仓库权限" -ForegroundColor Yellow
    Write-Host "3. 远程仓库地址是否正确" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")