# language: pt
Funcionalidade: Checkout
  Como cliente
  Quero finalizar minha compra
  Para receber os produtos escolhidos

  Contexto:
    Dado que estou logado como "standard_user"
    E tenho no carrinho os produtos "Sauce Labs Backpack" e "Sauce Labs Bike Light"

  @CT-CHK-001 @smoke
  Cenário: Compra finalizada com sucesso
    Quando inicio o checkout
    E preencho nome "Ana", sobrenome "Silva" e CEP "24000-000"
    E clico em Continue
    E clico em Finish
    Então devo ver a mensagem "Thank you for your order!"
    E o carrinho deve ficar vazio

  @CT-CHK-005
  Cenário: Cálculo dos valores do pedido
    Quando avanço até o resumo do pedido
    Então o subtotal deve ser "$39.98"
    E o imposto deve ser "$3.20"
    E o total deve ser "$43.18"

  @CT-CHK-002 @CT-CHK-003 @CT-CHK-004
  Esquema do Cenário: Campos obrigatórios do checkout
    Quando inicio o checkout
    E preencho nome "<nome>", sobrenome "<sobrenome>" e CEP "<cep>"
    E clico em Continue
    Então devo ver a mensagem "<mensagem>"

    Exemplos:
      | nome | sobrenome | cep | mensagem                        |
      |      |           |     | Error: First Name is required   |
      | Ana  |           |     | Error: Last Name is required    |
      | Ana  | Silva     |     | Error: Postal Code is required  |
