#language: pt

Funcionalidade: Login na plataforma
Como cliente EBAC-Shop
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da plataforma EBAC-Shop

Cenário: Autenticação válida
Quando eu inserir o usuário "felipe@ebac.com"
E a senha "fe2324@"
Então deve ser redirecionado para a tela de checkout

Cenário: Usuário inválido
Quando eu digitar o usuário "feripes@ebac.com"
E a senha "fe2324@"
Então deve aparecer a mensagem de alerta "Usuário inexistente"

Cenário: Usuário com senha inválida 
Quando eu digitar o usuário "felipe@ebac.com"
E a senha "2312512453"
Então deve aparecer a mensagem de alerta "Usuário ou senha inválidos"