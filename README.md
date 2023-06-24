# Instalador aplicacoes windows10

Este aplicativo ira instalar alguns aplicativos comuns no computador do usuário e então ira remover sua presença, porem as variaveis de ambiente devem ser removidas manualmente, sugiro executar o seguinte comando no terminal para acessar o menu:

```cmd

start "System Environment Variables" /WAIT "SystemPropertiesAdvanced.exe" /e
```


- ## O aplicativo REQUER ser executado como administrador.
- ## O aplicativo REQUER acesso á internet para funcionar.

Ao ser executado o aplicativo ira instalar chocolatey no computador e em seguida instalar as seguintes aplicações:
- Google Chrome
- Firefox
- CCleaner
- Java
- Microsoft Office 2019 HB
- Winrar
- Adobe acobrat reader
- K-Lite

Após a instalação dos aplicativos sera iniciada a configuração dos mesmos, tendo a inicialização dos navegadores para criar os arquivos de perfil do usuário.
### os arquivos de configuração podem ser mechidos, porem saiba o que esta fazendo:
os arquivos são configurações ja salvas dos aplicativos, apenas entre na pasta do aplicativo e procure por um arquivo de mesmo nome que o na pasta de configuração. no caso dos navegadores isto salvara os favoritos e até mesmo a escolha de layout.

na finalização da execução, a área de trabalho ganhara alguns novos icones e acessos, enquanto as barras de pesquisa e noticias serão ocultadas/minimalizadas.


