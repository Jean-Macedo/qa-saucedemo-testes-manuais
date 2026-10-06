# Casos de teste: Carrinho

Módulo: **CAR** | Total de casos: **8** | Versão: 1.0

## Resumo

| ID | Título | Requisito | Prioridade | Tipo |
|---|---|---|---|---|
| [CT-CAR-001](#ct-car-001) | Adicionar um produto ao carrinho | REQ-CAR-01 | Alta | Positivo |
| [CT-CAR-002](#ct-car-002) | Adicionar vários produtos ao carrinho | REQ-CAR-02 | Alta | Positivo |
| [CT-CAR-003](#ct-car-003) | Remover produto pela lista de produtos | REQ-CAR-01 | Alta | Positivo |
| [CT-CAR-004](#ct-car-004) | Remover produto dentro do carrinho | REQ-CAR-01 | Alta | Positivo |
| [CT-CAR-005](#ct-car-005) | Carrinho lista os itens com dados corretos | REQ-CAR-03 | Alta | Positivo |
| [CT-CAR-006](#ct-car-006) | Continuar comprando a partir do carrinho | REQ-CAR-03 | Média | Positivo |
| [CT-CAR-007](#ct-car-007) | Adicionar produto pela página de detalhe | REQ-CAR-01 | Média | Positivo |
| [CT-CAR-008](#ct-car-008) | Carrinho é mantido após sair e entrar de novo | REQ-CAR-02 | Média | Positivo |

---

## CT-CAR-001

**Adicionar um produto ao carrinho**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-01: Usuário adiciona e remove produtos do carrinho |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | Produto: Sauce Labs Backpack |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho vazio (usar Reset App State no menu, se preciso)

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em "Add to cart" no produto |

**Resultado esperado**

- Botão do produto muda para "Remove"
- Ícone do carrinho mostra o número 1

---

## CT-CAR-002

**Adicionar vários produtos ao carrinho**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-02: Ícone do carrinho mostra a quantidade de itens |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | Produtos: Backpack, Bike Light, Onesie |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho vazio (usar Reset App State no menu, se preciso)

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em "Add to cart" nos três produtos |

**Resultado esperado**

- Ícone do carrinho mostra o número 3
- Os três botões mudam para "Remove"

---

## CT-CAR-003

**Remover produto pela lista de produtos**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-01: Usuário adiciona e remove produtos do carrinho |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto (Sauce Labs Backpack)

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em "Remove" no produto adicionado |

**Resultado esperado**

- Botão volta para "Add to cart"
- Número do carrinho some

---

## CT-CAR-004

**Remover produto dentro do carrinho**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-01: Usuário adiciona e remove produtos do carrinho |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 2 produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar no ícone do carrinho |
| 2 | Clicar em "Remove" em um dos itens |

**Resultado esperado**

- Item removido some da lista
- Ícone do carrinho passa a mostrar 1

---

## CT-CAR-005

**Carrinho lista os itens com dados corretos**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-03: Carrinho lista os itens escolhidos com preço correto |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com Sauce Labs Backpack e Sauce Labs Bike Light

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar no ícone do carrinho |
| 2 | Conferir nome, quantidade e preço de cada item |

**Resultado esperado**

- Página "Your Cart" é exibida (/cart.html)
- Backpack: QTY 1, $29.99. Bike Light: QTY 1, $9.99
- Dados são iguais aos do catálogo

---

## CT-CAR-006

**Continuar comprando a partir do carrinho**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-03: Carrinho lista os itens escolhidos com preço correto |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o carrinho |
| 2 | Clicar em "Continue Shopping" |

**Resultado esperado**

- Volta para a lista de produtos
- Item adicionado continua no carrinho (ícone mostra 1)

---

## CT-CAR-007

**Adicionar produto pela página de detalhe**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-01: Usuário adiciona e remove produtos do carrinho |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | Produto: Sauce Labs Bolt T-Shirt |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho vazio (usar Reset App State no menu, se preciso)

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o detalhe do produto |
| 2 | Clicar em "Add to cart" |

**Resultado esperado**

- Botão muda para "Remove"
- Ícone do carrinho mostra 1

---

## CT-CAR-008

**Carrinho é mantido após sair e entrar de novo**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAR-02: Ícone do carrinho mostra a quantidade de itens |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | Usuário: standard_user |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o menu e clicar em Logout |
| 2 | Fazer login de novo com o mesmo usuário |

**Resultado esperado**

- Ícone do carrinho continua mostrando 1
- Produto continua com o botão "Remove"

---
