# SchuchLee 的个人简历网站

[![Build and Deploy](https://github.com/SchuchLee/schuchlee.github.io/actions/workflows/auto-deploy.yml/badge.svg)](https://github.com/SchuchLee/schuchlee.github.io/actions/workflows/auto-deploy.yml)

## 🌐 在线访问

**网站地址**: [https://schuchlee.github.io](https://schuchlee.github.io)

## 📖 项目简介

这是我的个人简历网站，使用 [Hexo](https://hexo.io/) 静态网站生成器和 [hexo-theme-resume](https://github.com/xaoxuu/hexo-theme-resume) 主题构建。网站展示了我的教育背景、工作经历、技术技能、项目经验等信息。

## 🛠️ 技术栈

- **静态网站生成器**: Hexo 6.3.0
- **主题**: hexo-theme-resume
- **部署**: GitHub Pages + GitHub Actions
- **包管理**: NPM

## 🚀 本地开发

### 环境要求

- Node.js >= 16.x
- Git
- NPM

### 快速开始

1. **克隆仓库**
   ```bash
   git clone https://github.com/SchuchLee/schuchlee.github.io.git
   cd schuchlee.github.io
   ```

2. **安装依赖**
   ```bash
   npm install
   ```

3. **初始化子模块**
   ```bash
   git submodule update --init --recursive
   ```

4. **本地预览**
   ```bash
   hexo clean
   hexo generate
   hexo server
   ```

5. **访问网站**
   
   打开浏览器访问 [http://localhost:4000](http://localhost:4000)

### 常用命令

```bash
# 清理缓存
hexo clean

# 生成静态文件
hexo generate

# 启动本地服务器
hexo server

# 构建并启动
npm run start

# 构建生产版本
npm run build
```

## 📝 内容编辑

### 修改简历内容

编辑 `src/index.md` 文件来更新简历内容：

- 个人信息和联系方式
- 教育经历
- 工作经验
- 技术技能
- 项目经历
- 其他相关信息

### 配置文件

- `_config.yml` - Hexo 主配置文件
- `_config.resume.yml` - 简历主题专用配置
- `package.json` - 项目依赖和脚本

## 🚀 部署

项目使用 GitHub Actions 自动部署：

1. **提交代码**
   ```bash
   git add .
   git commit -m "Update resume content"
   git push origin main
   ```

2. **自动构建**
   
   GitHub Actions 会自动：
   - 安装依赖
   - 构建网站
   - 部署到 `gh-pages` 分支
   - 更新 GitHub Pages

3. **访问网站**
   
   几分钟后即可通过 [https://schuchlee.github.io](https://schuchlee.github.io) 访问更新后的网站

## 📁 项目结构

```
schuchlee.github.io/
├── .github/
│   └── workflows/
│       └── auto-deploy.yml      # GitHub Actions 自动部署配置
├── src/                         # 源文件目录
│   ├── index.md                # 主页内容（简历）
│   └── zh-cn/                  # 中文版本
├── themes/
│   └── resume/                 # 简历主题（子模块）
├── _config.yml                 # Hexo 配置文件
├── _config.resume.yml          # 简历主题配置
├── package.json                # 项目依赖
└── README.md                   # 项目说明
```

## 🎨 主题说明

本项目使用的是 [hexo-theme-resume](https://github.com/xaoxuu/hexo-theme-resume) 主题，特点：

- 🎯 专为简历设计的清爽布局
- 📱 完美的移动端适配
- 🚀 快速加载和 SEO 优化
- 🎨 简洁美观的设计风格
- 📄 支持 PDF 下载功能

## 📄 许可证

本项目基于 MIT 许可证开源。详见 [LICENSE](LICENSE) 文件。

## 🤝 致谢

- [Hexo](https://hexo.io/) - 静态网站生成器
- [hexo-theme-resume](https://github.com/xaoxuu/hexo-theme-resume) - 简历主题
- [GitHub Pages](https://pages.github.com/) - 免费托管服务

---

## 📞 联系我

如果你对这个项目有任何建议或问题，欢迎通过以下方式联系我：

- 📧 Email: your-email@example.com
- 🌐 Website: [https://schuchlee.github.io](https://schuchlee.github.io)
- 💻 GitHub: [@SchuchLee](https://github.com/SchuchLee)

---

⭐ 如果这个项目对你有帮助，请给它一个 Star！
