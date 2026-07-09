# cucumber-cypress-exemplo

Exemplo de automação de testes usando Cypress com Cucumber para estudantes da EBAC.

## 📋 Pré-requisitos

- Node.js 20.12+ (exigido pelo `@badeball/cypress-cucumber-preprocessor`)
- npm
- Git

## 🚀 Como usar este projeto

### 1. Clone o repositório
```bash
git clone https://github.com/EBAC-QE/cucumber-cypress-exemplo.git
cd cucumber-cypress-exemplo
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

Publica relatório: 

https://github.com/peaceiris/actions-gh-pages

## 📚 Recursos de aprendizado

Este projeto foi criado para fins educacionais da EBAC (Escola Britânica de Artes Criativas e Tecnologia).
