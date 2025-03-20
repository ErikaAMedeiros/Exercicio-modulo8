#language: pt

Funcionalidade: Login na plataforma
Como cliente EBAC-Shop
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da plataforma EBAC-Shop

Cenário: Autenticação válida
Quando eu inserir um email válido
E uma senha senha válida
Então deve ser redirecionado para a tela de checkout

Cenário: Usuário inválido
Quando eu digitar um email em formato inválido ou não cadastrado
E uma senha válida
Então deve aparecer a mensagem de alerta "Usuário inválido ou inexistente"

Cenário: Usuário com senha inválida 
Quando eu digitar um email válido
E uma senha inválida
Então deve aparecer a mensagem de alerta "Usuário ou senha inválidos"

Esquema do Cenário: Autenticar múltiplos e-mails válidos
Quando eu digitar o email <usuario>
E clicar em "Login"
Então deve exibir a mensagem de sucesso <mensagem>

Exemplos:
|usuario|mensagem|
|"felipe@ebac.com.br"|"Login realizado com sucesso"|
|"eduardo@ebac.com.br"|"Login realizado com sucesso"|
|"gustavo@ebac.com.br"|"Login realizado com sucesso"|

Esquema do Cenário: Autenticar múltiplos e-mails inválidos
Quando eu digitar o email <usuario>
E clicar em "Login"
Então deve exibir a mensagem de alerta <mensagem>

Exemplos:
|usuario|mensagem|
|"felipeebac.com.br"|"Usuário ou senha inválidos"|
|"eduardoebac.com.br"|"Usuário ou senha inválidos"|
|"gustavoebac.com.br"|"Usuário ou senha inválidos"|