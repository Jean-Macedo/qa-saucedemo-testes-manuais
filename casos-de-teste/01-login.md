# Casos de teste: Login

Módulo: **LOG** | Total de casos: **11** | Versão: 1.0

## Resumo

| ID | Título | Requisito | Prioridade | Tipo |
|---|---|---|---|---|
| [CT-LOG-001](#ct-log-001) | Login com credenciais válidas | REQ-LOG-01 | Alta | Positivo |
| [CT-LOG-002](#ct-log-002) | Login com senha incorreta | REQ-LOG-02 | Alta | Negativo |
| [CT-LOG-003](#ct-log-003) | Login com usuário inexistente | REQ-LOG-02 | Média | Negativo |
| [CT-LOG-004](#ct-log-004) | Login com usuário em branco | REQ-LOG-03 | Alta | Negativo |
| [CT-LOG-005](#ct-log-005) | Login com senha em branco | REQ-LOG-03 | Alta | Negativo |
| [CT-LOG-006](#ct-log-006) | Login com os dois campos em branco | REQ-LOG-03 | Média | Negativo |
| [CT-LOG-007](#ct-log-007) | Login com usuário bloqueado | REQ-LOG-04 | Alta | Negativo |
| [CT-LOG-008](#ct-log-008) | Usuário diferencia maiúsculas de minúsculas | REQ-LOG-02 | Baixa | Negativo |
| [CT-LOG-009](#ct-log-009) | Senha fica mascarada ao digitar | REQ-LOG-01 | Média | Positivo |
| [CT-LOG-010](#ct-log-010) | Fechar a mensagem de erro do login | REQ-LOG-02 | Baixa | Positivo |
| [CT-LOG-011](#ct-log-011) | Login pressionando Enter | REQ-LOG-01 | Baixa | Positivo |

---

## CT-LOG-001

**Login com credenciais válidas**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-01: Usuário válido acessa a loja com usuário e senha |
| Prioridade | Alta |
| Tipo | Positivo |
| Técnica | Partição de equivalência |
| Dados de teste | Usuário: standard_user / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher o campo Username |
| 2 | Preencher o campo Password |
| 3 | Clicar em Login |

**Resultado esperado**

- Usuário é redirecionado para /inventory.html
- Título da página exibe "Products"
- Lista de produtos é exibida

---

## CT-LOG-002

**Login com senha incorreta**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-02: Credenciais inválidas são recusadas com mensagem clara |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Partição de equivalência |
| Dados de teste | Usuário: standard_user / Senha: senha123 |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username e Password com os dados de teste |
| 2 | Clicar em Login |

**Resultado esperado**

- Usuário permanece na página de login
- Mensagem exibida: "Epic sadface: Username and password do not match any user in this service"
- Campos ficam destacados em vermelho

---

## CT-LOG-003

**Login com usuário inexistente**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-02: Credenciais inválidas são recusadas com mensagem clara |
| Prioridade | Média |
| Tipo | Negativo |
| Técnica | Partição de equivalência |
| Dados de teste | Usuário: usuario_teste / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username e Password com os dados de teste |
| 2 | Clicar em Login |

**Resultado esperado**

- Usuário permanece na página de login
- Mensagem exibida: "Epic sadface: Username and password do not match any user in this service"

---

## CT-LOG-004

**Login com usuário em branco**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-03: Campos obrigatórios são validados |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | Usuário: (vazio) / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Deixar Username vazio |
| 2 | Preencher Password |
| 3 | Clicar em Login |

**Resultado esperado**

- Mensagem exibida: "Epic sadface: Username is required"

---

## CT-LOG-005

**Login com senha em branco**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-03: Campos obrigatórios são validados |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | Usuário: standard_user / Senha: (vazio) |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username |
| 2 | Deixar Password vazio |
| 3 | Clicar em Login |

**Resultado esperado**

- Mensagem exibida: "Epic sadface: Password is required"

---

## CT-LOG-006

**Login com os dois campos em branco**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-03: Campos obrigatórios são validados |
| Prioridade | Média |
| Tipo | Negativo |
| Técnica | Tabela de decisão |
| Dados de teste | Usuário: (vazio) / Senha: (vazio) |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Deixar os dois campos vazios |
| 2 | Clicar em Login |

**Resultado esperado**

- Mensagem exibida: "Epic sadface: Username is required" (a validação do usuário vem primeiro)

---

## CT-LOG-007

**Login com usuário bloqueado**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-04: Usuário bloqueado não acessa a loja |
| Prioridade | Alta |
| Tipo | Negativo |
| Técnica | Partição de equivalência |
| Dados de teste | Usuário: locked_out_user / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username e Password com os dados de teste |
| 2 | Clicar em Login |

**Resultado esperado**

- Usuário permanece na página de login
- Mensagem exibida: "Epic sadface: Sorry, this user has been locked out."

---

## CT-LOG-008

**Usuário diferencia maiúsculas de minúsculas**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-02: Credenciais inválidas são recusadas com mensagem clara |
| Prioridade | Baixa |
| Tipo | Negativo |
| Técnica | Partição de equivalência |
| Dados de teste | Usuário: STANDARD_USER / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username em maiúsculas |
| 2 | Preencher Password |
| 3 | Clicar em Login |

**Resultado esperado**

- Login não é realizado
- Mensagem exibida: "Epic sadface: Username and password do not match any user in this service"

---

## CT-LOG-009

**Senha fica mascarada ao digitar**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-01: Usuário válido acessa a loja com usuário e senha |
| Prioridade | Média |
| Tipo | Positivo |
| Técnica | Verificação de interface |
| Dados de teste | Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Digitar a senha no campo Password |

**Resultado esperado**

- Caracteres digitados aparecem ocultos (pontos ou asteriscos)

---

## CT-LOG-010

**Fechar a mensagem de erro do login**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-02: Credenciais inválidas são recusadas com mensagem clara |
| Prioridade | Baixa |
| Tipo | Positivo |
| Técnica | Verificação de interface |
| Dados de teste | - |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)
- Mensagem de erro de login visível (executar CT-LOG-002 antes)

**Passos**

| # | Ação |
|---|---|
| 1 | Clicar no botão X da mensagem de erro |

**Resultado esperado**

- Mensagem de erro some
- Destaque vermelho dos campos some

---

## CT-LOG-011

**Login pressionando Enter**

| Campo | Valor |
|---|---|
| Requisito | REQ-LOG-01: Usuário válido acessa a loja com usuário e senha |
| Prioridade | Baixa |
| Tipo | Positivo |
| Técnica | Teste de usabilidade |
| Dados de teste | Usuário: standard_user / Senha: secret_sauce |

**Pré-condições**

- Estar na página de login (https://www.saucedemo.com)

**Passos**

| # | Ação |
|---|---|
| 1 | Preencher Username e Password |
| 2 | Pressionar Enter com o foco no campo Password |

**Resultado esperado**

- Login é realizado e a página de produtos é exibida

---
