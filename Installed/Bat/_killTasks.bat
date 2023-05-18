%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@REM tasklist /fi "status eq running"
@echo off　
:start
taskkill /im Firefox.exe /f
taskkill /im EVCapture.exe /f
taskkill /im Everything.exe /f

cd C:\Windows\Temp
del /q *
echo All files in C:\Windows\Temp has been deleted.

rd /s /q C:\$Recycle.Bin
mkdir C:\$Recycle.Bin

::pause