@echo off
cd /d "C:\Users\11\.gemini\antigravity\scratch\debian-tv-hybrid-iso"
echo ====================================================
echo Uploading files to https://github.com/n0name1111/debian-tv ...
echo ====================================================
git remote remove origin 2>nul
git remote add origin https://github.com/n0name1111/debian-tv.git
git branch -M main
git push -u origin main
echo.
echo Process finished.
pause
