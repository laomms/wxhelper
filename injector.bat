@echo off
chcp 65001 >nul

:: 检查是否以管理员权限运行
openfiles >nul 2>&1
if '%errorlevel%' NEQ 0 (
    :: 检查是否已经在管理员模式下
    if not "%1"=="elevated" (
        echo 需要管理员权限来运行此脚本。正在以管理员权限重新启动...
        powershell -Command "Start-Process cmd.exe -ArgumentList '/c %~f0 elevated' -Verb RunAs"
        exit /b
    )
    echo 脚本已以管理员权限运行。
)

:: 获取wechat.exe的PID
echo 正在获取wechat.exe进程的PID...
for /f "tokens=2 delims=," %%i in ('wmic process where "name='wechat.exe'" get processid /format:csv') do (
    set pid=%%i
)

:: 去掉PID前后的空白字符
set pid=%pid: =%

:: 打印PID到控制台
echo 进程ID: %pid%

:: 检查是否成功获取到PID
if "%pid%"=="" (
    echo 未找到wechat.exe进程
    pause
    exit /b 1
)

:: 获取当前脚本所在的目录
set scriptdir=%~dp0

:: 设置DLL的路径和injector.exe的路径
set dllpath=%scriptdir%debug\wxhelper.dll
set injectorpath=%scriptdir%injector.exe

:: 打印DLL路径和injector.exe路径
echo DLL路径: %dllpath%
echo injector.exe路径: %injectorpath%

:: 检查injector.exe是否存在
if not exist "%injectorpath%" (
    echo injector.exe 文件未找到: %injectorpath%
    pause
    exit /b 1
)

:: 执行injector.exe
echo 正在执行 "%injectorpath%" -p %pid% -i %dllpath%
"%injectorpath%" -p %pid% -i %dllpath%

pause
