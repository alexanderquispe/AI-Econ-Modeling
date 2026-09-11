# Course Repository Guide

**Artificial Intelligence and Economic Modeling — UP 2026-II**

Each week of the paper block, the instructor **designates one paper**. You create **a new GitHub repository for each designated paper**, holding your analysis of it. Since there are six paper weeks, by the end of the term you will have **at least six repositories**.

When the draw calls on you, you present from that week's repository.

---

## 1. The four rules

| | |
|---|---|
| **One repository per designated paper** | Six minimum by the end of the term |
| **Deadline: Thursday 22:00** | The pull request must be merged before that hour |
| **Everyone posts their repo link** | As a comment on that week's issue, whether or not you are drawn |
| **Branch → PR → merge** | Nothing is written directly to `main` |

---

## 2. Why repositories and not a document

**Git timestamps what you do.** Every commit and every merge carries an hour. There is no need to chase deadlines: the history shows on its own whether you worked during the week or improvised after the draw.

**Your work accumulates and is visible.** By the end you will have six public repositories with six analyses and their extension ideas. The topic presentation will not start from a blank page: it will be a matter of picking the best of the ones you already have.

**This is how the work is actually done.** An economist doing research today versions their code, their text, and their data, and collaborates through pull requests. This is not an artificial course requirement: it is the craft.

---

## 3. The workflow: branch, PR, merge

This is the cycle we covered in the first sessions. **Nothing is written directly to `main`.**

> 📁 **There is a worked example:** [`ai-01-aouad`](https://github.com/alexanderquispe/ai-01-aouad), set up as a GitHub
> template. Press *Use this template* and you get the whole structure ready —
> then replace the content with your own. Note that it also contains material
> **above** the required floor; the four required files are the bar.

1. **Create the repository.** Name it `ai-NN-author`, where `NN` is the week number: `ai-01-aouad`, `ai-02-agrawal`, `ai-03-jovanovic`… Initialise it with a minimal `README.md` on `main`, or start from the template above.
2. **Create a branch** for your analysis: `git checkout -b analysis`.
3. **Work on it during the week**, with small, frequent commits. One commit per working session beats one giant commit at the end: the history tells the story of how you thought.
4. **Open the Pull Request** from `analysis` against `main`. In the PR description, write three lines on what you found.
5. **Merge the PR** before **Thursday 22:00**.

The merge time is what counts for the deadline, so do not leave it to the last minute. You only post the repository URL: the pull request need not be reported, but the workflow must still be followed.

---

## 4. What goes inside

```
ai-02-agrawal/
├── README.md            ← what the paper does and what you found
├── prompts.md           ← what you asked the LLM and what it answered, raw
├── hand/                ← photos of your handwritten derivation
├── extensions.md        ← what you would relax, what you would simulate
├── presentation.tex     ← the 5-minute Beamer deck
├── presentation.pdf     ← compiled
└── sim.py               ← optional: simulation or SymPy verification
```

### The minimum floor

Every repository must contain **at least four things**:

1. `README.md` — one page. What question the paper answers, what the agent's problem is, and the main result **with all its conditions**.
2. `prompts.md` — the prompts you used and the relevant answers, raw. Do not clean them up to look good: the value lies in seeing where the model got it wrong.
3. `hand/` — at least one photo (see section 6).
4. `presentation.tex` and `presentation.pdf` — the 5-minute Beamer deck, source and compiled. It has to be there even if you are not drawn that week.

That is the floor. **Everything above it is yours and counts in your favour.**

---

## 5. The free part: what to mine from a paper

This is where I want you to let go. There is no correct list. These are directions that tend to bear fruit, not a form to fill in:

- **Relax an assumption and see what breaks.** The classic. What if the cost is not linear? What if the agent is not myopic? What if AI is not equally reliable for everyone?
- **Add heterogeneity.** The model treats everyone alike: what changes with two types of agent?
- **Change the functional form** and see whether the result survives or depended on that particular form.
- **Simulate.** Code the model, move the parameters, plot it. Sometimes a simulation reveals that the main result only appears in a narrow parameter range — and that is already a finding.
- **Look for the limiting case.** What happens as a parameter goes to zero or to infinity? Does it still make economic sense?
- **Collide two papers.** Two papers on the course say opposite things about the same phenomenon. Which assumption separates them? There is often a whole project there.
- **Bring it to your thesis.** If your topic is different, ask yourself what this model would need in order to speak to your problem.

You do not have to solve anything. It is enough that the idea is stated precisely: which equation changes and what you expect to happen.

---

## 6. The handwritten derivation

**The rule is short: at least one photo per repository, in `hand/`.**

I am not asking you to derive the whole paper by hand. I am asking that there be **at least one place where you did not believe the machine and checked it yourself**. That is the entire point.

Choose to write out by hand:

- the step the LLM got wrong, or
- the step you did not understand until you did it yourself, or
- the step that looked too easy to be true.

**A phone photo, crooked and with crossings-out, is perfect.** No scanning, no writing it out neatly, no transcribing to LaTeX. The handwriting is the evidence that it went through your head; neatness adds nothing.

In the `README.md`, write one line saying what the photo shows:

> `hand/foc.jpg` — the FOC of Prop. 2. GPT jumped from step 3 to step 5 and I wanted to check that the derivative of the variance term came out as it claimed.

---

## 7. Prompts to get started

Starting points, not a script. They all aim at the same thing: **getting answers you can verify**. An answer that cannot be checked is worth nothing.

### To understand the model

> Rewrite this paper's agent problem as an optimisation problem: objective function, choice variable, parameters, and constraints. Do not explain anything, just write it.

> List every assumption the paper needs for its Proposition X. Separate the technical ones — there to make the mathematics work — from the substantive ones, the ones that claim something about the world.

### To attack the model

> What is the strongest assumption in this model? If I relax it, which proposition breaks first, and why?

> Propose three extensions ordered from easiest to hardest. For each one, tell me exactly which equation changes.

> The authors already relaxed some assumptions in the appendices. Which ones? Which assumption is left unrelaxed anywhere in the paper?

**Watch out for that last one.** It is the most common trap: the LLM will confidently propose an "extension" the authors already carried out in an appendix. If you do not check, you will present as a new idea something that sits on page 40 of the same paper.

### To verify

> Derive the first-order condition step by step. At each step, tell me which differentiation rule you used.

> Here is my handwritten derivation [photo or transcription]. Find the error. If there is no error, say so.

> Give me a numerical counterexample where this proposition fails. If none exists, explain why it cannot.

### To simulate

> Write SymPy code that symbolically verifies Proposition X. If it cannot be solved symbolically, run a Monte Carlo check and plot the result.

---

## 8. Posting your link

**Whether or not you are drawn, everyone posts the link every week.** Not in a
spreadsheet — as a **comment on that week's issue** in the course repository:

> github.com/alexanderquispe/AI-Econ-Modeling/issues

One comment, with the repository URL. That is all:

```
https://github.com/my-user/ai-02-agrawal
```

You do not need to report the pull request. You do not need to write anything
else. If you want to add a line about what you found, go ahead — it is read.

**Why a comment and not a spreadsheet.** GitHub stamps every comment with the
minute it was posted, so the comment *is* the submission record: there is no
argument to be had about whether something arrived before Thursday 22:00. It also
means the register sits next to the assignment instead of in a separate file, and
that you can see what your classmates built.

Posting the link is part of the submission: a repository that exists but was never
posted counts as not submitted.

## 9. How this feeds your grade

Your weekly work counts in two categories of the grading system. The **repositories** are 20 of the 30 points of *Coursework average* and all six are assessed, whether or not you are drawn. The **oral exam** is the *Reading check* category, worth 10 %, and applies only when the draw calls on you.

Classes are online over Zoom: when it is your turn, you share your screen and present your Beamer deck, which already lives inside that week's repository.

**If that week's repository is not merged and registered by the Thursday deadline, the oral is zero**, however well you speak. Since you do not know which week you will be called, the only strategy is to keep up with all of them.

What sits above the minimum floor — the extensions you came up with, the simulations, the dead ends you explored — is what separates a 3-point oral from a 4-point one.

---

## 10. Setup

Make your repositories **public** if you are comfortable with that; they are a good first set of artefacts to show. If you prefer them private, give the instructor read access.

If anything in the environment does not work — Git, credentials, branches, pull requests, LaTeX, SymPy — ask **before** the paper block starts, not in the week you are called to present.
