#language: pt

Funcionalidade: Configurar produtos
Como cliente da EBAC-Shop
Quero configurar meu produto de acordo com meu trabalho e gosto
E escolher a quantidade
Para depois inserir no carrinho 

Contexto:
Dado que eu acesse as configurações dos produtos 

Cenário: Campos obrigatórios preenchidos
Quando deixar de preencher alguma <configuração> 
Então Então deve aparecer uma <mensagem> de alerta

|"cor"| "Por favor, preencha o campo cor"|
|"tamanho"| "Por favor, preencha o campo tamnaho"|
|"Quantidade"|"Por favor, defina uma quantidade"|

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