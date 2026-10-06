# Casos de teste: Checkout

Módulo: **CHK** | Total de casos: **8** | Versão: 1.0

## Resumo

| ID | Título | Requisito | Prioridade | Tipo |
|---|---|---|---|---|
| [CT-CHK-001](#ct-chk-001) | Compra completa com um produto | REQ-CHK-03 | Alta | Positivo |
| [CT-CHK-002](#ct-chk-002) | Checkout sem First Name | REQ-CHK-01 | Alta | Negativo |
| [CT-CHK-003](#ct-chk-003) | Checkout sem Last Name | REQ-CHK-01 | Alta | Negativo |
| [CT-CHK-004](#ct-chk-004) | Checkout sem Postal Code | REQ-CHK-01 | Alta | Negativo |
| [CT-CHK-005](#ct-chk-005) | Cálculo de subtotal, imposto e total | REQ-CHK-02 | Alta | Positivo |
| [CT-CHK-006](#ct-chk-006) | Cancelar na etapa de dados | REQ-CHK-04 | Média | Positivo |
| [CT-CHK-007](#ct-chk-007) | Cancelar na etapa de resumo | REQ-CHK-04 | Média | Positivo |
| [CT-CHK-008](#ct-chk-008) | Voltar para a loja após a compra | REQ-CHK-03 | Baixa | Positivo |

---

## CT-CHK-001

**Compra completa com um produto**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-03: Usuário finaliza a compra e recebe confirmação |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo (caminho feliz) |
| Dados de teste | First Name: Ana / Last Name: Silva / Postal Code: 24000-000 |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com Sauce Labs Backpack

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o carrinho e clicar em Checkout |
| 2 | Preencher os três campos |
| 3 | Clicar em Continue |
| 4 | Conferir o resumo |
| 5 | Clicar em Finish |

**Resultado esperado**

- Página "Checkout: Complete!" é exibida
- Mensagem: "Thank you for your order!"
- Ícone do carrinho fica vazio

---

## CT-CHK-002

**Checkout sem First Name**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-01: Checkout exige nome, sobrenome e CEP |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | Todos os campos vazios |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto
- Estar na etapa "Checkout: Your Information"

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em Continue |

**Resultado esperado**

- Usuário continua na mesma etapa
- Mensagem: "Error: First Name is required"

---

## CT-CHK-003

**Checkout sem Last Name**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-01: Checkout exige nome, sobrenome e CEP |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | First Name: Ana |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto
- Estar na etapa "Checkout: Your Information"

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher só First Name |
| 2 | Clicar em Continue |

**Resultado esperado**

- Mensagem: "Error: Last Name is required"

---

## CT-CHK-004

**Checkout sem Postal Code**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-01: Checkout exige nome, sobrenome e CEP |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | First Name: Ana / Last Name: Silva |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto
- Estar na etapa "Checkout: Your Information"

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher First Name e Last Name |
| 2 | Clicar em Continue |

**Resultado esperado**

- Mensagem: "Error: Postal Code is required"

---

## CT-CHK-005

**Cálculo de subtotal, imposto e total**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-02: Resumo do pedido mostra subtotal, imposto e total corretos |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | First Name: Ana / Last Name: Silva / Postal Code: 24000-000 |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com Sauce Labs Backpack ($29.99) e Sauce Labs Bike Light ($9.99)

**Passos**

| # | Ação |
|---|---|
| 1 | Ir até a etapa "Checkout: Overview" |
| 2 | Conferir os valores do resumo |

**Resultado esperado**

- Item total: $39.98
- Tax: $3.20 (8% do subtotal, arredondado)
- Total: $43.18

---

## CT-CHK-006

**Cancelar na etapa de dados**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-04: Usuário pode cancelar o checkout |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto
- Estar na etapa "Checkout: Your Information"

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em Cancel |

**Resultado esperado**

- Usuário volta para o carrinho (/cart.html)
- Itens continuam no carrinho

---

## CT-CHK-007

**Cancelar na etapa de resumo**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-04: Usuário pode cancelar o checkout |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 1 produto
- Estar na etapa "Checkout: Overview"

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em Cancel |

**Resultado esperado**

- Usuário volta para a lista de produtos (/inventory.html)
- Itens continuam no carrinho

---

## CT-CHK-008

**Voltar para a loja após a compra**

| Campo | Valor |
|---|---|
| Requisito | REQ-CHK-03: Usuário finaliza a compra e recebe confirmação |
| Prioridade | Baixa |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Compra finalizada (executar CT-CHK-001 antes)

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar em "Back Home" |

**Resultado esperado**

- Volta para a lista de produtos
- Carrinho vazio e todos os botões mostram "Add to cart"

---
