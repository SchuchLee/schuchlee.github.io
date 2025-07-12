const fs = require('fs');
const path = require('path');

// 预部署脚本
console.log('Running pre-deploy script...');

// 检查必要的目录
const srcDir = path.join(__dirname, 'src');
const publicDir = path.join(__dirname, 'public');

if (!fs.existsSync(srcDir)) {
  console.log('Creating src directory...');
  fs.mkdirSync(srcDir, { recursive: true });
}

console.log('Pre-deploy script completed.'); 