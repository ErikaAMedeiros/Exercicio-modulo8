#language: pt

Funcionalidade: Configurar produtos
Como cliente da EBAC-Shop
Quero configurar meu produto de acordo com meu trabalho e gosto
E escolher a quantidade
Para depois inserir no carrinho 

Contexto:
Dado que eu acesse as configurações dos produtos 

Cenário: Campos obrigatórios preenchidos
Quando eu preencher os campos cor, tamanho e quantidade 
E clicar em "comprar"
Então deve aparecer a mensagem de sucesso "Finalize sua compra"

Cenário: Campo "quantidade" não preenchido
Quando eu selecionar apenas o campo cor e tamanho
E clicar em "comprar"
Então deve aparecer a mensagem de alerta "Selecione a quantidade de produtos"

Cenário: Campo "cor" não preenchido
Quando eu selecionar apenas o campo quantidade e tamanho
E clicar em "comprar"
Então deve aparecer a mensagem de alerta "Selecione a cor do seu produto"

Cenário: Campo "tamanho" não preenchido
Quando eu selecionar apenas o campo cor e quantidade
E clicar em "comprar"
Então deve aparecer a mensagem de alerta "Selecione o tamanho do seu produto"

Cenário: Seleção de até 10 produtos
Quando eu selecionar até 10 produtos 
E clicar em "comprar" 
Então deve aparecer a mensgaem de sucesso "Finalize sua compra"

Cenário: Seleção de mais de 10 produtos 
Quando eu selecionar 12 produtos
E clicar em "comprar"
Então deve aparecer a mensagem de alerta "Você possui mais produtos selecionados do que o permitido"

Cenário: Clicar no botão limpar
Quando eu clicar no botão "Limpar" 
Então deve limpar as opções de cor e tamanho selecionadas