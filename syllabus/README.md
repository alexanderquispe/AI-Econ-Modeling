# Syllabus — AI & Economic Modeling (UP 2026-II)

Official syllabus for **Artificial Intelligence and Economic Modeling**
(Universidad del Pacífico, School of Economics), taught in the **2026-II term:
August 10 – November 21, 2026**.

> **The working language of the course is English.** The Spanish version is kept
> because the School of Economics requires one for its records; both versions are
> content-equivalent — same sections, same dated schedule, same grading weights.

| Language | Folder | Files |
|---|---|---|
| English (working version) | [`en/`](en/) | `Syllabus_AI_Economic_Modeling_UP_2026.{md,tex,pdf}` |
| Spanish (for the School) | [`es/`](es/) | `Silabo_IA_Modelamiento_Economico_UP_2026.{md,tex,pdf}` |

The `.md` file is the readable/editable source for the web; the `.tex` file is
the typeset source for the PDF handed to students and the curriculum committee.
**When editing, change both `.md` and `.tex`, then rebuild the PDF.**

Also here: **[`repository-guide.md`](repository-guide.md)** — the student-facing
guide to the weekly repositories (workflow, minimum contents, starter prompts).

## Building the PDFs

The PDFs are compiled with [Tectonic](https://tectonic-typesetting.github.io/)
(installed at `~/.local/bin/tectonic`; no full TeX Live needed — it fetches
packages on demand and caches them).

```bash
./build.sh          # rebuild both PDFs
./build.sh es       # Spanish only
./build.sh en       # English only
```

Two notes on the sources:

- The Spanish `.tex` uses `babel[spanish,es-tabla]`; the English one uses
  `babel[english]` plus `\emergencystretch=2em` (English hyphenation produces
  overfull lines in the long justified paragraphs without it). Both use
  `xltabular` so the schedule table can break across pages.
- Accents are written as LaTeX escapes (`\'i`, `\~n`) so the files are
  encoding-safe.

## Course at a glance

- **Format:** online via Zoom, Wednesdays and Fridays, 2 hours each; 26 sessions.
- **Core idea:** read → re-derive → extend. Students relax one assumption of a
  paper and re-derive its main proposition, with a symbolic or numerical check
  (SymPy / Monte Carlo).
- **LLMs as proof assistants,** declared, verified, and adjudicated by the
  student — who always has the last word.
- **Twelve papers ordered by increasing mathematical difficulty**, concluding
  before the midterm exam week; the rest of the term belongs to the students.
- **Assessment:** Final paper 30 · Final presentation 30 · Coursework average 30
  (six weekly repositories plus the topic presentation) · Reading check 10.

See the repository [`README.md`](../README.md) for the fuller course design
notes, the reading list, and the reasoning behind the ordering.
