import { Given, When, Then, DataTable } from '@badeball/cypress-cucumber-preprocessor';

Given(`que o usuário está na página de login`, () => {
    cy.visit('https://www.saucedemo.com/')
});

When(`preencher usuário {string} e a senha {string}`, (usuario, senha) => {
    cy.get('[data-test="username"]').type(usuario)
    cy.get('[data-test="password"]').type(senha)
});

When(`clicar no botão {string}`, (btnLogin) => {
    cy.contains(btnLogin).click()
});

Then(`deve ser redirecionado para a página inicial do painel`, () => {
    cy.url().should('include', 'inventory')
});

Then(`deve exibir os itens disponíveis no e-commerce`, () => {
    cy.get('[data-test="inventory-list"]').should('exist')
});

/* 
//Reutilizamos no step When(`preencher usuário {string} e a senha {string}`
When(`preencher o campo de usuário {string} e o campo de senha {string}`, (usuarioInvalido, senhaInvalida) => {
    cy.get('[data-test="username"]').type(usuarioInvalido)
    cy.get('[data-test="password"]').type(senhaInvalida)
}); */

Then(`deve aparecer uma mensagem de erro {string}`, (mensagemErro) => {
    cy.get('[data-test="error"]').should('contain', mensagemErro)
}); 