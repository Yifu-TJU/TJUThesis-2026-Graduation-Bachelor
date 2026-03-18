@echo off
setlocal enabledelayedexpansion

:: Find all files with specific extensions
for %%i in (*.aux *.log *.out *.thm *.toc *.bbl *.blg *.fdb_latexmk *.fls *.gz) do (
    if exist "%%i" (
        set "filesFound=1"
        echo     - Found and Remove %%i
        del "%%i"
    )
)

:: Check if files were found
if not defined filesFound (
    echo - Build Files NOT Found
    exit /b
)

echo - Cleaning Build Files End
