# Plano de Teste | SauceDemo

| Campo | Valor |
|---|---|
| Projeto | SauceDemo (Swag Labs) |
| Versão do documento | 1.0 |
| Autor | Jean Macedo |
| Data | __/__/____ |
| Status | Aprovado para execução |

## 1. Objetivo

Validar se os fluxos principais da loja funcionam como esperado antes de uma "entrega":
login, catálogo, carrinho, checkout e controle de sessão.
O foco é encontrar defeitos que impeçam o usuário de comprar ou que mostrem informação errada.

## 2. Escopo

### 2.1 Dentro do escopo

| Módulo | O que será testado |
|---|---|
| Login | Credenciais válidas e inválidas, campos obrigatórios, usuário bloqueado |
| Catálogo | Exibição dos produtos, ordenação, página de detalhe |
| Carrinho | Adicionar, remover, contador, persistência |
| Checkout | Campos obrigatórios, cálculo de valores, finalização, cancelamento |
| Sessão | Logout, acesso sem login, Reset App State |

### 2.2 Fora do escopo

- Desempenho e carga
- API (o SauceDemo não expõe API pública)
- Acessibilidade completa
- Menu "Dynamic Catalog"
- Pagamento real (o checkout é simulado)

## 3. Estratégia

| Nível / Tipo | Como será feito |
|---|---|
| Teste funcional | Casos de teste manuais escritos a partir dos requisitos |
| Teste negativo | Entradas inválidas e campos vazios |
| Regressão por perfil | Reexecução dos casos de prioridade alta com os usuários de falha simulada |
| Teste exploratório | Sessões curtas com missão definida (ver seção 10) |

**Priorização:** casos de prioridade Alta são executados primeiro. Se faltar tempo, os de prioridade Baixa ficam para o próximo ciclo.

## 4. Ambiente

| Item | Valor |
|---|---|
| URL | https://www.saucedemo.com |
| Navegador | Google Chrome (última versão estável) |
| Resolução | 1920x1080 |
| Sistema | Windows |

## 5. Massa de dados

Senha de todos os usuários: `secret_sauce`

| Usuário | Uso no teste |
|---|---|
| standard_user | Usuário principal, comportamento esperado |
| locked_out_user | Usuário bloqueado |
| problem_user | Regressão: simula defeitos de interface e dados |
| error_user | Regressão: simula erros em ações |
| visual_user | Regressão: simula diferenças visuais |
| performance_glitch_user | Regressão: simula lentidão |

Dados do checkout: First Name `Ana`, Last Name `Silva`, Postal Code `24000-000`.

## 6. Critérios

### 6.1 Critério de entrada
- Ambiente acessível
- Casos de teste revisados
- Massa de dados disponível

### 6.2 Critério de saída
- 100% dos casos de prioridade Alta executados
- Nenhum bug de severidade Crítica aberto sem aceite do time
- Relatório do ciclo publicado

### 6.3 Critério de suspensão
- Ambiente fora do ar
- Bug bloqueante no login (impede todo o resto)

## 7. Classificação de defeitos

| Severidade | Quando usar | Exemplo |
|---|---|---|
| Crítica | Impede o uso do sistema ou de um fluxo principal, sem contorno | Não consegue finalizar a compra |
| Alta | Funcionalidade importante errada, com contorno difícil | Total do pedido calculado errado |
| Média | Funcionalidade errada com contorno simples | Ordenação não funciona |
| Baixa | Problema visual ou de texto que não atrapalha o uso | Botão desalinhado |

Severidade é o impacto técnico. **Prioridade** é a urgência de correção e é definida junto com o PO.

## 8. Entregáveis

| Artefato | Local |
|---|---|
| Plano de teste | docs/01-plano-de-teste.md |
| Requisitos | docs/02-requisitos.md |
| Matriz de rastreabilidade | docs/03-matriz-de-rastreabilidade.md |
| Casos de teste | casos-de-teste/ |
| Cenários BDD | bdd/ |
| Registro de execução | execucao/ciclo-01.md |
| Bugs | Issues do GitHub (índice em bugs/README.md) |
| Relatório | relatorios/relatorio-ciclo-01.md |

## 9. Riscos

| Risco | Impacto | Ação |
|---|---|---|
| Site de terceiro pode mudar sem aviso | Casos desatualizados | Registrar data e versão do navegador em cada execução |
| Não existe documentação oficial de requisitos | Resultado esperado pode ser discutível | Requisitos escritos a partir da observação do sistema e dúvidas registradas na seção 11 |
| Estado do carrinho fica salvo no navegador | Um teste pode afetar o outro | Usar Reset App State antes dos casos de carrinho |

## 10. Sessões exploratórias planejadas

| Missão | Tempo |
|---|---|
| Explorar o checkout com o carrinho vazio | 20 min |
| Explorar os campos do checkout com caracteres especiais e textos longos | 20 min |
| Explorar a navegação usando os botões Voltar e Avançar do navegador | 15 min |

Anotar o que foi feito, o que foi encontrado e as dúvidas geradas.

## 11. Dúvidas em aberto (para o PO)

1. O sistema deve permitir iniciar o checkout com o carrinho vazio?
2. Espaços antes ou depois do usuário no login devem ser ignorados?
3. Existe limite de caracteres para nome, sobrenome e CEP?
4. O CEP deve aceitar letras?
