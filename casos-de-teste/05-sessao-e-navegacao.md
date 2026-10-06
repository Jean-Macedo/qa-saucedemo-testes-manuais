# Casos de teste: Sessão e navegação

Módulo: **SES** | Total de casos: **5** | Versão: 1.0

## Resumo

| ID | Título | Requisito | Prioridade | Tipo |
|---|---|---|---|---|
| [CT-SES-001](#ct-ses-001) | Logout pelo menu | REQ-SES-01 | Alta | Positivo |
| [CT-SES-002](#ct-ses-002) | Acesso direto a página interna sem login | REQ-SES-02 | Alta | Negativo |
| [CT-SES-003](#ct-ses-003) | Botão Voltar do navegador após logout | REQ-SES-02 | Média | Negativo |
| [CT-SES-004](#ct-ses-004) | Reset App State limpa o carrinho | REQ-SES-03 | Média | Positivo |
| [CT-SES-005](#ct-ses-005) | Link About abre o site da Sauce Labs | REQ-SES-01 | Baixa | Positivo |

---

## CT-SES-001

**Logout pelo menu**

| Campo | Valor |
|---|---|
| Requisito | REQ-SES-01: Usuário encerra a sessão pelo menu |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o menu lateral |
| 2 | Clicar em Logout |

**Resultado esperado**

- Usuário volta para a página de login
- Ícone do carrinho e menu não aparecem mais

---

## CT-SES-002

**Acesso direto a página interna sem login**

| Campo | Valor |
|---|---|
| Requisito | REQ-SES-02: Páginas internas exigem login |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Segurança básica |
| Dados de teste | URL: https://www.saucedemo.com/inventory.html |

**Pré-condições**

- Não estar logado

**Passos**

| # | Ação |
|---|---|
| 1 | Colar a URL na barra do navegador |
| 2 | Pressionar Enter |

**Resultado esperado**

- Usuário é mandado para a página de login
- Mensagem: "Epic sadface: You can only access '/inventory.html' when you are logged in."

---

## CT-SES-003

**Botão Voltar do navegador após logout**

| Campo | Valor |
|---|---|
| Requisito | REQ-SES-02: Páginas internas exigem login |
| Prioridade | Média |
| Tipo | Negativo |
| Técnica | Segurança básica |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Fazer logout pelo menu |
| 2 | Clicar no botão Voltar do navegador |

**Resultado esperado**

- Área logada não é exibida
- Página de login aparece com a mensagem de acesso restrito

---

## CT-SES-004

**Reset App State limpa o carrinho**

| Campo | Valor |
|---|---|
| Requisito | REQ-SES-03: Usuário pode restaurar o estado do app |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos
- Carrinho com 2 produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o menu lateral |
| 2 | Clicar em "Reset App State" |

**Resultado esperado**

- Número do carrinho some
- Todos os botões de produto voltam para "Add to cart"

---

## CT-SES-005

**Link About abre o site da Sauce Labs**

| Campo | Valor |
|---|---|
| Requisito | REQ-SES-01: Usuário encerra a sessão pelo menu |
| Prioridade | Baixa |
| Tipo | Positivo |
| Técnica | Fluxo |
| Dados de teste | - |

**Pré-condições**

- Estar logado com standard_user na página de produtos

**Passos**

| # | Ação |
|---|---|
| 1 | Abrir o menu lateral |
| 2 | Clicar em About |

**Resultado esperado**

- Navegador abre https://saucelabs.com/

---
