# Syllabus — AI & Economic Modeling (UP 2026-II)

Official syllabus for **Artificial Intelligence and Economic Modeling**
(Universidad del Pacífico, School of Economics), taught in the **2026-II term:
August 10 – November 21, 2026**. Available in two languages; both versions are
content-equivalent: same sections, same dated schedule, same grading weights.

| Language | Folder | Files |
|---|---|---|
| Spanish (official / UP submission) | [`es/`](es/) | `Silabo_IA_Modelamiento_Economico_UP_2026.{md,tex,pdf}` |
| English (international / reference) | [`en/`](en/) | `Syllabus_AI_Economic_Modeling_UP_2026.{md,tex,pdf}` |

The `.md` file is the readable/editable source for the web; the `.tex` file is
the typeset source for the PDF handed to students and the curriculum committee.
**When editing, change both `.md` and `.tex`, then rebuild the PDF.**

## Building the PDFs

The PDFs are compiled with [Tectonic](https://tectonic-typesetting.github.io/)
(installed at `~/.local/bin/tectonic`; no full TeX Live needed — it fetches
packages on demand and caches them).

```bash
./build.sh          # rebuild both PDFs
./build.sh es       # Spanish only
./build.sh en       # English only
```

Or directly:

```bash
tectonic es/Silabo_IA_Modelamiento_Economico_UP_2026.tex
tectonic en/Syllabus_AI_Economic_Modeling_UP_2026.tex
```

Two notes on the sources:

- The Spanish `.tex` uses `babel[spanish,es-tabla]`; the English one uses
  `babel[english]` plus `\emergencystretch=2em` (English hyphenation produces
  overfull lines in the long justified paragraphs without it).
- Both are `pdflatex`-compatible with `inputenc`/`fontenc`; accents in the
  Spanish file are written as LaTeX escapes (`\'i`, `\~n`) so the file is
  encoding-safe.

## Term 2026-II key dates

Anchored to the *Calendario Académico Regular 2026* (updated January 2026):
**14 teaching weeks** (schedule weeks 1–7 and 9–15) plus two exam weeks.

| | Date |
|---|---|
| First day of classes (week 1) | Monday, August 10 |
| Last day to drop without pending fees | Saturday, August 22 |
| **Midterm exams** (week 8) | September 28 – October 3 |
| Milestone 1 — Extension proposal (week 6) | September 14–19 |
| Milestone 2 — Derivation + AI log (week 11) | October 19–24 |
| Milestone 3 — Peer review (week 14) | November 9–14 |
| Last day of classes (week 15) | Saturday, November 21 |
| **Final exams** + final paper (week 16) | November 23–29 |
| Return of final exams | Friday, December 4 |

Only one holiday falls on a class day: **Battle of Angamos, Thursday October 8**
(week 9). The rest fall on Sundays.

## Course at a glance

- **Format:** 2h lecture (paper reading + discussion) + 2h lab (LLM-assisted
  extension workshop), 14 teaching weeks + 2 exam weeks.
- **Core idea:** read → re-derive → extend. Students relax one assumption of a
  canonical paper and re-derive its main proposition, with a symbolic or
  numerical check (SymPy / Monte Carlo).
- **LLMs as proof assistants,** under a mandatory protocol
  (derive → audit → ideate → verify → **adjudicate**) documented in an AI
  collaboration log.
- **Five mechanism modules:** substitutable factors (Aouad–Lykouris–Zhong 2026),
  Bayesian learning (Jovanovic–Nyarko 1996 + Quispe 2026), task-based automation
  (Acemoglu–Restrepo), skill atrophy (Ganuthula–Kumar 2026), variance and
  judgment (Agrawal et al. 2025).
- **Deliverable:** a 4–6 page extension memo plus a blackboard presentation.

See the repository [`README.md`](../README.md) for the fuller course design
notes, the reading pool, and the research agenda behind the course.
