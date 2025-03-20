#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-Shop
Quero concluir meu cadastro 
Para finalizar minha compra

Contexto:
Dado que eu queira finalizar minha compra

Cenário: Todos os campos com asterisco preenchidos
Quando eu preencher todos os campos obrigatórios
E clicar em "Finalizar compra"
Então deve aparecer a mensagem "Sua compra foi finalizada com sucesso"

Cenário: Nenhum campo com asterisco preenchido
Quando eu não preencher nenhum campo obrigatório
E clicar em "Finalizar compra"
Então deve aparecer a mensagem de alerta "Preencha os campos obrigatórios, marcados com um asterisco"

Cenário: Campo e-mail preenchido de forma válida
Quando eu inserir no campo endereço de e-mail um email válido
E clicar em "Finalizar compra"
Então deve aparecer a mensagem "Sua compra foi finalizada com sucesso"

Cenário: Campo e-mail preenchido de forma inválida
Quando eu inserir no campo endereço de e-mail um email inválido
E clicar em "Finalizar compra"
Então deve aparecer a mensagem de alerta "Preencha o campo endereço de e-mail com um e-mail válido"