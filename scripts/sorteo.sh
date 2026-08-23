#!/usr/bin/env bash
# Reading-check draw, without replacement.
#
#   ./scripts/sorteo.sh        draw one student
#   ./scripts/sorteo.sh 2      draw two
#
# Keeps state in scripts/.sorteo-usados so nobody repeats until everyone
# has been called once; then the pool resets automatically.
set -euo pipefail
cd "$(dirname "$0")/.."
K=${1:-1}
ROSTER=scripts/roster.txt
USED=scripts/.sorteo-usados
[ -f "$ROSTER" ] || { echo "falta $ROSTER — cópialo de scripts/roster.example.txt"; exit 1; }
touch "$USED"
python3 - "$K" "$ROSTER" "$USED" <<'PY'
import sys, random, os
k=int(sys.argv[1]); roster_f, used_f = sys.argv[2], sys.argv[3]
roster=[l.strip() for l in open(roster_f) if l.strip() and not l.startswith("#")]
used=[l.strip() for l in open(used_f) if l.strip()]
pool=[u for u in roster if u not in used]
if len(pool) < k:
    print("  (todos pasaron al menos una vez — la urna se reinicia)")
    used=[]; pool=roster[:]
pick=random.sample(pool, k)
with open(used_f,"a" if used else "w") as f:
    if not used: f.truncate(0)
    for u in pick: f.write(u+"\n")
print("\n  SORTEADOS:")
for u in pick: print(f"    → {u}")
rest=len([u for u in roster if u not in used+pick])
print(f"\n  quedan sin pasar: {rest} de {len(roster)}")
PY
