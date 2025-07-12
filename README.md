# 个人简历网站

基于 Hexo + hexo-theme-resume 主题构建的个人简历网站。

🌐 **在线访问**: https://schuchlee.github.io

## 📚 目录

- [快速开始](#快速开始)
- [修改主页内容](#修改主页内容)
- [本地预览](#本地预览)
- [部署到GitHub Pages](#部署到github-pages)
- [主题配置](#主题配置)
- [常见问题](#常见问题)

## 🚀 快速开始

### 1. 克隆项目

```bash
git clone https://github.com/SchuchLee/schuchlee.github.io.git
cd schuchlee.github.io
```

### 2. 安装依赖

```bash
npm install
```

### 3. 本地预览

```bash
npm start
```

然后在浏览器中访问 `http://localhost:4000` 查看效果。

## ✏️ 修改主页内容

### 主要内容文件

- **中文版**: `src/index.md` - 主页内容
- **英文版**: `src/zh-cn/index.md` - 中文版内容

### 修改个人信息

编辑 `src/index.md` 文件，修改以下部分：

#### 1. 基本信息

```yaml
---
# 语言设置
lang: en
# 网站关键词和描述
keywords: Resume,Hexo,Resume Theme
description: This is a cool resume theme for hexo.
# 简历标题
resume_title: 你的名字's Resume
# 姓名
name: 你的名字
# 头像链接
avatar: https://your-avatar-url.com/avatar.png
```

#### 2. 联系方式

```yaml
contact:
  # 个人网站
  - icon: fas fa-globe-europe
    text: https://your-website.com
    url: https://your-website.com
  # 邮箱
  - icon: fas fa-envelope
    text: your-email@example.com
    url: mailto:your-email@example.com
  # 电话
  - icon: fas fa-phone-alt
    text: +86 138xxxx8888
    url: tel:+8613800138000
  # GitHub
  - icon: fab fa-github
    text: GitHub
    url: https://github.com/yourusername
  # LinkedIn
  - icon: fab fa-linkedin
    text: LinkedIn
    url: https://linkedin.com/in/yourusername
```

#### 3. PDF下载链接

```yaml
download:
  title: 下载简历
  icon: fas fa-download fa-fw
  url: https://github.com/yourusername/resume/releases/download/v1.0/resume.pdf
```

#### 4. 修改简历内容

在 `---` 分隔符之后，你可以使用 Markdown 语法编写简历内容：

```markdown
## <i class="fas fa-user-graduate"></i> 教育背景

**XX大学 XX学院 XX专业 本科/硕士/博士 20XX年毕业**

- GPA: 3.8/4.0
- 主修课程：计算机科学、软件工程、数据结构...

## <i class="fas fa-user-tie"></i> 工作经验

#### 2020年1月 ~ 至今：XX公司 - 高级软件工程师

- 负责公司核心产品的前端开发
- 使用 React、Vue.js 等技术栈
- 优化系统性能，提升用户体验

#### 2018年6月 ~ 2019年12月：XX公司 - 软件工程师

- 参与多个项目的开发和维护
- 与产品经理、设计师密切合作

## <i class="fas fa-award"></i> 项目经验

### 项目A - 电商平台

#### 2020年3月 ~ 2020年12月：公司项目，团队协作

- 使用 React + Redux 构建前端应用
- 实现了购物车、订单管理等核心功能
- 项目地址：https://github.com/yourusername/project-a

### 项目B - 管理系统

#### 2019年6月 ~ 2020年2月：个人项目

- 使用 Vue.js + Element UI 开发
- 包含用户管理、权限控制等功能

## <i class="fas fa-code"></i> 技能清单

- **前端**: HTML5, CSS3, JavaScript, TypeScript, React, Vue.js
- **后端**: Node.js, Python, Java, Go
- **数据库**: MySQL, PostgreSQL, MongoDB, Redis
- **工具**: Git, Docker, Webpack, Vite
- **其他**: AWS, Linux, Nginx

## <i class="fas fa-phone-alt"></i> 联系方式

目前状态：在职，考虑新机会

<i class="fas fa-envelope fa-fw"></i> your-email@example.com
<i class="fas fa-phone-alt fa-fw"></i> +86 138xxxx8888
```

## 👀 本地预览

### 方法一：开发模式（推荐）

```bash
# 启动开发服务器，支持热重载
npm start
```

访问 `http://localhost:4000` 查看效果。修改文件后会自动刷新。

### 方法二：构建预览

```bash
# 构建静态文件
npm run build

# 使用简单的HTTP服务器预览
npx http-server public -p 8080
```

访问 `http://localhost:8080` 查看效果。

### 常用命令

```bash
# 启动开发服务器
npm start

# 构建项目
npm run build

# 清理缓存
npx hexo clean

# 生成静态文件
npx hexo generate

# 部署到GitHub Pages
npm run deploy
```

## 🚀 部署到GitHub Pages

### 自动部署（推荐）

项目已配置GitHub Actions自动部署，每次推送到 `main` 分支时会自动构建和部署。

```bash
# 提交修改
git add .
git commit -m "更新简历内容"
git push origin main
```

### 手动部署

```bash
# 构建并部署
npm run deploy
```

## ⚙️ 主题配置

### 修改主题配置

编辑 `_config.yml` 文件中的 `theme_config` 部分：

```yaml
theme_config:
  # 搜索引擎设置
  robots: index,follow
  
  # CDN配置
  cdn:
    jquery: https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js
    vue: https://cdn.jsdelivr.net/npm/vue@2.5.21/dist/vue.min.js
    
  # 版权信息
  copyright: '[Copyright © 2024 Your Name](https://yourwebsite.com)'
```

### 自定义样式

在 `themes/resume/source/css/` 目录下添加自定义CSS文件。

## 🔧 常见问题

### Q: 如何修改网站图标？

A: 修改 `_config.yml` 中的 `favicon` 和 `shortcut_icon` 配置：

```yaml
favicon: https://your-domain.com/favicon.ico
shortcut_icon: https://your-domain.com/favicon.ico
```

### Q: 如何添加新的联系方式？

A: 在 `src/index.md` 的 `contact` 部分添加新项：

```yaml
contact:
  - icon: fab fa-twitter  # Font Awesome 图标
    text: @yourusername
    url: https://twitter.com/yourusername
```

### Q: 如何修改主题颜色？

A: 编辑主题的CSS文件或在 `_config.yml` 中配置自定义样式。

### Q: 端口被占用怎么办？

A: 如果遇到 `EADDRINUSE` 错误，说明端口被占用：

**方法1：关闭占用端口的进程**
```bash
# Windows PowerShell
Get-Process -Name "node" -ErrorAction SilentlyContinue | Stop-Process -Force

# Windows CMD
taskkill /f /im node.exe
```

**方法2：使用其他端口**
```bash
# 使用端口4001
npx hexo server -p 4001

# 使用端口3000
npx hexo server -p 3000
```

**方法3：使用管理脚本**
```bash
# 运行管理脚本（Windows）
dev-server.bat
```

### Q: 本地预览时页面空白？

A: 检查以下几点：
1. 确保 `npm install` 已成功执行
2. 检查 `src/index.md` 文件格式是否正确
3. 运行 `npx hexo clean` 清理缓存后重试

### Q: 部署后页面显示异常？

A: 检查以下几点：
1. 确保 `.nojekyll` 文件存在
2. 检查 GitHub Pages 设置是否正确
3. 查看 GitHub Actions 构建日志

## 📝 开发说明

### 项目结构

```
schuchlee.github.io/
├── src/                    # 源文件目录
│   ├── index.md           # 主页内容
│   └── zh-cn/             # 中文版内容
├── themes/                # 主题目录
├── public/                # 构建输出目录
├── _config.yml            # Hexo配置文件
├── package.json           # 项目依赖
├── pre-deploy.js          # 预部署脚本
├── .nojekyll             # 禁用Jekyll
└── README.md             # 本文件
```

### 技术栈

- **静态站点生成器**: Hexo 6.3.0
- **主题**: hexo-theme-resume
- **部署**: GitHub Pages + GitHub Actions
- **包管理**: npm

## 📄 许可证

本项目基于原主题的许可证，详见 [LICENSE](LICENSE) 文件。

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

**Happy Coding! 🎉**
