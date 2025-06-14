@echo off
cd /d %~dp0

REM Adiciona todos os arquivos alterados
git add .

REM Cria um commit com mensagem padrão ou personalizada
set /p MSG=Digite a mensagem do commit: 
git commit -m "%MSG%"

REM Faz o push para o branch principal (main)
git push origin main

pause
