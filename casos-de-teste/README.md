# Casos de teste

## Padrão de identificação

`CT-<MÓDULO>-<NÚMERO>`

| Sigla | Módulo |
|---|---|
| LOG | Login |
| CAT | Catálogo |
| CAR | Carrinho |
| CHK | Checkout |
| SES | Sessão e navegação |

## Estrutura de cada caso

| Campo | Para que serve |
|---|---|
| ID e título | Identificar o caso. O título diz o que é verificado |
| Requisito | Ligação com a história de usuário (rastreabilidade) |
| Prioridade | Ordem de execução: Alta, Média, Baixa |
| Tipo | Positivo (uso correto) ou Negativo (uso incorreto) |
| Técnica | Técnica de teste usada para derivar o caso |
| Pré-condições | O que precisa estar pronto antes de começar |
| Dados de teste | Valores exatos usados |
| Passos | Ações numeradas, uma por linha |
| Resultado esperado | O que precisa acontecer para o caso passar |

## Regras que segui

- Um caso verifica uma coisa só
- Passos escritos para qualquer pessoa conseguir executar sem ajuda
- Resultado esperado verificável, com o texto exato das mensagens
- O status fica no registro de execução, não no caso. O mesmo caso roda em vários ciclos

O arquivo `casos-de-teste.csv` tem os mesmos casos em formato de planilha,
pronto para importar em ferramentas como Jira (Xray/Zephyr), TestLink ou Qase.
