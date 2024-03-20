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
Então deve aparecer a mensagem de alerta "Preencha os campos obrigatórios, mascados com um asterisco"

Cenário: Um campo com asterisco não preenchido
Quando eu não preencher apenas um campo obrigatório
E clicar em "Finalizar compra"
Então deve aparecer a mensagem de alerta "Preencha os campos obrigatórios, mascados com um asterisco"

Cenário: Campo e-mail preenchido de forma válida
Quando eu inserir no campo endereço de e-mail "erika@ebac.com"
E clicar em "Finalizar compra"
Então deve aparecer a mensagem "Sua compra foi finalizada com sucesso"

Cenário: Campo e-mail preenchido de forma inválida
Quando eu inserir no campo endereço de e-mail "erikaebac.com"
E clicar em "Finalizar compra"
Então deve aparecer a mensagem de alerta "Preencha o campo endereço de e-mail com um e-mail válido"

Esquema do Cenário: Autenticar múltiplos e-mails válidos
Quando eu digitar o <usuario>
E clicar em "Finalizar compra"
Então deve exibir a <mensagem> de sucesso

Exemplos:
| usuario               | mensagem    |
| "felipe@ebac.com.br"  | "Sua compra foi finalizada com sucesso" |
| "eduardo@ebac.com.br" | "Sua compra foi finalizada com sucesso" |
| "gustavo@ebac.com.br" | "Sua compra foi finalizada com sucesso" |

Esquema do Cenário: Autenticar múltiplos e-mails inválidos
Quando eu digitar o <usuario>
E clicar em "Finalizar compra"
Então deve exibir a <mensagem> alerta

Exemplos:
| usuario              | mensagem    |
| "felipeebac.com.br"  | "Preencha o campo endereço de e-mail com um e-mail válido"  |
| "eduardoebac.com.br" | "Preencha o campo endereço de e-mail com um e-mail válido" |
| "gustavoebac.com.br" | "Preencha o campo endereço de e-mail com um e-mail válido" |