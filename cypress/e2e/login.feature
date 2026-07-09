#language: pt

Funcionalidade: Login do Usuário
  Como um usuário cadastrado
  Quero fazer login no sistema
  Para acessar a minha área restrita
 
Contexto: 
    Dado que o usuário está na página de login

@criticidade-alta @smoke-test
Cenário: Login com credenciais válidas
    Quando preencher usuário "standard_user" e a senha "secret_saucexxxx"
    E clicar no botão "Login"
    Então deve ser redirecionado para a página inicial do painel
    E deve exibir os itens disponíveis no e-commerce

@criticidade-media @full-test
Cenário: Login com credenciais inválidas
    Quando preencher usuário "teste" e a senha "senha1234"
    E clicar no botão "Login"
    Então deve aparecer uma mensagem de erro "Epic sadface: Username and password do not match any user in this service"

