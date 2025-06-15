@echo off
echo ==========================================
echo Iniciando Push e Deploy do CargaClik no Fly.io
echo ==========================================

REM Navega até a pasta do projeto (ajuste se o caminho for outro)
cd /d C:\Users\User\Documents\cargaclik

echo.
echo Adicionando alterações ao Git...
git add Gemfile Gemfile.lock

echo.
echo Fazendo commit...
git commit -m "Atualização de gems e deploy no Fly"

echo.
echo Fazendo push para o GitHub...
git push

echo.
echo Iniciando deploy no Fly.io...
wsl fly deploy

echo.
echo ==========================================
echo Deploy Finalizado!
pause

