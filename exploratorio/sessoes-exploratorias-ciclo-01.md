# Sessões exploratórias | Ciclo 01

| Campo | Valor |  
|---|---|  
| Sistema | https://www.saucedemo.com |  
| Executor | Jean Macedo |  
| Data | 24/09/2026 |  
| Usuário | standard_user |  
| Navegador | Brave |

---

## Sessão 01: Checkout com o carrinho vazio

**Missão:** explorar o checkout com o carrinho vazio.  
**Duração:** 5 min

### O que encontrei

- Com o carrinho vazio, o ícone do carrinho continua clicável e a página do carrinho abre normalmente.  
- O botão Checkout também funciona com o carrinho vazio.  
- É possível passar por todas as etapas da compra sem nenhum item, até a confirmação final. O PDF do pedido também é gerado, mesmo sem nenhum produto comprado.  
- Os dados do comprador continuam obrigatórios. Sem preencher nome, sobrenome e CEP, não dá para avançar.  
- Colando a URL `https://www.saucedemo.com/checkout-step-one.html` direto no navegador, a etapa de dados do checkout abre mesmo com o carrinho vazio.

---

## Sessão 02: Campos do checkout com caracteres especiais e textos longos

**Missão:** explorar os campos do checkout com caracteres especiais e textos longos.  
**Duração:** 6 min

### O que encontrei

- Textos longos são aceitos nos campos de dados e a compra é concluída normalmente.  
- Caracteres especiais também são aceitos.  
- Textos misturados com caracteres especiais também são aceitos.

---

## Sessão 03: Navegação com os botões Voltar e Avançar do navegador

**Missão:** explorar a navegação usando os botões Voltar e Avançar do navegador.  
**Duração:** 6 min

### O que encontrei

- Com Voltar e Avançar, dá para circular livremente por todas as etapas da compra, do carrinho até o Finish.  
- Partindo do detalhe de um produto e indo para o carrinho, o botão Voltar leva de volta ao detalhe do produto, e não à lista de produtos.  
- No detalhe de um produto, Voltar e depois Avançar reabre o mesmo produto.  
- Depois de preencher os dados e clicar em Continue, o botão Voltar leva de volta à etapa de dados, agora com os campos vazios. Se o usuário clicar em Avançar nesse momento, chega à revisão do pedido mesmo com os campos vazios. O PDF gerado ali mostra os dados preenchidos antes.

---

## Dúvidas para o PO

- O carrinho deve continuar acessível mesmo vazio?  
- Deve ser possível realizar a compra mesmo sem produtos no carrinho?

## Bugs abertos

- Chegar até a revisão do pedido mesmo com os campos vazios através do botão avançar
