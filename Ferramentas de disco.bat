@echo off
color 2
chcp 1252
:volta
cls

echo Esse arquivo em lote executa as ferramentas de disco
echo Digite 1 para limpeza de disco
echo Digite 2 para desfragmentador de disco
echo Digite 3 para verificação de disco
echo Digite 4 para sair
set /p op=Digite agora a opção que vai querer: 
pause
cls
if "%op%" == "1" goto ldd
if "%op%" == "2" goto ddd
if "%op%" == "3" goto rhd
if "%op%" == "4" goto F
:ldd
start C:\Windows\system32\cleanmgr.exe
goto fim

:ddd
start C:\Windows\system32\dfrgui.exe
goto fim

:rhd
echo Digite somente a letra da unidade que sera verificada
echo Caso queira sair digite 0
set /p opc=Digite agora e pressione enter 
cls
if "%opc%" == "0" goto F
chkdsk "%opc%": /r /f 
goto fim

:fim
cls
color 2
pause
cls
set /p mais=Deseja fazer mais algo?(1=sim/0=nao)
if "%mais%"=="1" goto volta
:F
cls
pause
cls