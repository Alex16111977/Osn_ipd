@echo off
chcp 65001 >nul
echo ========================================
echo Инициализация Git репозитория
echo ========================================
echo.

REM Проверка наличия git
where git >nul 2>&1
if %errorlevel% neq 0 (
    echo [ОШИБКА] Git не установлен!
    echo Пожалуйста, установите Git с https://git-scm.com/
    pause
    exit /b 1
)

REM Инициализация репозитория
echo [1/6] Инициализация Git репозитория...
git init

REM Добавление файлов
echo [2/6] Добавление файлов в индекс...
git add README.md
git add .gitignore
git add requirements.txt
git add Documents/
git add input/
git add output_ai/
git add Promt/

REM Первый коммит
echo [3/6] Создание первого коммита...
git commit -m "Initial commit: AI система классификации ОС по УКТ ЗЕД"

REM Создание ветки main
echo [4/6] Переименование ветки в main...
git branch -M main

REM Добавление удаленного репозитория
echo [5/6] Добавление удаленного репозитория GitHub...
echo.
echo ВНИМАНИЕ: Сначала создайте пустой репозиторий на GitHub:
echo https://github.com/new
echo.
echo Название репозитория: Osn_ipd
echo Описание: AI-система для классификации основных средств по кодам УКТ ЗЕД
echo.
set /p repo_url="Введите URL вашего репозитория (например: https://github.com/Alex16111977/Osn_ipd.git): "

git remote add origin %repo_url%

REM Отправка на GitHub
echo [6/6] Отправка кода на GitHub...
git push -u origin main

echo.
echo ========================================
echo ✅ Готово! Репозиторий успешно создан!
echo ========================================
echo.
echo Ваш репозиторий доступен по адресу:
echo %repo_url%
echo.
pause
