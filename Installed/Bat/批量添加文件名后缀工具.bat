chcp 65001
@echo off  
title 批量替换文件名后缀   
echo.  
echo 本批处理可批量替换本文件所在文件夹下指定文件类型的文件的文件名后缀。  
echo.  
echo.&set /p strtype= 请输入要添加后缀的文件类型（例：jpg）：  
echo.&set /p strname= 请输入要添加的后缀字符串（无需更改请直接回车）：
set strtype=.%strtype%
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a /b *%strtype%') do (
set strnname=%%i
set strnname=!strnname:%strtype%=%strname%!
set strnname=!strnname!%strtype%
ren "%%i" "!strnname!"
)
echo.  
echo 修改完毕！  
echo. 
pause