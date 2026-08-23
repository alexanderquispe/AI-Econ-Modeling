#!/usr/bin/env bash
# Weekly submissions report.
#
#   ./scripts/entregas.sh 1            who posted on issue #1
#   ./scripts/entregas.sh 1 roster.txt who posted, and who is missing
#
# roster.txt: one GitHub username per line (# comments allowed).
set -euo pipefail
REPO=alexanderquispe/AI-Econ-Modeling
N=${1:?uso: $0 <numero-de-issue> [roster.txt]}
ROSTER=${2:-scripts/roster.txt}

gh issue view "$N" --repo "$REPO" --json title,comments > /tmp/_iss.json

python3 - "$ROSTER" <<'PY'
import json, re, sys, os
d=json.load(open("/tmp/_iss.json"))
print(f"\n{d['title']}\n" + "-"*len(d['title']))
seen={}
for c in d["comments"]:
    u=c["author"]["login"]
    m=re.search(r"https://github\.com/[\w.-]+/[\w.-]+", c["body"])
    when=c["createdAt"][:16].replace("T"," ")
    seen.setdefault(u, (when, m.group(0) if m else "— sin enlace —"))
if not seen:
    print("  (aún sin entregas)")
else:
    for u,(w,l) in sorted(seen.items(), key=lambda x:x[1][0]):
        print(f"  {w}  {u:<20} {l}")
print(f"\n  entregaron: {len(seen)}")
r=sys.argv[1]
if os.path.exists(r):
    roster=[l.strip() for l in open(r) if l.strip() and not l.startswith("#")]
    missing=[u for u in roster if u not in seen]
    if not roster:
        print(f"  ({r} está vacío — complétalo para saber quién falta)")
        raise SystemExit
    print(f"  matriculados: {len(roster)}")
    if missing:
        print(f"\n  FALTAN ({len(missing)}):")
        for u in missing: print(f"    {u}")
    else:
        print("  no falta nadie")
else:
    print(f"  (sin lista de matriculados en {r} — no puedo decir quién falta)")
PY
