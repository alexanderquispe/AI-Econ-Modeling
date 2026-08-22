# Inteligencia Artificial y Modelamiento Económico

**Universidad del Pacífico · Facultad de Economía · Semestre 2026-II**
Profesor: **Alexander Quispe Rojas** · Sesiones: **miércoles y viernes**, virtual por Zoom

🌐 **[Sitio del curso](https://alexanderquispe.github.io/AI-Econ-Modeling/)** · 📄 **[Sílabo (PDF)](syllabus/es/Silabo_IA_Modelamiento_Economico_UP_2026.pdf)** · 📘 **[Guía de repositorios](syllabus/guia-del-repositorio.md)** · 📥 **[Papers](papers/)** · ✅ **[Tareas](https://github.com/alexanderquispe/AI-Econ-Modeling/issues)**

---

## De qué va el curso

Se leen artículos de teoría económica sobre la interacción humano–IA, se **rederiva** su resultado principal y se **extiende** relajando un supuesto. Los modelos de lenguaje se usan como **asistentes de demostración** —no como tema de estudio— y el estudiante conserva siempre la última palabra sobre lo que la máquina propone.

No hay examen parcial ni final escritos. Cada estudiante termina el semestre con una pieza propia: una extensión formal de un artículo del curso, o el modelo económico que sostiene su tesis.

**La secuencia está ordenada por dificultad matemática creciente**, no por mecanismo económico: cada sesión introduce exactamente la técnica que ese artículo necesita y ninguna exige una herramienta que no se haya usado antes.

## Fechas clave

| | |
|---|---|
| Inicio de clases | lunes **10 de agosto de 2026** |
| Artículos del profesor | **19 de agosto – 25 de setiembre** (sesiones 1–12) |
| Exámenes parciales (sin clases) | 28 de setiembre – 3 de octubre |
| Exposición del tema | **7 – 16 de octubre** (sesiones 13–16) |
| Taller | 21 y 23 de octubre (sesiones 17–18) |
| Presentaciones finales | **28 de octubre – 20 de noviembre** (sesiones 19–26) |
| Último día de clases | sábado **21 de noviembre** |
| Entrega del trabajo final | **23 – 29 de noviembre** |

> ⏰ **Los repositorios semanales vencen los martes a las 22:00.** Ningún feriado del semestre cae en miércoles o viernes.

## Cronograma

| # | Fecha | Tema | Evaluación |
|---|---|---|---|
| — | mié 12 ago | Introducción. Git y GitHub; credenciales | |
| — | vie 14 ago | Editor con LaTeX; CLI de agentes; SymPy | |
| 1 | mié 19 ago | Aouad–Lykouris–Zhong §2 — Prop. 2.1: máximo cóncavo, interior vs. esquina | Control lect. |
| 2 | vie 21 ago | ALZ §§3–5 — las tres paradojas, sin demostrar | Control lect. |
| 3 | mié 26 ago | **Agrawal–Gans–Goldfarb I** — Props. 1–2: CPO y teorema de la envolvente | Control lect. |
| 4 | vie 28 ago | AGG II — Prop. 3: álgebra de varianzas; la U condicional | Control lect. |
| 5 | mié 2 set | Jovanovic–Nyarko §IV — trayectorias miopes; Normal–Normal en precisiones | Control lect. |
| 6 | vie 4 set | Quispe & Xu (2026) — de un modelo a una predicción contrastable | Control lect. |
| 7 | mié 9 set | Acemoglu–Kong–Ozdaglar — derivadas cruzadas; colapso de conocimiento | Control lect. |
| 8 | vie 11 set | Bastani & Cachon — paradoja del contrato: riesgo moral | Control lect. |
| 9 | mié 16 set | Yin, Su & Li — auditoría con centinelas | Control lect. |
| 10 | vie 18 set | Ide & Talamàs (JPE 2025) — autonomía y capacidad | Control lect. |
| 11 | mié 23 set | Acemoglu & Restrepo (2018) — continuo de tareas | Control lect. |
| 12 | vie 25 set | Sesión empírica — Brynjolfsson, Peng, METR, Dell'Acqua | Control lect. |
| — | 28 set – 3 oct | *Exámenes parciales — sin clases* | |
| 13–16 | 7 – 16 oct | Exposición del tema · cuatro por sesión, 20 min c/u | Exp. tema |
| 17–18 | 21 y 23 oct | Taller sobre el proyecto propio | |
| 19–26 | 28 oct – 20 nov | Presentaciones finales · dos por sesión | Present. final |
| — | 23–29 nov | Cierre del semestre | Trabajo final |

## Evaluación

Los rubros usan la nomenclatura del sistema de notas de la Universidad.

| Rubro | Qué comprende | Peso |
|---|---|---|
| **Trabajo final** | Documento de 6–8 páginas más anexo manuscrito | 30 % |
| **Presentación final** | Exposición del trabajo, 28 oct – 20 nov | 30 % |
| **Promedio de trabajos** | Los seis repositorios semanales (20) y la exposición del tema (10) | 30 % |
| **Control de lectura** | Examen oral de 5 minutos por sorteo | 10 % |

## Cómo funciona la semana

1. **Viernes:** el profesor anuncia el artículo designado de la semana siguiente.
2. **Fin de semana y lunes:** se lee el artículo y se trabaja el repositorio.
3. **Martes 22:00:** vence el repositorio (rama → *pull request* → merge) y se registra su enlace.
4. **Miércoles y viernes:** cada sesión abre con el sorteo del control de lectura.

Cada artículo designado tiene **su propio repositorio nuevo** en GitHub, con `README.md`, `prompts.md`, una carpeta `mano/` con al menos una derivación fotografiada, y la presentación en Beamer. Todo el detalle está en la **[guía de repositorios](syllabus/guia-del-repositorio.md)**.

## Qué hay en este repositorio

```
├── docs/                  sitio del curso (GitHub Pages)
├── papers/                los 20 PDF de lectura + índice con enlaces + fetch.sh
├── syllabus/
│   ├── es/                sílabo en español (tex · md · pdf)
│   ├── en/                syllabus in English (tex · md · pdf)
│   ├── guia-del-repositorio.md
│   └── build.sh           recompila ambos PDF con Tectonic
└── README.md
```

Los PDF de los papers están en `.gitignore`: se descargan con `./papers/fetch.sh`, que salta los que ya existen. Cinco requieren descarga manual desde SSRN o Wiley; los enlaces están en [`papers/README.md`](papers/README.md).

---

## Notas de diseño del curso

Lo que sigue es el razonamiento detrás del temario, no material para estudiantes.

### El orden por dificultad, y por qué

Una auditoría de la bibliografía (verificación adversarial contra fuentes primarias) encontró que agrupar por mecanismo económico había producido dos defectos: un módulo cuyo paper no contiene ninguna proposición —y por tanto no admite la consigna de rederivar y extender— y el modelo formal más fácil de la lista programado diez semanas después de la sesión que enseñaba la herramienta que usa.

La escalera verificada es: ALZ Prop. 2.1 (caso interior vs. esquina, sin cálculo) → Agrawal–Gans–Goldfarb Props. 1–2 (CPO + envolvente + serie geométrica) → AGG Prop. 3 (álgebra de varianzas) → Jovanovic–Nyarko §IV y Quispe & Xu (Normal–Normal en precisiones) → Acemoglu–Kong–Ozdaglar (esa misma CPO dentro de una recursión de precisiones, más Topkis) → Bastani–Cachon (riesgo moral) → Ide–Talamàs y Acemoglu–Restrepo (asignación y continuo de tareas).

El orden coincide con un arco dialéctico —sustitución estática pesimista → complementariedad del juicio → frontera bayesiana → colapso de conocimiento → imposibilidad contractual → giro de signo por autonomía— así que no se sacrifica narrativa.

### Supuestos relajables, por artículo

El filtro real del curso: un artículo solo sirve si un estudiante puede relajar *un* supuesto y rederivar la proposición en pocas páginas.

| Artículo | Supuesto a relajar | Advertencia |
|---|---|---|
| **ALZ** | La **miopía** (agente a dos periodos), o complementariedad dentro de la primitiva `p(·)` | No asignar «costo lineal → convexo»: los autores ya lo hicieron en el Apéndice D |
| **Agrawal–Gans–Goldfarb** | Condiciones de curvatura que **firmen el signo** de `p(se*(1);1) − p(se*(0);0)` | La forma funcional del paper está justo sobre el filo de la igualdad |
| **Acemoglu–Kong–Ozdaglar** | Supuesto 1: `Δ_I = 0 → Δ_I > 0`. Ataca el Lema 2 y la Prop. 5 | Acotar al estado de colapso: el propio paper avisa que se rompe el argumento de convexidad |
| **Bastani–Cachon** | Pago contingente a resultado → auditoría aleatoria | Ya publicado (Yin–Su–Li, ICML 2026): sirve como ejercicio de auditar a la IA, no de descubrir |

### Erratas corregidas en la bibliografía

Cuatro citas del sílabo original estaban mal y se verificaron contra Crossref, NBER y arXiv:

- Agrawal–Gans–Goldfarb **no** se titula *Variance, Judgment, and the Value of AI Predictions* ni está en arXiv: es *The Economics of Bicycles for the Mind*, NBER WP 34034.
- «Ganuthula & Kumar» es en realidad **Ganuthula & Singh** (Kumar es nombre de pila).
- Ide & Talam**à**s (2025), publicado en *JPE* 133(12), no un WP de 2024.
- `arXiv:2605.25438` no se titula *Coding Beyond Your Training*: la versión vigente es **Quispe & Xu**, *Agentic Delegation and the Language Frontier of Software Developers*.

**Cinco de las lecturas centrales son preprints sin arbitraje**, en revisión activa. Se leen por estar en la frontera, y verificar el estatus editorial de lo que uno cita es parte explícita del oficio que el curso enseña.

## Referencias clave

- Aouad, A., Lykouris, T., & Zhong, H. (2026). *Human-AI Productivity Paradoxes.* [arXiv:2605.11350](https://arxiv.org/abs/2605.11350)
- Agrawal, A., Gans, J., & Goldfarb, A. (2025). *The Economics of Bicycles for the Mind.* [NBER w34034](https://doi.org/10.3386/w34034)
- Acemoglu, D., Kong, D., & Ozdaglar, A. (2026). *AI, Human Cognition and Knowledge Collapse.* [NBER w34910](https://doi.org/10.3386/w34910)
- Ide, E., & Talamàs, E. (2025). *Artificial Intelligence in the Knowledge Economy.* [JPE 133(12)](https://doi.org/10.1086/737233)
- Quispe, A., & Xu, K. (2026). *Agentic Delegation and the Language Frontier of Software Developers.* [arXiv:2605.25438](https://arxiv.org/abs/2605.25438)

## Licencia

[MIT](LICENSE)
