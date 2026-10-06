# language: pt
Funcionalidade: Login na loja
  Como cliente
  Quero entrar na loja com meu usuário e senha
  Para ver os produtos disponíveis

  Contexto:
    Dado que estou na página de login do SauceDemo

  @CT-LOG-001 @smoke
  Cenário: Login com credenciais válidas
    Quando informo o usuário "standard_user" e a senha "secret_sauce"
    E clico em Login
    Então devo ver a página "Products"

  @CT-LOG-007
  Cenário: Login com usuário bloqueado
    Quando informo o usuário "locked_out_user" e a senha "secret_sauce"
    E clico em Login
    Então devo ver a mensagem "Epic sadface: Sorry, this user has been locked out."

  @CT-LOG-002 @CT-LOG-004 @CT-LOG-005 @CT-LOG-006
  Esquema do Cenário: Login com dados inválidos
    Quando informo o usuário "<usuario>" e a senha "<senha>"
    E clico em Login
    Então devo ver a mensagem "<mensagem>"

    Exemplos:
      | usuario       | senha        | mensagem                                                                  |
      | standard_user | senha123     | Epic sadface: Username and password do not match any user in this service |
      |               | secret_sauce | Epic sadface: Username is required                                        |
      | standard_user |              | Epic sadface: Password is required                                        |
      |               |              | Epic sadface: Username is required                                        |
