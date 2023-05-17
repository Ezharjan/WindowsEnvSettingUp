@echo off
git status
git add .
git commit -m "auto-commit"
git pull
git push
echo Succeed!
echo --------End!--------
git status
pause