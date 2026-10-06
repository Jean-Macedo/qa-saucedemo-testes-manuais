# Requisitos | SauceDemo

O SauceDemo não tem documentação pública de requisitos. Estas histórias foram escritas a partir
da observação do sistema, como acontece quando o QA entra num projeto com pouca documentação.
Pontos sem definição clara ficaram registrados no plano de teste (seção 11).

---

## Login

**US-01:** Como cliente, quero entrar na loja com meu usuário e senha, para ver os produtos.

| ID | Critério de aceite |
|---|---|
| REQ-LOG-01 | Usuário e senha válidos levam à página de produtos |
| REQ-LOG-02 | Credenciais inválidas mostram "Username and password do not match any user in this service" |
| REQ-LOG-03 | Usuário vazio mostra "Username is required". Senha vazia mostra "Password is required" |
| REQ-LOG-04 | Usuário bloqueado mostra "Sorry, this user has been locked out." e não entra |

## Catálogo

**US-02:** Como cliente, quero ver e ordenar os produtos, para escolher o que comprar.

| ID | Critério de aceite |
|---|---|
| REQ-CAT-01 | Cada produto mostra imagem, nome, descrição, preço e botão "Add to cart" |
| REQ-CAT-02 | Ordenação disponível: Name (A to Z), Name (Z to A), Price (low to high), Price (high to low). Padrão: A to Z |
| REQ-CAT-03 | Clicar no nome do produto abre a página de detalhe com os mesmos dados |

## Carrinho

**US-03:** Como cliente, quero montar meu carrinho, para comprar vários produtos de uma vez.

| ID | Critério de aceite |
|---|---|
| REQ-CAR-01 | "Add to cart" adiciona o produto e o botão vira "Remove". "Remove" retira o produto |
| REQ-CAR-02 | O ícone do carrinho mostra a quantidade de itens. Sem itens, o número some |
| REQ-CAR-03 | A página do carrinho lista nome, quantidade e preço de cada item |

## Checkout

**US-04:** Como cliente, quero finalizar a compra, para receber meus produtos.

| ID | Critério de aceite |
|---|---|
| REQ-CHK-01 | First Name, Last Name e Postal Code são obrigatórios, validados nessa ordem |
| REQ-CHK-02 | O resumo mostra Item total (soma dos itens), Tax (8% do subtotal) e Total (subtotal + imposto) |
| REQ-CHK-03 | Ao clicar em Finish aparece "Thank you for your order!" e o carrinho é esvaziado |
| REQ-CHK-04 | Cancel na etapa de dados volta ao carrinho. Cancel no resumo volta aos produtos |

## Sessão e navegação

**US-05:** Como cliente, quero que minha sessão seja protegida, para que ninguém use minha conta.

| ID | Critério de aceite |
|---|---|
| REQ-SES-01 | O menu lateral tem Logout, que encerra a sessão e volta ao login |
| REQ-SES-02 | Acessar página interna sem login leva ao login com mensagem de acesso restrito |
| REQ-SES-03 | "Reset App State" limpa o carrinho e restaura os botões dos produtos |
