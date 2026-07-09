#language: pt

Funcionalidade: Navegação no site Cucumber.io
  Como um desenvolvedor interessado em BDD
  Eu quero navegar pelo site oficial do Cucumber
  Para que eu possa acessar a documentação e aprender sobre a ferramenta

Contexto: 
Dado que acesso o site do Cucumber.io

@documentação @criticidade-alta
Cenário: Visitar a página inicial do Cucumber.io
  Quando clicar no link Documentation
  Então deve exibir o título Introduction na página

@learn
Cenário: Acessar a seção de Aprendizado
  Quando clicar no link Learn
  Então deve exibir o título Learn na página


  

