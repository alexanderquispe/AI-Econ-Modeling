# SYLLABUS 2026-II

**Artificial Intelligence and Economic Modeling**
Universidad del Pacífico — School of Economics

## I. GENERAL INFORMATION

| | |
|---|---|
| **Course title** | Artificial Intelligence and Economic Modeling |
| **Term** | 2026-II (August 10 to November 21, 2026) |
| **Instructor** | Alexander Quispe Rojas |
| **Email** | aw.quispero@up.edu.pe, alexander.quispe@pucp.edu.pe |
| **Lab sections** | Taught by the course instructor |
| **Sessions** | Wednesdays and Fridays, 2 hours each |
| **Format** | Online, via Zoom |
| **Lecture hours** | 2 hours (paper reading and discussion) |
| **Lab hours** | 2 hours (workshop and presentations) |
| **Office hours** | https://calendly.com/alexander-quispe |
| **Prerequisites** | Microeconomics (consumer/producer theory), Calculus and optimization, Probability and Statistics, Econometrics |

---

## II. COURSE DESCRIPTION

This course introduces students to the **formal mathematical modeling of the interaction between humans and artificial intelligence**, based on the critical reading of recent economic theory papers. Rather than learning programming tools in isolation, participants learn to *read, reproduce, and extend* economic models: to identify the central mechanism of a paper, re-derive its main result, and relax one of its assumptions in order to obtain a new result. The course explicitly leverages **large language models (LLMs)** —GPT, Claude, Gemini— not as a subject of study, but as **proof assistants**: tools that help derive, audit, and verify mathematical steps, always under the student's critical judgment. The unifying thread is a family of models that formalize how AI assistance affects human skill, effort, and productivity. The course culminates in **a piece of the student's own**: a formal extension of one of the papers read, or the economic model underpinning the student's own thesis.

---

## III. OVERVIEW

The purpose of this course is to develop students' ability to **work with formal economic models as living objects**: not only to understand them, but to intervene in them. We start from a concrete, current question —how does artificial intelligence change what a human worker can do and chooses to do?— and approach it through the theoretical papers that are formalizing it right now in economics, operations research, and computer science.

**The course has no review sessions and no separate mathematics blocks.** Every session is devoted entirely to one paper, and the sequence is ordered by **increasing mathematical difficulty**: each session introduces exactly the technique that paper requires, and none demands a tool that has not been used before. We begin with a model whose main proposition is proved by an interior-versus-corner case split, with no calculus, and end with assignment and task-based general equilibrium models.

The twelve papers presented by the instructor conclude **before the midterm exam week**. The rest of the term belongs to the students: first they present the topic and extension they propose, and then they present their work. Assessment is not based on written exams but on a staged research process. The course is the formal-theory counterpart to the Causal Machine Learning course: that one addresses the empirical side; this one, the model side. By the end, participants will have produced an original piece of economic modeling and will have learned to use AI as an analytical collaborator without surrendering their intellectual sovereignty.

---

## III-bis. RATIONALE AND RELEVANCE

**The problem: a modeling gap in the training of economists.** The current degree sequence trains students solidly in the *use* of economic models and in empirical *estimation* (microeconomics, econometrics). There is, however, a systematic gap in the ability to *build and extend* formal models of one's own. In practice, this shows up in theses: a substantial share are purely empirical, or invoke a theoretical model as a "black box" that is cited but neither derived nor adapted to the problem under study. The result is work that estimates correlations without a theoretical framework of its own to interpret them. This course attacks that deficiency head-on: it teaches the craft of reading a model, re-deriving its central result, and extending it by relaxing an assumption —precisely the skill that separates a descriptive thesis from an analytical contribution.

**The course as the missing piece of the curriculum.** Where microeconomics and econometrics teach how to *use* and *estimate* models, this course teaches how to *formulate* them. It is the formal-modeling counterpart of the empirical component, completing the theory–model–data triangle that any rigorous economic research requires. Incorporating LLMs as proof assistants —not as a substitute for reasoning, but as a tool audited under the student's judgment— makes tractable, within a single undergraduate semester, a competence that is traditionally postponed to graduate school.

**Relevance and timeliness.** Generative artificial intelligence is already part of the research economist's toolkit. Korinek (2023), in the *Journal of Economic Literature*, systematically documents its uses in economic research —including assistance with mathematical derivations— and the American Economic Association has incorporated it into its continuing education program for economists. Offering this course positions the School as a regional pioneer in training economists able to use these tools with analytical rigor.

### International precedents

- **Journal of Economic Literature.** Korinek (2023) provides the reference synthesis on generative AI in economic research, with a section devoted to LLM-assisted mathematical derivations —exactly the core competence of this course.
- **American Economic Association.** The AEA added sessions on generative AI for economists to its *Recent Developments Series* (continuing education, ASSA meetings).
- **Frontier literature.** The course reads papers in active circulation on `arXiv` (`cs.GT`, `econ.TH`) and in economics and operations research journals, which guarantees content updated to the state of the art.

---

## III-ter. IMPACT ON RESEARCH AND THESES

- **Every student finishes with a piece of research.** The final deliverable —a 6–8 page document with an original theoretical result and its verification— is the seed of a thesis chapter or a writing sample for graduate school applications.
- **A direct link to the thesis.** Students who already have a thesis topic may use the final paper to **formulate the economic model they currently lack**, instead of extending someone else's article.
- **An incubator for *working papers*.** The best extensions can be developed into School working papers or `arXiv` submissions, eventually co-authored.
- **A competitive signal for graduate school and employment.** The combination of formal modeling, AI fluency, and econometrics is precisely the profile demanded by frontier doctoral programs and research employers.
- **A culture of rigor in the use of AI.** Verifying by hand what a language model proposes —and learning to detect when it is wrong— is a transferable competence valuable throughout a student's training.

---

## IV. LEARNING OUTCOMES

By the end of the course, students will be able to:

- **Critically read** an economic theory paper, identifying its central mechanism, its key assumptions, and the logical structure of its main result.
- **Reproduce by hand** the derivation of a formal result (first-order conditions, comparative statics, a simple proposition) starting from the model's assumptions.
- **Extend a model**: relax an assumption, re-derive the affected proposition, and check the result with a numerical or symbolic verification (SymPy or Monte Carlo).
- **Formulate a model of their own** that gives theoretical structure to an empirical question.
- **Use LLMs as proof assistants** rigorously, documenting where the model is right and where it is wrong, and retaining analytical control.
- **Verify AI-generated mathematics**: detect plausible-but-incorrect proofs produced by a language model, and correct them.
- **Write a complete proof by hand**, omitting no steps, as evidence of their own understanding.
- **Present** a theoretical result —their own or someone else's— clearly and within a fixed time, using slides and screen sharing in an online session.

---

## V. COURSE CONTENT

The course covers twelve papers, ordered by increasing mathematical difficulty. In italics, the technique each session introduces.

**Sessions 1–2. AI as a substitutable input: the productivity paradox.**
Aouad, Lykouris & Zhong (2026). The agent chooses effort to maximize output minus cost, with skill, effort, and AI assistance as perfect substitutes. Proposition 2.1 characterizes optimal effort and is proved by cases, without differentiating. Then the paper's three paradoxes —deskilling, unreliability, and polarization— are stated and discussed without proof. *(Maximum of a concave function; interior versus corner solution; regularity condition and tie-break of the maximizing argument.)*

**Sessions 3–4. Judgment and complementarity: the value of a cognitive tool.**
Agrawal, Gans & Goldfarb (2025). The value of a tool decomposes into opportunity judgment and payoff judgment: the first is always a complement, the second only under a condition whose sign the paper itself cannot determine. Then, wage variance and its *conditional* U-shape with respect to tool quality. *(First-order condition; envelope theorem; geometric sum; variance algebra and coefficient of variation.)*

**Sessions 5–6. AI as a signal: beliefs and the technological frontier.**
Jovanovic & Nyarko (1996): learning by doing and the choice of technology, in its myopic-agent version. Then Quispe & Xu (2026): agentic delegation and the expansion of the programming-language frontier, as a worked example of how a model becomes a testable prediction and that prediction becomes a paper. *(Normal–Normal Bayesian updating written in precisions; technology-switching threshold.)*

**Session 7. Substitution and complementarity in one function: knowledge collapse.**
Acemoglu, Kong & Ozdaglar (2026). Agentic AI substitutes for human effort while the stock of general knowledge complements it; the entire tension of the course reduces to two cross-partial signs. The dynamic result —a collapse steady state— is read off a 45-degree diagram. *(Cross-partials and monotone comparative statics; iteration of a one-dimensional difference equation.)*

**Session 8. Delegation and oversight: the contracting paradox.**
Bastani & Cachon. When the human overseer's monitoring effort is unobservable and costly, the required wage scales inversely with the AI's error probability: oversight becomes prohibitively expensive precisely as the tool improves, and the principal may come to prefer a less reliable tool. *(Moral hazard; incentive-compatibility and participation constraints.)*

**Session 9. How one responds to a paper.**
Yin, Su & Li (2026) solve the previous problem through sentinel auditing. A session devoted to the anatomy of a contribution that answers another: which assumption is touched, which result changes, and what still stands.

**Session 10. Autonomy, capability, and inequality.**
Ide & Talamàs (2025). Holding AI capability fixed, its *autonomy* flips who gains; capability independently determines whether the bottom of the distribution also gains. *(Assignment model, in a two- or three-type discrete version.)*

**Session 11. Task-based automation.**
Acemoglu & Restrepo (2018). Displacement and reinstatement of tasks, and their effect on wages and the labor share. *(Continuum of tasks; integral over the task set.)*

**Session 12. The evidence.**
The experiments this literature cites: Brynjolfsson, Li & Raymond; Peng et al.; METR; Dell'Acqua et al. Each is mapped to the theoretical assumption it tests, and we discuss which results support it and which do not.

---

## VI. TEACHING METHODOLOGY

The course is **online** and meets **twice a week, Wednesdays and Fridays** (2 hours per session) over Zoom. All presentations are delivered by sharing screen. It is organized in four blocks:

- **Papers presented by the instructor** (sessions 1–12, from **August 19 to September 25**, that is, up to the midterm exam week). One paper per session: guided reading, reproduction of the central result in class, and discussion. **The paper is read before the session**, not during it. Every session opens with one or two **oral exams** of 5 minutes.
- **Topic presentations** (sessions 13–16, from **October 7 to 16**). Each student presents in 20 minutes the topic and extension they have decided to work on; four presentations per session.
- **Workshop** (sessions 17–18, **October 21 and 23**). In-class work on the student's own project, with the instructor's support.
- **Final presentations** (sessions 19–26, from **October 28 to November 20**). Two presentations per session.

**Materials and tools.** Papers, slides, and submissions are managed through **GitHub**, following the branch, *pull request*, and merge cycle. The first week is devoted entirely to installing and configuring the working environment: Git, credentials, and the pull-request workflow; an editor with LaTeX support; a command-line interface for AI agents; and **SymPy** for symbolic and numerical verification. No prior programming experience is required.

---

## VII. ASSESSMENT

**The course has no written midterm or final exam.** Assessment is a staged process that culminates in a piece of the student's own work. The four categories use the nomenclature of the University's grading system, so that what is read here is exactly what appears in the register.

| CATEGORY | WHAT IT COVERS | WEIGHT (%) |
|---|---|---|
| **Final paper** | A 6–8 page document plus a handwritten appendix | 30 |
| **Final presentation** | Presentation of the work, October 28 to November 20 | 30 |
| **Coursework average** | The six weekly repositories (20) and the topic presentation (10) | 30 |
| **Reading check** | Five-minute oral exam on the designated paper, by lottery | 10 |
| **TOTAL** | | **100** |

### Coursework average (30 %)

It comprises two deliverables: the **average of the six weekly repositories**, worth 20 of the 30 points, and the **topic presentation**, worth the remaining 10.

#### The weekly repositories (20 %)

- **A new GitHub repository for each designated paper.** There are six paper weeks, so by the end of the term each student has **at least six repositories**.
- **Deadline: Tuesdays at 22:00.** Work follows the branch, *pull request*, and merge cycle covered in the first sessions: nothing is written directly to `main`.
- **Everyone posts their repository link each week**, whether or not they are drawn in the lottery, **as a comment on that week's issue** in the course repository. The URL suffices. GitHub timestamps the comment, so the comment *is* the submission record: a repository that exists but is not posted counts as not submitted.
- **Minimum contents:** a one-page `README.md` with the agent's problem and the main result with its conditions; a `prompts.md` with the LLM queries and their unedited answers; a `hand/` folder with at least one photograph of a derivation done by hand; and the **Beamer presentation**, with its LaTeX source and its PDF. Above that floor, content is free: extensions, simulations, limiting cases, or whatever the paper suggests.

**On the weekly handwritten derivation.** Students are not asked to derive the whole paper by hand, but to show **at least one place where they did not believe the machine and checked it themselves**: the step the model got wrong, the one they did not understand until they did it, or the one that seemed too easy to be true. A photograph taken with a phone is enough.

The operational detail —folder structure, naming convention, pull-request workflow, and a set of starter *prompts*— is in the [Course Repository Guide](../repository-guide.md), distributed in the first week.

#### Topic presentation (10 %)

Between **October 7 and 16**, each student presents in **20 minutes** the topic they have decided to work on: which paper they take —or which model from their thesis they formulate—, which assumption they relax, and which result they expect to change. Four presentations per session.

The presentation is accompanied by a two-page document stating the first-order condition they expect to obtain and the justification for why that result is not already settled in the paper's appendices.

### Reading check: the five-minute oral exam (10 %)

At the start of each session in the paper block, **the instructor draws one or two students by lottery** to present in **5 minutes**, sharing screen, the contents of their repository for that week.

- It applies in **all twelve sessions** of the paper block, starting with the first (Wednesday, August 19): that week's designated paper is announced on Friday, August 14, and its repository is due on Tuesday, August 18.
- The instructor **announces the designated paper in the previous Friday's session**, so that there is a weekend, Monday, and Tuesday to work on it.
- **The name of the presenter is not announced**: it is drawn during the session, so the whole class arrives prepared.
- The draw is **without replacement**: nobody is called again until everyone has presented at least once.
- A student who misses the session in which they are drawn receives a zero for that round.
- **If that week's repository is not submitted and registered by the Tuesday deadline, the reading check is graded zero**, regardless of the quality of the presentation.

**The presentation is a Beamer deck that lives inside the repository** and shows what that repository contains and what was achieved with it. Required structure: a title slide with the repository link, plus four slides.

1. **The paper.** What question it answers, which *single* economic mechanism it formalizes, and the agent's problem written out explicitly: what is maximized, over which variable, and under which constraints.
2. **The main result.** The exact statement of the proposition, **with all its conditions**, and below it the intuition in a single sentence.
3. **What I did.** What was explored in the repository: which assumptions were considered for relaxation, which extensions were proposed, what was simulated and what came out. Dead ends count too, provided the student explains why they led nowhere.
4. **Where I did not believe the AI.** The step verified by hand —with the photograph on screen—, what the model had answered, and **the presenter's verdict**: correct, incorrect, or unverifiable, with the reason.

**Formal rules.** No animations. No screenshots of the paper: equations are written in LaTeX. It is graded out of 4 points, one per slide, with emphasis on two things: that the proposition's conditions are *complete* (point 2) and that the verdict on the AI is *justified* (point 4). A verdict without a reason scores nothing.

### Final presentation (30 %)

Between **October 28 and November 20**, two presentations per session. It is **work in progress**, not the finished product: the student presents the model, the proposition, and the state of the proof, and receives criticism from the class before writing the final version.

### Final paper (30 %)

Each student chooses one of two tracks, both with the same submission specification:

- **Track A — Extension.** Relax an assumption of a course paper and re-derive the affected proposition.
- **Track B — Thesis model.** Formulate the economic model underpinning their own thesis, currently absent or cited as a black box.

**Deliverable (6–8 pages), identical in both tracks:** (i) the model and the assumption at issue; (ii) **one** proposition with its complete proof; (iii) a symbolic or numerical verification (SymPy or Monte Carlo); (iv) an AI collaboration appendix documenting, for each relevant contribution of the language model, what it claimed, what verdict it deserves, and how it was checked.

**Mandatory handwritten appendix.** The final paper is submitted together with a **handwritten document containing all the derivations, step by step and with no gaps**. It is not a summary or a selection: it is the complete proof, with every algebraic manipulation explicit, every differentiation rule named, and every condition verified where it applies. A step omitted —however obvious it may seem— is a step the student has not shown they understood.

This appendix is the core of the assessment of the paper, not a formality: a flawless document whose handwritten version skips steps indicates that the derivation was obtained without being understood. It may be submitted photographed or scanned, provided it is legible.

The document is due **on the same date for the whole class**, during the closing week, so that whoever presents first is not put at a disadvantage and everyone incorporates the criticism received before writing.

---

## VIII. COURSE RULES

**Use of artificial intelligence.** Using LLMs is not merely permitted: it is part of the course method. Three rules apply.

1. **Declare it.** Every relevant contribution of a language model is documented: the prompt, what it answered, and how it was verified.
2. **Verify it.** No result is presented as one's own unless it has been checked by hand or with SymPy. An incorrect step taken from an LLM and presented without verification is graded as the student's own error.
3. **Adjudicate it.** When the model and the writer disagree, the work must say who is right and why. The final judgment is always the student's.

**Submissions.** Weekly repositories are due **Tuesdays at 22:00**, with the work merged into `main` and the repository link posted as a comment on that week's issue. Presentations and the final paper are submitted as PDF through GitHub on the stated date. The Beamer deck lives inside that week's repository, with its LaTeX source and its PDF.

**Attendance.** The reading check is random and taken during the session. The topic presentation and the final presentation have assigned dates and are not rescheduled except with documented justification.

**Academic honesty.** Presenting someone else's derivation —a classmate's, a paper's, or a language model's— as one's own without attribution constitutes academic misconduct and is governed by University regulations.

**A caution about sources.** Several of the course papers are unrefereed preprints and working papers under active revision. They are read precisely because they sit at the frontier, but they are discussed with that caution: verifying the editorial status of what one cites is part of the craft this course teaches.

---

## IX. BIBLIOGRAPHY

**Course papers, in order of presentation**

- Aouad, A., Lykouris, T., & Zhong, H. (2026). *Human-AI Productivity Paradoxes: Modeling the Interplay of Skill, Effort, and AI Assistance.* [arXiv:2605.11350](https://arxiv.org/abs/2605.11350) [cs.GT].
- Agrawal, A., Gans, J., & Goldfarb, A. (2025). *The Economics of Bicycles for the Mind.* NBER Working Paper 34034. [doi:10.3386/w34034](https://doi.org/10.3386/w34034)
- Jovanovic, B., & Nyarko, Y. (1996). *Learning by Doing and the Choice of Technology.* Econometrica, 64(6), 1299–1310. [doi:10.2307/2171832](https://doi.org/10.2307/2171832)
- Quispe, A., & Xu, K. (2026). *Agentic Delegation and the Language Frontier of Software Developers: A Model and Evidence from Claude Code on GitHub.* [arXiv:2605.25438](https://arxiv.org/abs/2605.25438)
- Acemoglu, D., Kong, D., & Ozdaglar, A. (2026). *AI, Human Cognition and Knowledge Collapse.* NBER Working Paper 34910. [doi:10.3386/w34910](https://doi.org/10.3386/w34910)
- Bastani, H., & Cachon, G. P. (2026). *The Human-AI Contracting Paradox.* SSRN 5962739. [doi:10.2139/ssrn.5962739](https://doi.org/10.2139/ssrn.5962739)
- Yin, Q., Su, Z., & Li, W. (2026). *Overcoming the Incentive Collapse Paradox.* ICML 2026. [arXiv:2603.27049](https://arxiv.org/abs/2603.27049)
- Ide, E., & Talamàs, E. (2025). *Artificial Intelligence in the Knowledge Economy.* Journal of Political Economy, 133(12), 3762–3800. [doi:10.1086/737233](https://doi.org/10.1086/737233)
- Acemoglu, D., & Restrepo, P. (2018). *The Race between Man and Machine.* American Economic Review, 108(6), 1488–1542. [doi:10.1257/aer.20160696](https://doi.org/10.1257/aer.20160696)

**Empirical evidence (session 12)**

- Brynjolfsson, E., Li, D., & Raymond, L. (2025). *Generative AI at Work.* Quarterly Journal of Economics, 140(2), 889–942. [doi:10.1093/qje/qjae044](https://doi.org/10.1093/qje/qjae044)
- Peng, S., Kalliamvakou, E., Cihon, P., & Demirer, M. (2023). *The Impact of AI on Developer Productivity: Evidence from GitHub Copilot.* [arXiv:2302.06590](https://arxiv.org/abs/2302.06590)
- METR (2025). *Measuring the Impact of Early-2025 AI on Experienced Open-Source Developer Productivity.* [arXiv:2507.09089](https://arxiv.org/abs/2507.09089)
- Dell'Acqua, F., et al. (2023). *Navigating the Jagged Technological Frontier.* Harvard Business School Working Paper 24-013. [doi:10.2139/ssrn.4573321](https://doi.org/10.2139/ssrn.4573321)

**Supplementary readings**

- Chen, L., & Meng, D. (2026). *When AI Levels the Playing Field.* [arXiv:2603.05565](https://arxiv.org/abs/2603.05565)
- Shen, J., & Tamkin, A. (2026). *How AI Impacts Skill Formation.* [arXiv:2601.20245](https://arxiv.org/abs/2601.20245) [cs.CY].
- Ganuthula, V. R. R., & Singh, M. K. (2026). *The Paradox of Augmentation: A Theoretical Model of AI-Induced Skill Atrophy.* Human Behavior and Emerging Technologies, 2026(1), art. 8303770. [doi:10.1155/hbe2/8303770](https://doi.org/10.1155/hbe2/8303770)
- Acemoglu, D. (2024). *The Simple Macroeconomics of AI.* Economic Policy. [NBER w32487](https://www.nber.org/papers/w32487)
- Garicano, L. (2000). *Hierarchies and the Organization of Knowledge in Production.* Journal of Political Economy, 108(5), 874–904. [doi:10.1086/317671](https://doi.org/10.1086/317671)

**Generative AI in economic research**

- Korinek, A. (2023). *Generative AI for Economic Research: Use Cases and Implications for Economists.* Journal of Economic Literature, 61(4), 1281–1317. [doi:10.1257/jel.20231736](https://doi.org/10.1257/jel.20231736)
- American Economic Association. *Recent Developments Series* (continuing education). https://www.aeaweb.org/cont_education/

**Tools**

- SymPy Development Team. *SymPy: Symbolic Mathematics in Python.* https://www.sympy.org

---

## X. COURSE SCHEDULE — TERM 2026-II

Sessions on **Wednesdays and Fridays** (2 hours each). First day of classes: **Monday, August 10, 2026**; last day of classes: **Saturday, November 21**. During midterm exam week (September 28 – October 3) the University suspends classes.

| Ses. | Date | Content | Assessment |
|---|---|---|---|
| | | ***Setup and working environment*** | |
| — | Wed Aug 12 | Course introduction. Git and GitHub; credentials | |
| — | Fri Aug 14 | Editor with LaTeX; AI agent CLI; verification with SymPy | |
| | | ***Papers presented by the instructor — each session opens with the reading check*** | |
| 1 | Wed Aug 19 | **Aouad–Lykouris–Zhong §2.** Prop. 2.1: concave maximum, interior vs. corner solution | Reading ck. |
| 2 | Fri Aug 21 | **ALZ §§3–5.** The three paradoxes, stated without proof | Reading ck. |
| 3 | Wed Aug 26 | **Agrawal–Gans–Goldfarb I.** Props. 1–2: first-order condition and envelope theorem | Reading ck. |
| 4 | Fri Aug 28 | **AGG II.** Prop. 3: variance algebra; the *conditional* U-shape | Reading ck. |
| 5 | Wed Sep 2 | **Jovanovic–Nyarko §IV.** Myopic paths; Normal–Normal in precisions | Reading ck. |
| 6 | Fri Sep 4 | **Quispe & Xu (2026).** From a model to a testable prediction | Reading ck. |
| 7 | Wed Sep 9 | **Acemoglu–Kong–Ozdaglar.** Cross-partials: complements vs. substitutes; knowledge collapse | Reading ck. |
| 8 | Fri Sep 11 | **Bastani & Cachon.** The contracting paradox: moral hazard, incentives and participation | Reading ck. |
| 9 | Wed Sep 16 | **Yin, Su & Li.** Sentinel auditing: how one answers a paper | Reading ck. |
| 10 | Fri Sep 18 | **Ide & Talamàs** (JPE 2025). Autonomy and capability; discrete-type version | Reading ck. |
| 11 | Wed Sep 23 | **Acemoglu & Restrepo (2018).** Continuum of tasks: displacement and reinstatement | Reading ck. |
| 12 | Fri Sep 25 | **Empirical session.** Brynjolfsson–Li–Raymond, Peng et al., METR, Dell'Acqua et al. | Reading ck. |
| — | Sep 28 – Oct 3 | *Midterm exam week — no classes* | |
| | | ***Topic presentations — four per session, 20 minutes each*** | |
| 13 | Wed Oct 7 | Topic presentations: students 1–4 | |
| 14 | Fri Oct 9 | Topic presentations: students 5–8 | |
| 15 | Wed Oct 14 | Topic presentations: students 9–12 | |
| 16 | Fri Oct 16 | Topic presentations: students 13–16 | **Topic pres.** |
| | | ***Workshop*** | |
| 17 | Wed Oct 21 | In-class work on the student's own project | |
| 18 | Fri Oct 23 | In-class work; assignment of final presentation slots | |
| | | ***Final presentations — two per session*** | |
| 19 | Wed Oct 28 | Presentations 1–2 | |
| 20 | Fri Oct 30 | Presentations 3–4 | |
| 21 | Wed Nov 4 | Presentations 5–6 | |
| 22 | Fri Nov 6 | Presentations 7–8 | |
| 23 | Wed Nov 11 | Presentations 9–10 | |
| 24 | Fri Nov 13 | Presentations 11–12 | |
| 25 | Wed Nov 18 | Presentations 13–14 | |
| 26 | Fri Nov 20 | Presentations 15–16 | **Final pres.** |
| — | Nov 23–29 | Close of term | **Final paper** |

### Official 2026-II academic calendar dates

- **Late registration and schedule changes:** Saturday, August 8.
- **Last day to drop without pending academic fees:** Saturday, August 22.
- **Midterm exams** (the course sits no exam; no classes that week): September 28 to October 3.
- **Teaching evaluation surveys:** November 2–15.
- **Last day to drop with pending academic fees, and last day of classes:** Saturday, November 21.
- **Final exams** (the course sits no exam; the final paper is submitted): November 23–29.
- **Release of final grades:** Friday, December 4, by 12:00.

**Holidays.** Battle of Angamos, Thursday, October 8: it does not affect Wednesday or Friday sessions. The remaining holidays in the term —Santa Rosa (August 30), regional and municipal elections (October 4), and All Saints' Day (November 1)— fall on a Sunday. **No session of this course coincides with a holiday.**

*Source: Calendario Académico Regular 2026, updated January 2026.*
