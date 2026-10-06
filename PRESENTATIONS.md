# Presentation schedule

Who presents, when. **One draw fixes both rounds**: the order in which you present
your topic is the order in which you present your final work. The draw was random
and is reproducible — see [How the order was drawn](#how-the-order-was-drawn).

All sessions run **07:30–09:20** on Zoom, Wednesdays and Fridays.
Times below include the slot's question period; be ready five minutes early.

### Topic presentation · 20 minutes each

| Session | Date | Time | Presenter |
|---|---|---|---|
| 13 | Wed Oct 7 | 07:30–07:50 | Alvaro Marcelo Chávez Unyen |
| 13 | Wed Oct 7 | 07:55–08:15 | Sofía Belén Vásquez García |
| 13 | Wed Oct 7 | 08:20–08:40 | Alejandro Leone Ventura Meza |
| 13 | Wed Oct 7 | 08:45–09:05 | Manuel Alfredo Arriola Montenegro |
| 14 | Fri Oct 9 | 07:30–07:50 | Dafne Andrea Mamani Vila |
| 14 | Fri Oct 9 | 07:55–08:15 | David Julio Olano Silva Nevado |
| 14 | Fri Oct 9 | 08:20–08:40 | William Brandon Grados Taco |
| 15 | Wed Oct 14 | 07:30–07:50 | Isis Milagros Roque Tinta |
| 15 | Wed Oct 14 | 07:55–08:15 | Gabriel Andreas Saco Alvarado |
| 15 | Wed Oct 14 | 08:20–08:40 | Fabián Matías Galarza Chumbe |
| 16 | Fri Oct 16 | 07:30–07:50 | John Svante Barraza Ratachi |
| 16 | Fri Oct 16 | 07:55–08:15 | Carlos Junior Gómez Puicán |
| 16 | Fri Oct 16 | 08:20–08:40 | Yanira Maritza Espinoza Huallpa |

### Final presentation · two per session

| Session | Date | Time | Presenter |
|---|---|---|---|
| 19 | Wed Oct 28 | 07:30–08:15 | Alvaro Marcelo Chávez Unyen |
| 19 | Wed Oct 28 | 08:20–09:05 | Sofía Belén Vásquez García |
| 20 | Fri Oct 30 | 07:30–08:15 | Alejandro Leone Ventura Meza |
| 20 | Fri Oct 30 | 08:20–09:05 | Manuel Alfredo Arriola Montenegro |
| 21 | Wed Nov 4 | 07:30–08:15 | Dafne Andrea Mamani Vila |
| 21 | Wed Nov 4 | 08:20–09:05 | David Julio Olano Silva Nevado |
| 22 | Fri Nov 6 | 07:30–08:15 | William Brandon Grados Taco |
| 22 | Fri Nov 6 | 08:20–09:05 | Isis Milagros Roque Tinta |
| 23 | Wed Nov 11 | 07:30–08:15 | Gabriel Andreas Saco Alvarado |
| 23 | Wed Nov 11 | 08:20–09:05 | Fabián Matías Galarza Chumbe |
| 24 | Fri Nov 13 | 07:30–08:15 | John Svante Barraza Ratachi |
| 24 | Fri Nov 13 | 08:20–09:05 | Carlos Junior Gómez Puicán |
| 25 | Wed Nov 18 | 07:30–08:15 | Yanira Maritza Espinoza Huallpa |
| 26 | Fri Nov 20 | — | *free — reserved for make-ups* |

What must be merged before each presentation is in the [project issue](https://github.com/alexanderquispe/AI-Econ-Modeling/issues/7):
the topic document (2–4 pages) and the slides are due at **22:00 the evening
before your slot**, and the final paper on Thursday, November 26, 22:00.

## How the order was drawn

A single shuffle, seed `20261007`, over the 13 enrolled students. Anyone can
reproduce it:

```bash
./scripts/orden-presentaciones.sh 20261007
```

The script reads a local roster that is **not** in this repository — the enrolment
list is your personal data and a public repo is no place for it. Publishing the
seed is what makes the draw checkable without publishing the list.

## Where this comes from

Dates follow the [course schedule](README.md#schedule): topic presentations in
sessions 13–16 (Oct 7–16) and final presentations in sessions 19–26
(Oct 28 – Nov 20). Weights and expectations are in the
[syllabus](syllabus/README.md).
