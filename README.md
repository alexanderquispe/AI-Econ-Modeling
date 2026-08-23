# Artificial Intelligence and Economic Modeling

**Universidad del Pacífico · School of Economics · Term 2026-II**
Instructor: **Alexander Quispe Rojas** · Sessions: **Wednesdays and Fridays**, online via Zoom

🌐 **[Course website](https://alexanderquispe.github.io/AI-Econ-Modeling/)** · 📄 **[Syllabus (PDF)](syllabus/en/Syllabus_AI_Economic_Modeling_UP_2026.pdf)** · 📘 **[Repository guide](syllabus/repository-guide.md)** · 📥 **[Papers](papers/)** · ✅ **[Assignments](https://github.com/alexanderquispe/AI-Econ-Modeling/issues)**

> **The working language of this course is English.** A Spanish version of the syllabus is kept in [`syllabus/es/`](syllabus/es/) because the School of Economics requires one; everything else — assignments, slides, the guide, and your repositories — is in English.

---

## What the course is about

We read economic theory papers on human–AI interaction, **re-derive** their main result, and **extend** them by relaxing one assumption. Language models are used as **proof assistants** — not as the subject of study — and the student always has the last word on what the machine proposes.

There is no written midterm or final exam. Every student ends the term with a piece of their own: a formal extension of a course paper, or the economic model underpinning their thesis.

**The sequence is ordered by increasing mathematical difficulty**, not by economic mechanism: each session introduces exactly the technique that paper requires, and none demands a tool that has not been used before.

## Key dates

| | |
|---|---|
| First day of classes | Monday, **August 10, 2026** |
| Instructor's papers | **August 19 – September 25** (sessions 1–12) |
| Midterm exams (no classes) | September 28 – October 3 |
| Topic presentations | **October 7 – 16** (sessions 13–16) |
| Workshop | October 21 and 23 (sessions 17–18) |
| Final presentations | **October 28 – November 20** (sessions 19–26) |
| Last day of classes | Saturday, **November 21** |
| Final paper due | **November 23 – 29** |

> ⏰ **Weekly repositories are due Tuesdays at 22:00.** No holiday in the term falls on a Wednesday or a Friday.

## Schedule

| # | Date | Topic | Assessment |
|---|---|---|---|
| — | Wed Aug 12 | Introduction. Git and GitHub; credentials | |
| — | Fri Aug 14 | Editor with LaTeX; AI agent CLI; SymPy | |
| 1 | Wed Aug 19 | Aouad–Lykouris–Zhong §2 — Prop. 2.1: concave maximum, interior vs. corner | Reading ck. |
| 2 | Fri Aug 21 | ALZ §§3–5 — the three paradoxes, stated without proof | Reading ck. |
| 3 | Wed Aug 26 | **Agrawal–Gans–Goldfarb I** — Props. 1–2: FOC and envelope theorem | Reading ck. |
| 4 | Fri Aug 28 | AGG II — Prop. 3: variance algebra; the conditional U-shape | Reading ck. |
| 5 | Wed Sep 2 | Jovanovic–Nyarko §IV — myopic paths; Normal–Normal in precisions | Reading ck. |
| 6 | Fri Sep 4 | Quispe & Xu (2026) — from a model to a testable prediction | Reading ck. |
| 7 | Wed Sep 9 | Acemoglu–Kong–Ozdaglar — cross-partials; knowledge collapse | Reading ck. |
| 8 | Fri Sep 11 | Bastani & Cachon — the contracting paradox: moral hazard | Reading ck. |
| 9 | Wed Sep 16 | Yin, Su & Li — sentinel auditing | Reading ck. |
| 10 | Fri Sep 18 | Ide & Talamàs (JPE 2025) — autonomy and capability | Reading ck. |
| 11 | Wed Sep 23 | Acemoglu & Restrepo (2018) — continuum of tasks | Reading ck. |
| 12 | Fri Sep 25 | Empirical session — Brynjolfsson, Peng, METR, Dell'Acqua | Reading ck. |
| — | Sep 28 – Oct 3 | *Midterm exams — no classes* | |
| 13–16 | Oct 7 – 16 | Topic presentations · four per session, 20 min each | Topic pres. |
| 17–18 | Oct 21 and 23 | Workshop on the student's own project | |
| 19–26 | Oct 28 – Nov 20 | Final presentations · two per session | Final pres. |
| — | Nov 23–29 | Close of term | Final paper |

## Assessment

The categories use the nomenclature of the University's grading system.

| Category | What it covers | Weight |
|---|---|---|
| **Final paper** | A 6–8 page document plus a handwritten appendix | 30 % |
| **Final presentation** | Presentation of the work, Oct 28 – Nov 20 | 30 % |
| **Coursework average** | The six weekly repositories (20) and the topic presentation (10) | 30 % |
| **Reading check** | Five-minute oral exam, by lottery | 10 % |

## How the week works

1. **Friday:** the instructor announces next week's designated paper.
2. **Weekend and Monday:** read the paper and build the repository.
3. **Tuesday 22:00:** the repository is due (branch → pull request → merge) and its link posted as a comment on that week's issue.
4. **Wednesday and Friday:** each session opens with the reading-check draw.

Every designated paper gets **its own new repository** on GitHub, with `README.md`, `prompts.md`, a `hand/` folder holding at least one photographed derivation, and the Beamer deck. Full detail in the **[repository guide](syllabus/repository-guide.md)**.

📁 **[`ai-01-aouad`](https://github.com/alexanderquispe/ai-01-aouad) is a worked example** set up as a GitHub template — press *Use this template* to start yours with the structure already in place.

## What is in this repository

```
├── docs/                  course website (GitHub Pages)
├── papers/                the 20 reading PDFs + index with links + fetch.sh
├── syllabus/
│   ├── en/                syllabus in English (tex · md · pdf)
│   ├── es/                Spanish version, for the School of Economics
│   ├── repository-guide.md
│   └── build.sh           rebuilds both PDFs with Tectonic
└── README.md
```

The paper PDFs are in `.gitignore`: fetch them with `./papers/fetch.sh`, which skips the ones already present. Five need manual download from SSRN or Wiley; links are in [`papers/README.md`](papers/README.md).

---

## Course design notes

What follows is the reasoning behind the reading list, not material for students.

### The difficulty ordering, and why

An audit of the bibliography (adversarial verification against primary sources) found that grouping by economic mechanism had produced two defects: a module whose paper contains no proposition at all — and therefore cannot support the re-derive-and-extend assignment — and the easiest complete formal model on the list scheduled ten weeks after the session teaching the tool it uses.

The verified ladder is: ALZ Prop. 2.1 (interior vs. corner case split, no calculus) → Agrawal–Gans–Goldfarb Props. 1–2 (FOC + envelope + geometric series) → AGG Prop. 3 (variance algebra) → Jovanovic–Nyarko §IV and Quispe & Xu (Normal–Normal in precisions) → Acemoglu–Kong–Ozdaglar (that same FOC inside a precision recursion, plus Topkis) → Bastani–Cachon (moral hazard) → Ide–Talamàs and Acemoglu–Restrepo (assignment and continuum of tasks).

The ordering coincides with a dialectical arc — pessimistic static substitution → judgment complementarity → Bayesian frontier → knowledge collapse → contracting impossibility → autonomy sign-flip — so no narrative is sacrificed.

### Relaxable assumptions, paper by paper

The course's real filter: a paper is only usable if a student can relax *one* assumption and re-derive the proposition in a few pages.

| Paper | Assumption to relax | Warning |
|---|---|---|
| **ALZ** | **Myopia** (a two-period agent), or complementarity inside the primitive `p(·)` | Do not assign "linear → convex cost": the authors already did it in Appendix D |
| **Agrawal–Gans–Goldfarb** | Curvature conditions that **sign** `p(se*(1);1) − p(se*(0);0)` | The paper's functional form sits exactly on the knife edge of equality |
| **Acemoglu–Kong–Ozdaglar** | Assumption 1: `Δ_I = 0 → Δ_I > 0`. Attacks Lemma 2 and Prop. 5 | Scope it to the collapse state: the paper warns the convexity argument breaks |
| **Bastani–Cachon** | Output-contingent pay → random auditing | Already published (Yin–Su–Li, ICML 2026): useful as an audit-the-AI exercise, not a discovery one |

### Citation errata corrected

Four citations in the original syllabus were wrong and were verified against Crossref, NBER, and arXiv:

- Agrawal–Gans–Goldfarb is **not** titled *Variance, Judgment, and the Value of AI Predictions* and is not on arXiv: it is *The Economics of Bicycles for the Mind*, NBER WP 34034.
- "Ganuthula & Kumar" is in fact **Ganuthula & Singh** (Kumar is a given name).
- Ide & Talam**à**s (2025), published in *JPE* 133(12), not a 2024 working paper.
- `arXiv:2605.25438` is not titled *Coding Beyond Your Training*: the current version is **Quispe & Xu**, *Agentic Delegation and the Language Frontier of Software Developers*.

**Five of the core readings are unrefereed preprints** under active revision. They are read because they sit at the frontier, and verifying the editorial status of what one cites is an explicit part of the craft this course teaches.

## Key references

- Aouad, A., Lykouris, T., & Zhong, H. (2026). *Human-AI Productivity Paradoxes.* [arXiv:2605.11350](https://arxiv.org/abs/2605.11350)
- Agrawal, A., Gans, J., & Goldfarb, A. (2025). *The Economics of Bicycles for the Mind.* [NBER w34034](https://doi.org/10.3386/w34034)
- Acemoglu, D., Kong, D., & Ozdaglar, A. (2026). *AI, Human Cognition and Knowledge Collapse.* [NBER w34910](https://doi.org/10.3386/w34910)
- Ide, E., & Talamàs, E. (2025). *Artificial Intelligence in the Knowledge Economy.* [JPE 133(12)](https://doi.org/10.1086/737233)
- Quispe, A., & Xu, K. (2026). *Agentic Delegation and the Language Frontier of Software Developers.* [arXiv:2605.25438](https://arxiv.org/abs/2605.25438)

## License

[MIT](LICENSE)
