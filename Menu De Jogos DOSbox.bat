::=====================================================================
:: Autor: NIDObr
:: Versão: v1.0
:: Feito em: 06/05/2018
:: Escript feito para rodar com o DOSBox: www.dosbox.com
:: Menu de escolha de jogos
::=====================================================================


echo off
:menu
cls
echo ================================================================================
echo 		Qual jogo voce quer jogar?
echo		--------------------------
echo		1- DOOM
echo		2- Duke Nuken 3D
echo		3- QUAKE
echo		4- Simcity
echo		5- Street Fighter II
echo		6- Wolfenstein 3D
echo		8- Configurar jogos
echo		9- sair
echo		--------------------------
echo ================================================================================

choice /c123456789 /N Escolha um jogo
if errorlevel 9 goto exit
if errorlevel 8 goto 8
if errorlevel 7 goto 7
if errorlevel 6 goto 6
if errorlevel 5 goto 5
if errorlevel 4 goto 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1

:1
cls
cd DOOM
DOOM.EXE
cd ..
goto :menu

:2
cls
cd DUKENU~1
DUKE3D.EXE
cd ..
goto :menu

:3
cls
cd QUAKE
QUAKE.EXE		
cd ..
goto :menu

:4
cls
cd SIMCITY
SIMCITY.EXE
cd ..
goto :menu

:5
cd STREET~1
SF2.EXE
cd ..
goto :menu

:6
cls
cd WOLFEN~1
WOLF3D.EXE
cd ..
goto :menu

:7
cd
cd ..
goto :menu

:8
echo off
cls
echo ================================================================================
echo 		Qual jogo voce quer configurar?
echo		-------------------------------
echo		a- DOOM
echo		b- Duke Nukem 3D
echo		i- Voltar
echo		-------------------------------
echo ================================================================================

choice /cabcdefghi /N Escolha um jogo>
if errorlevel 9 goto voltar
if errorlevel 8 goto h
if errorlevel 7 goto g
if errorlevel 6 goto f
if errorlevel 5 goto e
if errorlevel 4 goto d
if errorlevel 3 goto c
if errorlevel 2 goto b
if errorlevel 1 goto a

:a
cls
cd DOOM
SETUP.EXE
cd ..
goto :8

:b
cd DUKENU~1
SETUP.EXE
cd ..
goto :8

:c
cls
cd 
cd ..
goto :8

:d
cd 
cd ..
goto :8

:e
cls
cd
cd ..
goto :8

:f
cd
cd ..
goto :8

:voltar
cd ..
goto :menu

:exit
exit
