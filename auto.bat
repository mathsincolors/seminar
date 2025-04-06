@echo off
cd /d D:\MICCAI_web\MICCAI-Workshop.github.io

REM 设置当前时间为 commit 信息
for /f "tokens=1-4 delims=/- " %%a in ("%date%") do (
    set DATE=%%a-%%b-%%c
)
for /f "tokens=1-2 delims=:." %%a in ("%time%") do (
    set TIME=%%a-%%b
)

set MSG=Auto commit at %DATE% %TIME%

git add .
git commit -m "%MSG%"
git push origin main
