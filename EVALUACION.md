# Cómo se evaluaron los repositorios y las exposiciones

**Inteligencia Artificial y Modelamiento Económico — UP 2026-II** · repositorios 2–6 y control de lectura

Este documento explica la rúbrica, las reglas de plazo y las penalizaciones, y **dónde se perdieron
más puntos** en el grupo. Las notas están en [NOTAS.md](NOTAS.md).

---

## 1. Rúbrica de cada repositorio (0–20)

Cada repositorio se calificó sobre lo que estaba en `main` al cierre (hora de Lima), con la
tolerancia y las reglas de la sección 2.

| Bloque | Pts | Qué se pedía para el puntaje completo |
|---|---|---|
| **A1. Registro** | 1 | Repo `ai-NN-autor`, accesible, con el link publicado en el issue correcto |
| **A2. Flujo de trabajo** | 2 | Rama → PR → merge a tiempo, trabajo en al menos dos sesiones (días distintos) y una descripción del PR que diga qué encontraste |
| **B1. README: pregunta y problema** | 2 | El problema del agente escrito formalmente (qué se maximiza, sobre qué variable, con qué restricciones) y la cita correcta, con la versión del paper que leíste |
| **B2. README: resultado** | 2 | El resultado principal con **todas** sus condiciones, más una línea que diga qué muestra la foto de `hand/`. Una condición omitida ya impide el puntaje completo |
| **C1. `prompts.md`** | 1 | Prompts **y respuestas en crudo** (no un resumen escrito después), con al menos un punto donde contrastas al modelo con el paper |
| **C2. La trampa de la semana** | 3 | Identificada, verificada contra el paper (proposición y página) y resuelta con sus condiciones |
| **D. Derivación a mano** | 3 | Foto manuscrita de un paso **no trivial**, correcta, con un **veredicto razonado sobre la IA** (correcta, incorrecta o no verificable, y por qué) |
| **E. Presentación** | 3 | `.tex` y `.pdf`, link del repo en la portada y la estructura exigida (desde R3, con la diapositiva Lean) |
| **F. Lean (R3–R6)** | 2 | La carpeta `lean/` completa tal como la genera el flujo, el resultado del `check --fast` registrado y los bloqueos explicados. En R2, que no pedía Lean, este criterio fue una verificación adicional (SymPy, simulación o el desliz del paper) |
| **G. Por encima del piso** | 1 | Una extensión, caso límite o simulación **propia**, planteada con precisión: qué ecuación cambia y qué esperas |

## 2. Plazos y penalizaciones

- **Tolerancia de 2 horas.** Lo registrado y fusionado hasta 2 horas después del cierre (hasta las 00:00 de Lima) se aceptó como entregado a tiempo.
- **Atrasos mayores:** hasta 24 horas, −4; de 1 a 7 días, nota máxima 8; más de 7 días, 0.
- **Trabajo en ramas sin fusionar:** se aceptó y se calificó, con **−3** sobre el total. Si aceptar la rama no mejoraba la nota de `main`, se conservó la de `main`.
- **Contenido de la plantilla** `ai-01-aouad` sin reemplazar en un archivo exigido: ese criterio en 0 y −1.
- **Afirmaciones atribuidas al paper que no están en él** (una "alucinación" no detectada): −1 por caso, con un máximo de −2, si no se había castigado ya en B o C.
- **Lean** se exigió desde el repositorio 3. El repositorio 2 no lo pedía.
- **Link no publicado.** Un repo que existe pero cuyo link nunca se publicó cuenta, en principio, como no entregado. Se hizo una excepción cuando el trabajo estaba en GitHub a tiempo; en ese caso se calificó con la penalización por rama.

## 3. Control de lectura (exposiciones)

- **Exposición corta** (26 de agosto, repo 2, 5–10 min). Cuatro partes, 5 puntos cada una: el paper y el problema del agente; el resultado con todas sus condiciones; qué hice; dónde no le creí a la IA.
- **Exposición de 20 minutos** (desde el 4 de septiembre). Paper y problema (3), resultado con todas sus condiciones (5), qué hice (4), diapositiva Lean (3) y dónde no le creí a la IA (5).
- Como dice el sílabo, **un veredicto sin razón no puntúa**. Quien no expuso tiene 0.
- **Ajustes:** +5 a quienes expusieron el 26 de agosto con menos tiempo, y una curva de +3 para todos, salvo quienes tienen 0.

## 4. Curva de los repositorios

+2 puntos sobre el promedio de los repositorios 2–6, para todos salvo quienes tienen promedio 0.

---

## 5. Dónde se perdieron más puntos

Promedio del grupo por criterio, sobre 53 repositorios calificados:

| Criterio | Puntaje promedio | Entregas con el máximo |
|---|---|---|
| A1. Registro | 94 % | 50 de 53 |
| B1. Pregunta y problema | 80 % | 33 |
| C2. La trampa | 80 % | 23 |
| B2. Resultado con condiciones | 69 % | 22 |
| D. Derivación a mano | 69 % | 19 |
| F. Lean / verificación | 63 % | 23 |
| G. Por encima del piso | 62 % | 33 |
| E. Presentación | 60 % | 14 |
| A2. Flujo de trabajo | 56 % | 12 |
| **C1. `prompts.md` en crudo** | **47 %** | **25 (28 en cero)** |

### Los errores más frecuentes

1. **`prompts.md` no era crudo.** Fue la mayor fuente de puntos perdidos. Se encontraron resúmenes escritos después, "reconstrucciones", marcadores como "PEGAR AQUÍ" sin llenar, conversaciones borradas o editadas, y en varios casos el archivo de la plantilla sin cambiar. Lo que se pide es la conversación **tal como ocurrió**, incluidos los errores del modelo: ahí está el valor del ejercicio.
2. **El flujo de PR.** Hubo PRs sin descripción o que solo listaban archivos, todo el trabajo hecho en una sola sesión, subidas directas a `main` ("Add files via upload") y merges después del plazo. La descripción del PR debe decir en tres líneas qué encontraste.
3. **Presentaciones incompletas.** A varias les faltaba el link del repo en la portada (o decía `YOUR-USER`), la foto de la derivación en pantalla, la diapositiva de "dónde no le creí a la IA" o, desde R3, la diapositiva Lean con el resultado del build. En algunos casos el `.pdf` no se había compilado desde el `.tex`.
4. **Condiciones incompletas.** El resultado principal aparecía sin alguna de sus condiciones: el dominio (por ejemplo, X > 0), un supuesto (Δ_I = 0), la desigualdad de heterogeneidad, la continuidad de F o una de las partes de la proposición. Una condición omitida ya impide el puntaje completo en B2.
5. **Derivaciones "a mano" dictadas por la IA.** Varias fotos transcribían una guía que la IA había preparado "para copiar", o mostraban un paso trivial sin veredicto. El objetivo de `hand/` es verificar **por tu cuenta** un paso en el que no le creíste a la máquina y decir si tenía razón, y por qué.
6. **Lean fuera del flujo.** Hubo carpetas `lean/` podadas o editadas después de copiarlas, `check --fast` sin registrar, proyectos armados a mano fuera de AppliedModelingLib y afirmaciones de verificación "exacta" cuando se habían añadido supuestos. Un resultado parcial es válido si se explica el bloqueo con precisión.
7. **Registro y plazos.** Hubo links publicados en el issue equivocado o nunca publicados, trabajo que quedó en ramas sin fusionar y entregas fuera de plazo. Revisa siempre que el PR esté fusionado en `main` y que el link esté en el issue de esa semana.
8. **Archivos que no deben publicarse.** Algunos subieron el PDF del paper, su texto completo (`source.txt`) o trazas privadas del agente. Respeten el `.gitignore` generado y no usen `git add -f`.

### Lo que salió bien

La mayoría resolvió bien la trampa de la semana (C2: 80 %) y escribió el problema del agente de
forma correcta (B1: 80 %). Hubo extensiones propias muy buenas: casos límite, simulaciones,
formalizaciones en Lean y contraejemplos a los enunciados de los papers, incluido el mío.
