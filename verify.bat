@echo off
echo 验证个人学术主页内容包...
echo.

echo 检查核心文件...
if exist "_config.yml" (
    echo [✓] _config.yml
) else (
    echo [✗] _config.yml 不存在
)

if exist "_includes\nav.html" (
    echo [✓] _includes/nav.html
) else (
    echo [✗] _includes/nav.html 不存在
)

if exist "_includes\about\en.md" (
    echo [✓] _includes/about/en.md
) else (
    echo [✗] _includes/about/en.md 不存在
)

if exist "_includes\about\zh.md" (
    echo [✓] _includes/about/zh.md
) else (
    echo [✗] _includes/about/zh.md 不存在
)

if exist "research.md" (
    echo [✓] research.md
) else (
    echo [✗] research.md 不存在
)

if exist "projects.md" (
    echo [✓] projects.md
) else (
    echo [✗] projects.md 不存在
)

if exist "publications.md" (
    echo [✓] publications.md
) else (
    echo [✗] publications.md 不存在
)

if exist "cv.md" (
    echo [✓] cv.md
) else (
    echo [✗] cv.md 不存在
)

if exist "contact.md" (
    echo [✓] contact.md
) else (
    echo [✗] contact.md 不存在
)

if exist "notes.md" (
    echo [✓] notes.md
) else (
    echo [✗] notes.md 不存在
)

echo.
echo 检查开发文件...
if exist "Gemfile" (
    echo [✓] Gemfile
) else (
    echo [✗] Gemfile 不存在
)

if exist "Rakefile" (
    echo [✓] Rakefile
) else (
    echo [✗] Rakefile 不存在
)

if exist "deploy.sh" (
    echo [✓] deploy.sh
) else (
    echo [✗] deploy.sh 不存在
)

if exist ".gitignore" (
    echo [✓] .gitignore
) else (
    echo [✗] .gitignore 不存在
)

echo.
echo 检查文档文件...
if exist "README.md" (
    echo [✓] README.md
) else (
    echo [✗] README.md 不存在
)

if exist "implementation-guide.md" (
    echo [✓] implementation-guide.md
) else (
    echo [✗] implementation-guide.md 不存在
)

if exist "site-structure.md" (
    echo [✓] site-structure.md
) else (
    echo [✗] site-structure.md 不存在
)

if exist "SUMMARY.md" (
    echo [✓] SUMMARY.md
) else (
    echo [✗] SUMMARY.md 不存在
)

if exist "FINAL-REPORT.md" (
    echo [✓] FINAL-REPORT.md
) else (
    echo [✗] FINAL-REPORT.md 不存在
)

echo.
echo 验证完成！
echo.
echo 下一步操作：
echo 1. 修改 _config.yml 中的个人信息
echo 2. 更新各个页面的内容
echo 3. 添加个人照片到 img 目录
echo 4. 运行 rake serve 本地预览
echo 5. 部署到 GitHub Pages
echo.
pause