@echo off
REM 1. Corrige Dockerfile para Ruby 3.0.6
IF EXIST Dockerfile (
  powershell -Command "(Get-Content Dockerfile) -replace 'ruby:3\.4\.3-slim', 'ruby:3.0.6-slim' | Set-Content Dockerfile"
  echo Dockerfile ajustado para FROM ruby:3.0.6-slim
) ELSE (
  echo Dockerfile nao encontrado na pasta atual!
)

REM 2. Apaga Gemfile.lock antigo do projeto
IF EXIST Gemfile.lock (
  del Gemfile.lock /f
  echo Gemfile.lock antigo apagado!
) ELSE (
  echo Nenhum Gemfile.lock encontrado para apagar.
)

REM 3. Instala gems
IF EXIST Gemfile (
  echo Instalando gems...
  call bundle install
  call bundle lock --add-platform x86_64-linux
  echo Gems instaladas e lockfile ajustado!
) ELSE (
  echo Nao encontrou o Gemfile na pasta atual!
  pause
  exit /b
)

REM 4. Opcional: faz commit e push no git
echo Fazendo commit das alteracoes...
git add Dockerfile Gemfile Gemfile.lock
git commit -m "Deploy automatizado: Dockerfile Ruby 3.0.6, lockfile atualizado"
git push origin main

echo.
echo Tudo pronto para rodar o deploy no Fly.io!
echo Use: fly deploy

pause
