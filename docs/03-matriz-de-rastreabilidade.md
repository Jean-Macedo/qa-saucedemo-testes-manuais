# Matriz de rastreabilidade

Liga cada requisito aos casos que o cobrem. Se um requisito ficar sem caso, existe um buraco na cobertura.

| Requisito | Descrição | Casos de teste | Qtd |
|---|---|---|---|
| REQ-LOG-01 | Usuário válido acessa a loja com usuário e senha | CT-LOG-001, CT-LOG-009, CT-LOG-011 | 3 |
| REQ-LOG-02 | Credenciais inválidas são recusadas com mensagem clara | CT-LOG-002, CT-LOG-003, CT-LOG-008, CT-LOG-010 | 4 |
| REQ-LOG-03 | Campos obrigatórios são validados | CT-LOG-004, CT-LOG-005, CT-LOG-006 | 3 |
| REQ-LOG-04 | Usuário bloqueado não acessa a loja | CT-LOG-007 | 1 |
| REQ-CAT-01 | Catálogo exibe todos os produtos com seus dados | CT-CAT-001 | 1 |
| REQ-CAT-02 | Catálogo pode ser ordenado por nome e preço | CT-CAT-002, CT-CAT-003, CT-CAT-004, CT-CAT-005 | 4 |
| REQ-CAT-03 | Usuário consegue ver o detalhe de um produto | CT-CAT-006 | 1 |
| REQ-CAR-01 | Usuário adiciona e remove produtos do carrinho | CT-CAR-001, CT-CAR-003, CT-CAR-004, CT-CAR-007 | 4 |
| REQ-CAR-02 | Ícone do carrinho mostra a quantidade de itens | CT-CAR-002, CT-CAR-008 | 2 |
| REQ-CAR-03 | Carrinho lista os itens escolhidos com preço correto | CT-CAR-005, CT-CAR-006 | 2 |
| REQ-CHK-01 | Checkout exige nome, sobrenome e CEP | CT-CHK-002, CT-CHK-003, CT-CHK-004 | 3 |
| REQ-CHK-02 | Resumo do pedido mostra subtotal, imposto e total corretos | CT-CHK-005 | 1 |
| REQ-CHK-03 | Usuário finaliza a compra e recebe confirmação | CT-CHK-001, CT-CHK-008 | 2 |
| REQ-CHK-04 | Usuário pode cancelar o checkout | CT-CHK-006, CT-CHK-007 | 2 |
| REQ-SES-01 | Usuário encerra a sessão pelo menu | CT-SES-001, CT-SES-005 | 2 |
| REQ-SES-02 | Páginas internas exigem login | CT-SES-002, CT-SES-003 | 2 |
| REQ-SES-03 | Usuário pode restaurar o estado do app | CT-SES-004 | 1 |

**Total:** 17 requisitos, 38 casos de teste. Requisitos sem cobertura: 0.
