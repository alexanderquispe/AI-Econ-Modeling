#!/usr/bin/env bash
# Orden de presentaciones — un solo sorteo para los dos tramos.
#
#   ./scripts/orden-presentaciones.sh             imprime el calendario
#   ./scripts/orden-presentaciones.sh 20261007    con otra semilla
#
# El MISMO orden gobierna la exposición de tema y la presentación final:
# quien expone primero su idea expone primero su trabajo. Por eso se sortea
# UNA sola vez y se publica la semilla — cualquiera puede reproducir el
# resultado y comprobar que no hubo mano.
#
# Lee scripts/nombres.txt (en .gitignore: dato personal, no se sube).
set -euo pipefail
cd "$(dirname "$0")/.."
SEED=${1:-20261007}
LISTA=scripts/nombres.txt
[ -f "$LISTA" ] || { echo "falta $LISTA — un nombre por línea, sin retirados"; exit 1; }

python3 - "$SEED" "$LISTA" <<'PY'
import sys, random, datetime as dt

seed = int(sys.argv[1])
gente = [l.strip() for l in open(sys.argv[2]) if l.strip() and not l.startswith("#")]
random.Random(seed).shuffle(gente)          # semilla fija: aleatorio y verificable

INICIO = dt.datetime(2026, 1, 1, 7, 30)     # las sesiones van de 7:30 a 9:20
FIN     = dt.datetime(2026, 1, 1, 9, 20)

TEMAS = [(13, dt.date(2026,10,7)), (14, dt.date(2026,10,9)),
         (15, dt.date(2026,10,14)), (16, dt.date(2026,10,16))]
FINALES = [(19, dt.date(2026,10,28)), (20, dt.date(2026,10,30)),
           (21, dt.date(2026,11,4)),  (22, dt.date(2026,11,6)),
           (23, dt.date(2026,11,11)), (24, dt.date(2026,11,13)),
           (25, dt.date(2026,11,18)), (26, dt.date(2026,11,20))]

DIAS  = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
MESES = ["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
fecha_larga = lambda f: f"{DIAS[f.weekday()]} {MESES[f.month]} {f.day}"

def reparte(gente, sesiones, cupo, equilibrar):
    """equilibrar=True: parejo entre todas las sesiones (temas 4,3,3,3).
    equilibrar=False: llena `cupo` y deja libres las sobrantes como reserva."""
    if equilibrar:
        base, extra = divmod(len(gente), len(sesiones))
        tam = [base + (1 if k < extra else 0) for k in range(len(sesiones))]
        if max(tam) > cupo:
            raise SystemExit(f"no caben {len(gente)} en {len(sesiones)} sesiones de {cupo}")
    else:
        tam = [cupo] * len(sesiones)
    out, i = [], 0
    for (ses, f), t in zip(sesiones, tam):
        out.append((ses, f, gente[i:i+t])); i += len(gente[i:i+t])
    return out

def horarios(n, bloque):
    """n bloques consecutivos de `bloque` minutos desde el inicio de sesión."""
    t = INICIO
    for _ in range(n):
        fin = t + dt.timedelta(minutes=bloque)
        yield t.strftime("%H:%M"), fin.strftime("%H:%M")
        t = fin + dt.timedelta(minutes=5)   # 5 min de transición

def tabla(reparto, bloque, etiqueta):
    print(f"| Session | Date | Time | {etiqueta} |")
    print("|---|---|---|---|")
    for ses, f, bloque_gente in reparto:
        if not bloque_gente:
            print(f"| {ses} | {fecha_larga(f)} | — | *free — reserved for make-ups* |")
            continue
        for (h1, h2), quien in zip(horarios(len(bloque_gente), bloque), bloque_gente):
            print(f"| {ses} | {fecha_larga(f)} | {h1}–{h2} | {quien} |")

print(f"<!-- draw: seed {seed} · {len(gente)} students · "
      f"reproduce with ./scripts/orden-presentaciones.sh {seed} -->\n")
print("### Topic presentation · 20 minutes each\n")
tabla(reparte(gente, TEMAS, 4, True), 20, "Presenter")
print("\n### Final presentation · two per session\n")
tabla(reparte(gente, FINALES, 2, False), 45, "Presenter")
PY
