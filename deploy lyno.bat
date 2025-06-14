@echo off
cd /d %~dp0

echo Iniciando deploy para o Fly.io...

REM Etapa 1: Garante que está na raiz do projeto
if not exist fly.toml (
    echo O arquivo fly.toml nao existe. Execute 'flyctl launch' antes.
    pause
    exit /b
)

REM Etapa 2: Faz deploy
flyctl deploy

REM Etapa 3: Abre o app no navegador
flyctl open

pause
