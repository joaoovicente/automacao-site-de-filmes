<h1 align="center">Sistema de gerenciamento de filmes - NinjaFlix</h1>

### 📌 Indice

[Sobre](#🔎-sobre)

[Tecnologias utilizadas](#💻-tecnologias-utilizadas)

[Como baixar o projeto](#🖨-como-baixar-o-projeto)

[Como recriar o projeto](#🎮-como-recriar-o-projeto)

---

## 🔎 Sobre

O projeto foi realizado em um sistema no qual fornece o gerenciamento de filmes,   
nele foi feita **automação de testes funcionais (end-to-end) com cenários em Gherkin** das funcionalidades do sistema.

---

## 💻 Tecnologias utilizadas
- [Ruby](https://rubyinstaller.org/downloads/) - versão - 2.7.5p203) com DevKit
- [Capybara](https://github.com/teamcapybara/capybara) 
- [Cucumber](https://cucumber.io/)
- [Selenium-webdriver](https://www.selenium.dev/documentation/webdriver/)
- [Rspec](https://rspec.info/)
- [IDE: VSCode](https://code.visualstudio.com/) - Extensões úteis: vscode-icons Cucumber (Gherkin) Full Support Ruby
- [Chromedriver](https://chromedriver.chromium.org/downloads) - Configurado no path: 
Obs.1: faça o download [aqui](https://chromedriver.chromium.org/downloads) (baixar de acordo com a versão do seu Chrome), descompacte em uma pasta (ex.: C:\chromedriver) Obs.2: na variável de ambiente PATH, incluir o caminho para a pasta do chromedriver (ex.: C:\chromedriver - sem o chromedriver.exe) - pode ser necessário reiniciar o sistema
---

## 🖨 Como baixar o projeto

- Fazer o clone do projeto

- Abrir a pasta em uma IDE

- Abrir o terminal e então rodar o comando **'bundle install'**

- Fazer download do arquivo docker-sistema-de-filmes.md

- Subir API esta no arquivo docker-sistema-de-filmes via linha de comando em um terminal

- Subir containers da API no Docker

- Para rodar os cenários, utilizar o comando de run do Cucumber: ex.:
 rodar todos os cenários: **'cucumber'**

- Rodar uma feature: **'cucumber features/login.feature'**

- Rodar um cenário pela tag: **'cucumber -t @new_movie'**

- Rodar todos os cenários por tag: '**cucumber -t @regressivo**'
---

## 🎮 Como recriar o projeto

- Abrir uma pasta vazia no VSCode ou IDE de sua preferência

- Criar o arquivo Gemfile (sem extensão) e incluir:

    **source 'https://rubygems.org'**

    **gem "capybara", "3.36.0"** 

    **gem "cucumber", "7.1.0"** 

    **gem "rspec", "3.11.0"** 

    **gem "selenium-webdriver", "4.1.0"**

- Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando **'bundle install'**

- Rodar o comando **'cucumber --init'**

- Extra:
Configurações do driver no arquivo **env.rb**

---
Desenvolvido por João Vicente Miranda