chcp 65001
@echo off  
title 批量替换文件名前缀   
echo.  
echo 本批处理可批量替换本文件所在文件夹下指定文件类型的文件的文件名前缀。  
echo.  
echo.&set /p strtype= 请输入要添加前缀的文件类型（例：jpg）：  
echo.&set /p strname= 请输入要添加的前缀字符串（无需更改请直接回车）：
setlocal enabledelayedexpansion  
for /f "delims=" %%i in ('dir /a /b *.%strtype%') do (  
ren "%%~i" "%strname%%%i")  
echo.  
echo 修改完毕！  
echo.  
pause  