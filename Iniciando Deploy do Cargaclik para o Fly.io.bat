@echo off
echo =========================================
echo Iniciando Deploy do Cargaclik para o Fly.io
echo =========================================

:: Navegar até a pasta do projeto
cd C:\Users\User\Documents\cargaclik

:: Verificar status do git antes de deploy
echo ---- Status do Git ----
git status

:: Fazer um último push antes do deploy (opcional)
git add .
git commit -m "Preparando deploy para o Fly.io"
git push origin main

:: Realizar o deploy no Fly.io
echo ---- Deploy para o Fly.io ----
fly deploy

echo =========================================
echo Deploy Finalizado!
pause
