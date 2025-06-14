@echo off
echo ========================================
echo  🚀 Deploy automático CargaClik no Fly.io
echo ========================================

REM Criar ou sobrescrever o .dockerignore
echo Criando .dockerignore otimizado...

(
echo log/*
echo tmp/*
echo *.log
echo vendor/bundle
echo node_modules
echo .bundle
echo coverage
echo .byebug_history
echo .env
echo .env.development
echo .env.test
echo .env.production.local
echo .rspec
echo spec/
echo test/
echo features/
echo tmp/*
echo storage/*
echo public/assets/*
echo public/packs/*
echo public/packs-test/*
echo public/uploads/*
echo public/system/*
echo .sass-cache
echo .idea/
echo .vscode/
echo *.iml
echo *.zip
echo *.tar
echo *.gz
echo *.rar
echo *.mp4
echo *.avi
echo *.mkv
echo *.mov
echo .git
echo .gitignore
echo Dockerfile*
echo docker-compose*
) > .dockerignore

echo ✅ .dockerignore criado!

echo.
echo ========================================
echo Fazendo commit no Git...
echo ========================================
git add .
git commit -m "Atualiza .dockerignore e prepara deploy"
git push origin main

echo.
echo ========================================
echo Fazendo Deploy no Fly.io...
echo ========================================
fly deploy

echo.
echo ✅ Deploy Finalizado!
pause
