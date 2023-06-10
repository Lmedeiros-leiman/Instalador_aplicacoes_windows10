@echo off
set "startingFolder=%cd%"
echo %startingFolder%

echo Buscando atualizacoes windows...
wuauclt /detectnow

echo instalando Chocolatey : o responsavel por instalar nossos pacotes...

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"



echo instalando Firefox...
chocho install firefox -y

timeout 1
echo Configurando o Firefox...

start "browser" /d "C:\Program Files\Mozilla Firefox" firefox.exe
timeout 5
taskkill /IM firefox.exe 2>nul
cd %appdata%\Mozilla\Firefox\
for /f "tokens=1,2 delims=/" %%i in ('findstr /l ".default" profiles.ini') do call set var1=%%j
cd profiles\%var1%

set "finalFolder=%cd%"

if exist %startingFolder%\Firefox configuration files\prefs.js (
   echo copiando Configuracoes...
   copy "%startingFolder%\Firefox configuration files\prefs.js" %finalFolder%
) 
if exist %startingFolder%\Firefox configuration files\places.sqlite (
   echo copiando Favoritos...
   copy "%startingFolder%\Firefox configuration files\places.sqlite" %finalFolder%
)

echo Fim configuracao Firefox.
echo Configurando Microsoft Edge...

cd %iserprofile%\AppData\Local\Microsoft\Edge\User Data\Default
if exist %startingFolder%\Edge configuration files\Bookmarks (
    copy "%startingFolder%\Edge configuration files\Bookmarks" "%iserprofile%\AppData\Local\Microsoft\Edge\User Data\Default"
)

echo Fim configuracao Microsoft Edge.
echo Instalando Google Chrome...

choco install googlechrome -y

echo Configurando Google Chrome...
start "browser" /d "C:\Program Files\Google\Chrome\Application\" chrome.exe
timeout 5
taskkill /IM chrome.exe 2>nul


cd %iserprofile%\AppData\Local\Microsoft\Edge\User Data\Default
if exist %startingFolder%\Edge configuration files\Bookmarks (
    copy "%startingFolder%\Edge configuration files\Bookmarks" "%iserprofile%\AppData\Local\Microsoft\Edge\User Data\Default"
)


echo Fim configuracao google Chrome.

choco install java

choco install adobe reader

choco install klite

choco install winrar

choco install panda

choco install office

choco install ccleaner



echo Fim das instalações...
echo Começando a reconfigurar windows:

echo Reconfigurando barra de tarefas...

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f


echo Reconfigurando icones na área de trabalho...

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031A47-3F72-44A7-89C5-5595FE6B30EE}" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 /f



echo Atualizando menu incial...
ie4uinit.exe -show








