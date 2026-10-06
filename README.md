# QA Manual | SauceDemo (Swag Labs)

Projeto de testes manuais do e-commerce de demonstração [SauceDemo](https://www.saucedemo.com).
A ideia foi simular o trabalho de um QA num time ágil: entender o sistema, escrever os requisitos,
planejar, criar os casos de teste, executar, reportar os defeitos e fechar com um relatório.

![status](https://img.shields.io/badge/ciclo_01-em_execução-yellow)
![casos](https://img.shields.io/badge/casos_de_teste-38-blue)
![tipo](https://img.shields.io/badge/teste-manual-lightgrey)

## Sobre o sistema

O SauceDemo é uma loja fictícia mantida pela Sauce Labs para treino de testes.
Tem login, catálogo, carrinho e checkout. Também oferece usuários com problemas
propositais (`problem_user`, `error_user`, `visual_user`, `performance_glitch_user`),
o que permite praticar a busca por defeitos reais.

## Escopo

| Dentro do escopo | Fora do escopo |
|---|---|
| Login e validações | Testes de carga e desempenho |
| Catálogo e ordenação | Testes de API |
| Carrinho | Acessibilidade completa (WCAG) |
| Checkout e cálculo de valores | Dynamic Catalog |
| Sessão, logout e acesso restrito | Testes em dispositivos móveis |

## Estrutura do repositório

```
.
├── docs/
│   ├── 01-plano-de-teste.md          # o quê, como, quando e com que critério
│   ├── 02-requisitos.md              # histórias de usuário e critérios de aceite
│   └── 03-matriz-de-rastreabilidade.md
├── casos-de-teste/
│   ├── 01-login.md ... 05-sessao-e-navegacao.md
│   └── casos-de-teste.csv            # mesmos casos, formato para importar em ferramenta
├── bdd/                              # cenários em Gherkin (pt-BR)
├── execucao/
│   └── ciclo-01.md                   # status de cada caso na execução
├── bugs/                             # índice dos bugs (registrados como Issues)
├── evidencias/                       # prints e vídeos da execução
├── exploratorio/
│   └── sessoes-exploratorias-ciclo-01.md
├── relatorios/
│   └── relatorio-ciclo-01.md         # resumo final para o time
├── scripts/
│   └── gerar_md_execucao.py          # converte o CSV da planilha em Markdown
└── .github/ISSUE_TEMPLATE/           # modelo de bug para as Issues
```

A execução é registrada numa planilha (Google Sheets) e exportada em CSV. O script gera o Markdown a partir dela.

## Como os artefatos se ligam

```
Requisito (REQ-CHK-02) ──> Caso de teste (CT-CHK-005) ──> Execução (ciclo-01) ──> Bug (BUG-00X) ──> Relatório
```

Cada caso aponta para um requisito. Cada falha na execução gera um bug. O relatório junta tudo.

## Números do projeto

| Módulo | Casos |
|---|---|
| Login | 11 |
| Catálogo | 6 |
| Carrinho | 8 |
| Checkout | 8 |
| Sessão e navegação | 5 |
| **Total** | **38** |

Resultado da execução: ver [execucao/ciclo-01.md](execucao/ciclo-01.md) e [relatorios/relatorio-ciclo-01.md](relatorios/relatorio-ciclo-01.md).

## Técnicas usadas

- Partição de equivalência (credenciais válidas, inválidas, bloqueadas)
- Tabela de decisão (combinação de campos obrigatórios vazios)
- Verificação de regra de negócio (ordenação, cálculo de imposto)
- Testes de fluxo (caminho feliz e caminhos alternativos)
- Regressão com perfis de usuário diferentes

## Ferramentas

- Navegador Chrome e DevTools
- Markdown e GitHub (documentação e Issues para bugs)
- Gherkin para os cenários BDD

## Próximos passos

- [ ] Automatizar os casos de prioridade alta com Playwright + pytest
- [ ] Rodar a automação no GitHub Actions
- [ ] Testes de API em outro projeto (Postman)

## Autor

**Jean Macedo** | Estudante de Engenharia de Computação (IFRJ Niterói)
[GitHub](https://github.com/Jean-Macedo)
