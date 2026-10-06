"""Gera execucao/ciclo-01.md a partir do CSV exportado da planilha (aba Execução).

Uso: python scripts/gerar_md_execucao.py [caminho_csv] [caminho_md]
Padrão: execucao/ciclo-01.csv -> execucao/ciclo-01.md
"""
import csv, sys
from collections import Counter

ICONE = {"Passou": "✅ Passou", "Falhou": "❌ Falhou", "Bloqueado": "⛔ Bloqueado", "Não executado": "⏭️ Não executado"}
entrada = sys.argv[1] if len(sys.argv) > 1 else "execucao/ciclo-01.csv"
saida = sys.argv[2] if len(sys.argv) > 2 else "execucao/ciclo-01.md"

with open(entrada, encoding="utf-8-sig") as f:
    linhas = list(csv.reader(f))

cab, casos, na_tabela = {}, [], False
for l in linhas:
    if not l or not any(l):
        continue
    if l[0] == "ID":
        na_tabela = True
        continue
    if na_tabela:
        casos.append(l)
    elif len(l) > 1:
        cab[l[0]] = l[1]

cel = lambda s: (s or "").replace("|", "/").replace("\n", " ").strip()
md = ["# Execução: Ciclo 01", "", "| Campo | Valor |", "|---|---|"]
md += [f"| {k} | {cel(v) or '-'} |" for k, v in cab.items()]
md += ["", "| ID | Título | Prioridade | Status | Data | Evidência | Bug | Observação |", "|---|---|---|---|---|---|---|---|"]
for c in casos:
    c += [""] * (9 - len(c))
    ev = f"[{c[6]}](../evidencias/{c[6]})" if c[6].strip() else ""
    md.append(f"| {c[0]} | {cel(c[2])} | {c[3]} | {ICONE.get(c[4], c[4])} | {cel(c[5])} | {ev} | {cel(c[7])} | {cel(c[8])} |")

cont = Counter(c[4] for c in casos)
md += ["", "## Resumo", "", "| Status | Qtd |", "|---|---|"]
md += [f"| {ICONE[s]} | {cont.get(s, 0)} |" for s in ICONE]
md.append(f"| **Total** | **{len(casos)}** |")

with open(saida, "w", encoding="utf-8") as f:
    f.write("\n".join(md) + "\n")
print(f"Gerado {saida} com {len(casos)} casos.")
