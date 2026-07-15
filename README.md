# cucumber-cypress-exemplo

Exemplo de automação de testes usando Cypress com Cucumber.

## 📋 Pré-requisitos

- Node.js 20.12+ (exigido pelo `@badeball/cypress-cucumber-preprocessor`)
- npm
- Git

## 🚀 Como usar este projeto

### 1. Clone o repositório
```bash
git clone https://github.com/fabioaraujoqa/cucumber-cy-sauce.git
cd cucumber-cy-sauce
```

### 2. Instale as dependências
```bash
npm install
```

### 3. Execute os testes
```bash
# Executar testes em modo headless
npm run cy:run

# Executar testes com interface gráfica
npm run cy:open

# Executar testes filtrando por tag
npm run cy:run:tags @learn
```

## ⚙️ CI/CD — Testes e publicação do report

Este projeto possui um workflow do GitHub Actions (`.github/workflows/deploy-report.yml`) que roda automaticamente a cada push na branch `main` e faz o seguinte:

1. **Instala as dependências** do projeto
2. **Executa os testes** do Cypress no navegador Chrome
3. **Gera o report HTML** do Cucumber (criado automaticamente pelo preprocessor em `cypress/reports/index.html`)
4. **Publica o report no GitHub Pages**, ficando disponível publicamente

O report atualizado pode ser acessado em:

**https://fabioaraujoqa.github.io/cucumber-cy-sauce/**

> O workflow também pode ser executado manualmente pela aba **Actions** do repositório (botão *Run workflow*).

### Como configurar em um fork/repositório próprio

1. Vá em **Settings → Pages** e, em **Source**, selecione **GitHub Actions**
2. Certifique-se de que o workflow contém o bloco de permissões abaixo (sem ele o deploy falha com erro 403):

```yaml
permissions:
  contents: read
  pages: write
  id-token: write
```

3. Faça um push na branch `main` e acompanhe a execução na aba **Actions**

Não é necessário criar tokens ou secrets — a autenticação é feita automaticamente pelo próprio GitHub Actions.

## 🛠 Tecnologias utilizadas

| Pacote | Versão |
|---|---|
| Cypress | 15 |
| @badeball/cypress-cucumber-preprocessor | 26 |
| @bahmutov/cypress-esbuild-preprocessor | 2 |
| esbuild | 0.28 |

## 📂 Estrutura do projeto

```
cypress/
  e2e/                    # Arquivos .feature (Gherkin/BDD)
  fixtures/               # Dados de teste fixos
  support/
    commands.js           # Comandos Cypress customizados
    e2e.js                # Configuração global dos testes
    step_definitions/     # Implementação dos steps Gherkin
```

## 📚 Recursos de aprendizado

Este projeto foi criado como exemplo de automação de testes utilizando Cypress com Cucumber (BDD).
