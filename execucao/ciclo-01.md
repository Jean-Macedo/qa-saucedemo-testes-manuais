# Execução: Ciclo 01

| Campo | Valor |
|---|---|
| Build / ambiente | https://www.saucedemo.com (produção pública) |
| Navegador | Brave (versão: 1.95.104 ) |
| Sistema operacional | Windows |
| Executor | Jean Macedo |
| Início | 24/09/2026 |
| Fim | __/__/____ |

Legenda de status: ✅ Passou | ❌ Falhou | ⛔ Bloqueado | ⏭️ Não executado

## Parte 1: usuário padrão (standard_user)

| ID | Título | Prioridade | Status | Data | Evidência | Bug | Observação |
|---|---|---|---|---|---|---|---|
| CT-LOG-001 | Login com credenciais válidas | Alta | ✅ | | | | |
| CT-LOG-002 | Login com senha incorreta | Alta | ✅ | | | | |
| CT-LOG-003 | Login com usuário inexistente | Média | ⏭️ Não executado | | | | |
| CT-LOG-004 | Login com usuário em branco | Alta | ✅ | | | | |
| CT-LOG-005 | Login com senha em branco | Alta | ✅ | | | | |
| CT-LOG-006 | Login com os dois campos em branco | Média | ⏭️ Não executado | | | | |
| CT-LOG-007 | Login com usuário bloqueado | Alta | ✅ | | | | |
| CT-LOG-008 | Usuário diferencia maiúsculas de minúsculas | Baixa | ⏭️ Não executado | | | | |
| CT-LOG-009 | Senha fica mascarada ao digitar | Média | ⏭️ Não executado | | | | |
| CT-LOG-010 | Fechar a mensagem de erro do login | Baixa | ⏭️ Não executado | | | | |
| CT-LOG-011 | Login pressionando Enter | Baixa | ⏭️ Não executado | | | | |
| CT-CAT-001 | Catálogo exibe todos os produtos | Alta | ⏭️ Não executado | | | | |
| CT-CAT-002 | Ordenação padrão é por nome (A a Z) | Média | ⏭️ Não executado | | | | |
| CT-CAT-003 | Ordenar por nome de Z a A | Média | ⏭️ Não executado | | | | |
| CT-CAT-004 | Ordenar por preço do menor para o maior | Alta | ⏭️ Não executado | | | | |
| CT-CAT-005 | Ordenar por preço do maior para o menor | Alta | ⏭️ Não executado | | | | |
| CT-CAT-006 | Abrir o detalhe de um produto | Média | ⏭️ Não executado | | | | |
| CT-CAR-001 | Adicionar um produto ao carrinho | Alta | ⏭️ Não executado | | | | |
| CT-CAR-002 | Adicionar vários produtos ao carrinho | Alta | ⏭️ Não executado | | | | |
| CT-CAR-003 | Remover produto pela lista de produtos | Alta | ⏭️ Não executado | | | | |
| CT-CAR-004 | Remover produto dentro do carrinho | Alta | ⏭️ Não executado | | | | |
| CT-CAR-005 | Carrinho lista os itens com dados corretos | Alta | ⏭️ Não executado | | | | |
| CT-CAR-006 | Continuar comprando a partir do carrinho | Média | ⏭️ Não executado | | | | |
| CT-CAR-007 | Adicionar produto pela página de detalhe | Média | ⏭️ Não executado | | | | |
| CT-CAR-008 | Carrinho é mantido após sair e entrar de novo | Média | ⏭️ Não executado | | | | |
| CT-CHK-001 | Compra completa com um produto | Alta | ⏭️ Não executado | | | | |
| CT-CHK-002 | Checkout sem First Name | Alta | ⏭️ Não executado | | | | |
| CT-CHK-003 | Checkout sem Last Name | Alta | ⏭️ Não executado | | | | |
| CT-CHK-004 | Checkout sem Postal Code | Alta | ⏭️ Não executado | | | | |
| CT-CHK-005 | Cálculo de subtotal, imposto e total | Alta | ⏭️ Não executado | | | | |
| CT-CHK-006 | Cancelar na etapa de dados | Média | ⏭️ Não executado | | | | |
| CT-CHK-007 | Cancelar na etapa de resumo | Média | ⏭️ Não executado | | | | |
| CT-CHK-008 | Voltar para a loja após a compra | Baixa | ⏭️ Não executado | | | | |
| CT-SES-001 | Logout pelo menu | Alta | ⏭️ Não executado | | | | |
| CT-SES-002 | Acesso direto a página interna sem login | Alta | ⏭️ Não executado | | | | |
| CT-SES-003 | Botão Voltar do navegador após logout | Média | ⏭️ Não executado | | | | |
| CT-SES-004 | Reset App State limpa o carrinho | Média | ⏭️ Não executado | | | | |
| CT-SES-005 | Link About abre o site da Sauce Labs | Baixa | ⏭️ Não executado | | | | |

## Parte 2: regressão com perfis alternativos

Reexecute os casos de maior prioridade trocando o usuário. Esses perfis simulam falhas e lentidão.
Troque apenas o usuário nas pré-condições e compare com o resultado esperado original.

| ID | problem_user | error_user | visual_user | performance_glitch_user |
|---|---|---|---|---|
| CT-CAT-001 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAT-004 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAT-005 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAR-001 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAR-002 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAR-003 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAR-004 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CAR-005 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CHK-001 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CHK-002 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CHK-003 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CHK-004 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-CHK-005 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-SES-001 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |
| CT-SES-002 | ⏭️ | ⏭️ | ⏭️ | ⏭️ |

## Resumo do ciclo

Preencha ao final:

| Status | Qtd |
|---|---|
| ✅ Passou | |
| ❌ Falhou | |
| ⛔ Bloqueado | |
| ⏭️ Não executado | |
| **Total** | **38** (parte 1) |
