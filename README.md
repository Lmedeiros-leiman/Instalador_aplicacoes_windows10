# Instalador aplicacoes windows10

Este aplicativo ira instalar alguns aplicativos comuns no computador do usuário e então ira remover sua presença, porem as variaveis de ambiente devem ser removidas manualmente, sugiro executar o seguinte comando no terminal para acessar o menu:
- ``` start "System Environment Variables" /WAIT "SystemPropertiesAdvanced.exe" /e ```

## O aplicativo REQUER ser executado como administrador.
## O aplicativo REQUER acesso á internet para funcionar.

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
### os arquivos de configuração podem ser mechidos, porem saiba o que esta fazendo.
na finalização da execução, a área de trabalho ganhara alguns novos icones e acessos, enquanto as barras de pesquisa e noticias serão ocultadas/minimalizadas.


```html
<div class="copy-box">
  <button class="copy-button" onclick="copyToClipboard(this)">
    Copy
  </button>
  <pre>
    <code>
      @echo off
      echo This is a script example.
      REM Some commands or code here.
      echo Script execution completed.
    </code>
  </pre>
</div>

<script>
function copyToClipboard(button) {
  const codeBlock = button.nextElementSibling.querySelector('code');
  const text = codeBlock.innerText;

  navigator.clipboard.writeText(text)
    .then(() => {
      button.innerText = 'Copied!';
      setTimeout(() => {
        button.innerText = 'Copy';
      }, 2000);
    })
    .catch((error) => {
      console.error('Failed to copy:', error);
    });
}
</script>
