@echo off
REM Altere para o diretório do projeto (caso rode de outro local)
cd /d "%~dp0"

REM Adiciona todos os arquivos (inclusive novos e alterados)
git add .

REM Comita com uma mensagem padrão e data/hora
git commit -m "Atualização automática %date% %time%"

REM Define a branch principal como main (pode comentar se não precisar)
git branch >nul 2>&1
git branch -M main

REM Altere AQUI para o endereço do seu repositório GitHub
set REPO_URL=https://github.com/SEU_USUARIO/cargaclick.g
git add .
git commit -m "Primeiro commit"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/cargaclick.git
git push -u origin main
