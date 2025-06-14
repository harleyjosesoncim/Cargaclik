@echo off
REM Apaga todos os Gemfile.lock problemáticos encontrados

del "C:\Users\User\Documents\cargaclik\backend\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\cargaclik\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\ruby-3.0.6\.bundle\gems\rbs-1.4.0\steep\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\ruby-3.0.6\.bundle\gems\typeprof-0.15.2\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\ruby-3.0.6\sample\trick2018\03-tompng\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\ruby-3.0.6\spec\bundler\realworld\fixtures\warbler\Gemfile.lock" /f
del "C:\Users\User\Documents\cargaclik\ruby-3.0.6\spec\mspec\Gemfile.lock" /f

echo.
echo Lockfiles antigos deletados! Agora só manter UM Gemfile.lock correto na pasta do backend do seu projeto.
pause
