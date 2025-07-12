@echo off
echo ================================
echo     Hexo 开发服务器管理脚本
echo ================================
echo.

:menu
echo 请选择操作：
echo 1. 启动开发服务器
echo 2. 构建项目
echo 3. 关闭所有Node进程
echo 4. 使用其他端口启动 (4001)
echo 5. 退出
echo.
set /p choice=请输入选择 (1-5): 

if "%choice%"=="1" goto start_server
if "%choice%"=="2" goto build_project
if "%choice%"=="3" goto kill_processes
if "%choice%"=="4" goto start_alt_port
if "%choice%"=="5" goto exit
echo 无效选择，请重新输入
goto menu

:start_server
echo 启动开发服务器...
npm start
goto menu

:build_project
echo 构建项目...
npm run build
echo 构建完成！
pause
goto menu

:kill_processes
echo 关闭所有Node进程...
taskkill /f /im node.exe >nul 2>&1
echo Node进程已关闭
pause
goto menu

:start_alt_port
echo 使用端口4001启动服务器...
npx hexo server -p 4001
goto menu

:exit
echo 再见！
pause
exit 