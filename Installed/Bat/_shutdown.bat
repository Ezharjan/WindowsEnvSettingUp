%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off
echo 正在清除系统垃圾文件 请稍等......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo 清除系统垃圾完成 请检查浏览器是否已正常打开
::清空Win7/Win8回收站
for %%a in (C D) do (
if exist %%a:\ (
del /f /s /q "%%a:\$recycle.bin\*.*" >nul 2>nul
)
)

cd C:\Windows\Temp
del /q *
echo All files in C:\Windows\Temp has been deleted.

rd /s /q C:\$Recycle.Bin
mkdir C:\$Recycle.Bin


:: Shutdown right now
shutdown -s -t 0


:: Some of my own tasks to be down
:: psh-homeworks.bat


echo. & pause