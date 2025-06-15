@echo off
echo ==========================================
echo Deploy do CargaClik IGNORANDO assets:precompile
echo ==========================================

cd /d C:\Users\User\Documents\cargaclik

echo.
echo Adicionando alterações ao Git...
git add .

echo.
echo Fazendo commit...
git commit -m "Tentativa de deploy no Fly.io com SKIP_ASSET=true"

echo.
echo Fazendo push...
git push

echo.
echo Iniciando Deploy no Fly.io com SKIP_ASSET=true...
set FLY_SKIP_BUILD_STEP=1
fly deploy --build-arg SKIP_ASSET=true

echo ==========================================
echo Deploy Finalizado! Pressione qualquer tecla para sair...
pause
