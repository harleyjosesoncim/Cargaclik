@echo off
echo ==========================================
echo Iniciando Deploy seguro do CargaClik com Ruby 3.0.6
echo ==========================================
cd /d C:\Users\User\Documents\cargaclik

echo Criando Dockerfile corrigido...

(
echo FROM ruby:3.0.6
echo.
echo RUN apt-get update -qq ^&^& apt-get install -y build-essential libpq-dev nodejs yarn
echo.
echo WORKDIR /app
echo.
echo COPY Gemfile Gemfile.lock ./
echo RUN bundle install
echo.
echo COPY . .
echo.
echo RUN bundle exec rails assets:precompile
echo.
echo EXPOSE 3000
echo.
echo CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
) > Dockerfile

echo ==========================================
echo Fazendo commit da mudanca no Dockerfile...
git add Dockerfile
git commit -m "Corrige Dockerfile: usando Ruby 3.0.6 para Fly deploy"
git push

echo ==========================================
echo Rodando Fly Deploy...
fly deploy

echo ==========================================
echo Deploy Finalizado!
pause
