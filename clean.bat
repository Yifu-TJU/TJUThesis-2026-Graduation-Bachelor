@echo off
setlocal

:: 标记是否找到文件
set "filesFound="

:: 递归查找并删除
for /r %%i in (*.aux *.log *.out *.thm *.toc *.bbl *.blg *.fdb_latexmk *.fls *.gz) do (
    set "filesFound=1"
    echo - Found and Remove %%i
    del /q "%%i"
)

:: 判断是否找到文件
if not defined filesFound (
    echo - Build Files NOT Found
    exit /b
)

echo - Cleaning Build Files End