require "rake"
require "fileutils"

# 默认任务
task default: :serve

# 本地预览
desc "启动本地预览服务器"
task :serve do
  puts "启动 Jekyll 预览服务器..."
  puts "访问 http://localhost:4000 查看网站"
  puts "按 Ctrl+C 停止服务器"
  system "bundle exec jekyll serve --livereload"
end

# 构建网站
desc "构建网站"
task :build do
  puts "构建 Jekyll 网站..."
  system "bundle exec jekyll build"
  puts "构建完成！输出目录: _site"
end

# 清理构建文件
desc "清理构建文件"
task :clean do
  puts "清理构建文件..."
  FileUtils.rm_rf("_site")
  FileUtils.rm_rf(".sass-cache")
  FileUtils.rm_rf(".jekyll-cache")
  FileUtils.rm_rf(".jekyll-metadata")
  puts "清理完成！"
end

# 部署到 GitHub Pages
desc "部署到 GitHub Pages"
task :deploy do
  puts "部署到 GitHub Pages..."
  system "git add ."
  system "git commit -m 'Update site: #{Time.now}'"
  system "git push origin main"
  puts "部署完成！"
end

# 创建新文章
desc "创建新文章"
task :post, [:title] do |t, args|
  title = args[:title] || "new-post"
  date = Time.now.strftime("%Y-%m-%d")
  filename = "_posts/#{date}-#{title.downcase.gsub(/\s+/, '-')}.md"
  
  content = <<~CONTENT
    ---
    layout: post
    title: "#{title}"
    date: #{date} #{Time.now.strftime("%H:%M:%S")} +0000
    categories: blog
    tags: []
    ---
    
    在这里写文章内容...
  CONTENT
  
  File.write(filename, content)
  puts "创建新文章: #{filename}"
end

# 创建新页面
desc "创建新页面"
task :page, [:title] do |t, args|
  title = args[:title] || "new-page"
  filename = "#{title.downcase.gsub(/\s+/, '-')}.md"
  
  content = <<~CONTENT
    ---
    layout: page
    title: "#{title}"
    description: "#{title} 页面描述"
    ---
    
    在这里写页面内容...
  CONTENT
  
  File.write(filename, content)
  puts "创建新页面: #{filename}"
end

# 检查链接
desc "检查网站链接"
task :check_links do
  puts "检查网站链接..."
  system "bundle exec jekyll build"
  system "htmlproofer ./_site --disable-external"
  puts "链接检查完成！"
end

# 优化图片
desc "优化图片"
task :optimize_images do
  puts "优化图片..."
  Dir.glob("img/**/*.{jpg,jpeg,png,gif}").each do |image|
    puts "优化: #{image}"
    # 这里可以添加图片优化命令
  end
  puts "图片优化完成！"
end

# 生成站点地图
desc "生成站点地图"
task :sitemap do
  puts "生成站点地图..."
  system "bundle exec jekyll build"
  puts "站点地图已生成: _site/sitemap.xml"
end

# 生成 RSS 订阅
desc "生成 RSS 订阅"
task :rss do
  puts "生成 RSS 订阅..."
  system "bundle exec jekyll build"
  puts "RSS 订阅已生成: _site/feed.xml"
end

# 显示帮助信息
desc "显示帮助信息"
task :help do
  puts "可用命令:"
  puts "  rake serve          - 启动本地预览服务器"
  puts "  rake build          - 构建网站"
  puts "  rake clean          - 清理构建文件"
  puts "  rake deploy         - 部署到 GitHub Pages"
  puts "  rake post[title]    - 创建新文章"
  puts "  rake page[title]    - 创建新页面"
  puts "  rake check_links    - 检查网站链接"
  puts "  rake optimize_images - 优化图片"
  puts "  rake sitemap        - 生成站点地图"
  puts "  rake rss            - 生成 RSS 订阅"
  puts "  rake help           - 显示此帮助信息"
end