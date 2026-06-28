#!/bin/bash

# 个人学术主页部署脚本

echo "开始部署个人学术主页..."

# 检查是否安装了 Git
if ! command -v git &> /dev/null; then
    echo "错误: 未安装 Git"
    exit 1
fi

# 检查是否安装了 Ruby 和 Jekyll
if ! command -v ruby &> /dev/null; then
    echo "警告: 未安装 Ruby，本地预览功能不可用"
fi

if ! command -v jekyll &> /dev/null; then
    echo "警告: 未安装 Jekyll，本地预览功能不可用"
fi

# 初始化 Git 仓库（如果不存在）
if [ ! -d ".git" ]; then
    echo "初始化 Git 仓库..."
    git init
    git add .
    git commit -m "Initial commit: Personal academic homepage"
fi

# 添加远程仓库（如果不存在）
if ! git remote get-url origin &> /dev/null; then
    echo "请添加远程仓库:"
    echo "git remote add origin https://github.com/yourusername/yourusername.github.io.git"
    echo "然后运行: git push -u origin main"
else
    echo "远程仓库已配置"
fi

# 本地预览（如果安装了 Jekyll）
if command -v jekyll &> /dev/null; then
    echo "启动本地预览服务器..."
    echo "访问 http://localhost:4000 查看网站"
    echo "按 Ctrl+C 停止服务器"
    bundle exec jekyll serve
else
    echo "未安装 Jekyll，跳过本地预览"
    echo "请手动部署到 GitHub Pages:"
    echo "1. 推送代码到 GitHub"
    echo "2. 在仓库设置中启用 GitHub Pages"
    echo "3. 访问 https://yourusername.github.io"
fi

echo "部署完成！"