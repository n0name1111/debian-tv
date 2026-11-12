@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo ====================================================
echo  Отправка файлов сборки в ваш GitHub репозиторий:
echo  https://github.com/n0name1111/debian-tv
echo ====================================================
echo.
git remote remove origin 2>nul
git remote add origin https://github.com/n0name1111/debian-tv.git
git branch -M main
echo Запуск git push...
git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo [!] Если появилось окно авторизации GitHub, войдите через браузер.
) else (
    echo.
    echo ====================================================
    echo [V] УСПЕШНО! Все файлы загружены на GitHub.
    echo Теперь сборка ISO в Actions запустится автоматически.
    echo ====================================================
)
echo.
pause
