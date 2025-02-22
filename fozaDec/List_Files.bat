@echo off
REM Get the current directory where the script is located
set "current_dir=%~dp0"

REM Change to the current directory
cd /d "%current_dir%"

REM List all files and directories, including subdirectories, but only within the current folder
echo Listing all files and directories (including subdirectories) in: %current_dir%
echo.
dir /b /a /s

REM Pause the script so you can review and copy the output
pause

REM Create a new directory named 'limy' in the current directory
if not exist "%current_dir%limy" (
    mkdir "%current_dir%limy"
    echo Directory 'limy' created successfully.
) else (
    echo Directory 'limy' already exists.
)

REM End of script
pause