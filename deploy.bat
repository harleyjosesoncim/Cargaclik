@echo off
echo ==============================================
echo Iniciando deploy do projeto Ruby on Rails no Fly.io...
echo ==============================================
echo.
REM Ajuste o caminho do projeto abaixo se necessário:
echo Acessando diretório do projeto...
if not exist "C:\Users\User\Documents\cargaclik\" (
    echo ERRO: Não foi possível encontrar o diretório do projeto.
    echo Verifique o caminho especificado no script.
    goto end
)
cd /d "C:\Users\User\Documents\cargaclik"
echo Diretório do projeto acessado com sucesso.
echo.
echo Iniciando o deploy via WSL (Ubuntu)...
wsl -e bash -l -c "export PATH=$HOME/.fly/bin:$PATH && cd ~/cargaclik && fly deploy"
IF ERRORLEVEL 1 (
    echo.
    echo ERRO: Ocorreu uma falha durante o processo de deploy.
    echo - Verifique se o WSL \(Ubuntu\) está instalado e funcionando corretamente.
    echo - Certifique-se de que o Fly CLI está instalado no WSL e que você está logado \(ex: 'fly auth login'\).
    echo - Revise as mensagens acima para identificar a causa do erro.
    goto end
)
echo.
echo Deploy concluído com sucesso!
:end
echo.
pause
