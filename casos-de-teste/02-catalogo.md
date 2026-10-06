# Casos de teste: Catálogo de produtos

Módulo: **CAT** | Total de casos: **6** | Versão: 1.0

## Resumo

| ID | Título | Requisito | Prioridade | Tipo |
|---|---|---|---|---|
| [CT-CAT-001](#ct-cat-001) | Catálogo exibe todos os produtos | REQ-CAT-01 | Alta | Positivo |
| [CT-CAT-002](#ct-cat-002) | Ordenação padrão é por nome (A a Z) | REQ-CAT-02 | Média | Positivo |
| [CT-CAT-003](#ct-cat-003) | Ordenar por nome de Z a A | REQ-CAT-02 | Média | Positivo |
| [CT-CAT-004](#ct-cat-004) | Ordenar por preço do menor para o maior | REQ-CAT-02 | Alta | Positivo |
| [CT-CAT-005](#ct-cat-005) | Ordenar por preço do maior para o menor | REQ-CAT-02 | Alta | Positivo |
| [CT-CAT-006](#ct-cat-006) | Abrir o detalhe de um produto | REQ-CAT-03 | Média | Positivo |

---

## CT-CAT-001

**Catálogo exibe todos os produtos**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-01: Catálogo exibe todos os produtos com seus dados |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Verificação de interface |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Observar a lista de produtos |

**Resultado esperado**

- São exibidos 6 produtos
- Cada produto tem imagem, nome, descrição, preço e botão "Add to cart"
- A imagem de cada produto corresponde ao seu nome

---

## CT-CAT-002

**Ordenação padrão é por nome (A a Z)**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-02: Catálogo pode ser ordenado por nome e preço |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Observar o filtro de ordenação e a ordem dos produtos |

**Resultado esperado**

- Filtro mostra "Name (A to Z)"
- Primeiro produto: Sauce Labs Backpack. Último: Test.allTheThings() T-Shirt (Red)

---

## CT-CAT-003

**Ordenar por nome de Z a A**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-02: Catálogo pode ser ordenado por nome e preço |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | Opção: Name (Z to A) |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o filtro de ordenação |
| 2 | Selecionar "Name (Z to A)" |

**Resultado esperado**

- Produtos ficam em ordem alfabética inversa
- Primeiro produto: Test.allTheThings() T-Shirt (Red). Último: Sauce Labs Backpack

---

## CT-CAT-004

**Ordenar por preço do menor para o maior**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-02: Catálogo pode ser ordenado por nome e preço |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | Opção: Price (low to high) |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o filtro de ordenação |
| 2 | Selecionar "Price (low to high)" |

**Resultado esperado**

- Primeiro produto: Sauce Labs Onesie ($7.99)
- Último produto: Sauce Labs Fleece Jacket ($49.99)
- Nenhum preço aparece fora de ordem

---

## CT-CAT-005

**Ordenar por preço do maior para o menor**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-02: Catálogo pode ser ordenado por nome e preço |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Verificação de regra |
| Dados de teste | Opção: Price (high to low) |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o filtro de ordenação |
| 2 | Selecionar "Price (high to low)" |

**Resultado esperado**

- Primeiro produto: Sauce Labs Fleece Jacket ($49.99)
- Último produto: Sauce Labs Onesie ($7.99)
- Nenhum preço aparece fora de ordem

---

## CT-CAT-006

**Abrir o detalhe de um produto**

| Campo | Valor |
|---|---|
| Requisito | REQ-CAT-03: Usuário consegue ver o detalhe de um produto |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | Produto: Sauce Labs Backpack |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar no nome do produto |
| 2 | Conferir os dados exibidos |
| 3 | Clicar em "Back to products" |

**Resultado esperado**

- Abre a página de detalhe (/inventory-item.html?id=...)
- Nome, descrição, preço ($29.99) e imagem são os mesmos do catálogo
- "Back to products" volta para a lista de produtos

---
