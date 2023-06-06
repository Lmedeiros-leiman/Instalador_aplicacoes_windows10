@echo off

set "startingFolder=%cd%"



echo Buscando atualizacoes windows...
wuauclt /detectnow

echo instalando Chocolatey : o responsavel por instalar nossos pacotes...

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


echo instalando Firefox...
chocho install firefox -y

echo Configurando o Firefox...
cd "%APPDATA%\Mozilla\Firefox\Profiles"

set copycmd=/y
start "browser" /d "C:\Program Files\Mozilla Firefox" firefox.exe
timeout 7


c:
cd %userprofile%\AppData\Roaming\Mozilla\Firefox\
for /f "tokens=1,2 delims=/" %%i in ('findstr /l ".default" profiles.ini') do call set var1=%%j
cd profiles\%var1%





set copycmd=/y
start "browser" /d "C:\Program Files\Mozilla Firefox" firefox.exe
timeout 7
c:
cd %userprofile%\AppData\Roaming\Mozilla\Firefox\
for /f "tokens=1,2 delims=/" %%i in ('findstr /l ".default" profiles.ini') do call set var1=%%j
cd profiles\%var1%
if exist h:\backupbookmarks\places.sqlite copy h:\backupbookmarks\places.sqlite










