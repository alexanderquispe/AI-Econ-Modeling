# Guía de los repositorios del curso

**Inteligencia Artificial y Modelamiento Económico — UP 2026-II**

Cada semana del tramo de artículos, el profesor **designa un artículo**. Tú creas
**un repositorio nuevo en GitHub por cada artículo designado**, con tu análisis
de ese paper. Como son seis semanas de artículos, al terminar el semestre
tendrás **al menos seis repositorios**.

Cuando el sorteo te llame a exponer, expones desde el repositorio de esa semana.

---

## 1. Las cuatro reglas

| | |
|---|---|
| **Un repositorio por artículo designado** | Seis como mínimo al final del semestre |
| **Plazo: martes a las 22:00** | El *pull request* debe estar fusionado antes de esa hora |
| **Todos registran el enlace del repo** | En el Excel compartido, te llamen o no al sorteo |
| **Flujo de rama → PR → merge** | Nada se escribe directo en `main` |

---

## 2. Por qué repositorios y no un documento

**Git fecha lo que haces.** Cada commit y cada fusión llevan hora. No hay que
perseguir plazos: el historial muestra por sí solo si trabajaste durante la
semana o si improvisaste después del sorteo.

**Tu trabajo se acumula y es visible.** Al terminar tendrás seis repositorios
públicos con seis análisis y sus ideas de extensión. La exposición del tema no será
una hoja en blanco: será elegir la mejor de las que ya tienes.

**Es como se trabaja de verdad.** Un economista que investiga hoy versiona su
código, su texto y sus datos, y colabora por *pull requests*. Esto no es un
requisito artificial del curso: es el oficio.

---

## 3. El flujo de trabajo: rama, PR, merge

Es el ciclo que vimos en las primeras clases. **No se escribe directo en `main`.**

1. **Crea el repositorio.** Nómbralo `ia-NN-apellido-autor`, donde `NN` es el
   número de semana: `ia-01-aouad`, `ia-02-agrawal`, `ia-03-jovanovic`…
   Inicialízalo con un `README.md` mínimo en `main`.
2. **Crea una rama** para tu análisis: `git checkout -b analisis`.
3. **Trabaja ahí durante la semana**, con commits pequeños y frecuentes. Un
   commit por sesión de trabajo es mejor que uno gigante al final: el historial
   cuenta la historia de cómo pensaste.
4. **Abre el Pull Request** de `analisis` contra `main`. En la descripción del PR
   escribe en tres líneas qué encontraste.
5. **Fusiona el PR** antes del **martes 22:00**.

La hora de fusión es lo que se mira para el plazo, así que no dejes el merge para
el último minuto. En el Excel solo registras la URL del repositorio: el *pull
request* no hay que reportarlo, pero el flujo sí hay que seguirlo.

---

## 4. Qué va dentro

```
ia-01-aouad/
├── README.md          ← qué hace el paper y qué encontraste
├── prompts.md         ← lo que le preguntaste al LLM y qué respondió, en crudo
├── mano/              ← fotos de tu derivación a mano
├── extensiones.md     ← qué relajarías, qué simularías
├── presentacion.tex   ← el Beamer de 5 minutos
├── presentacion.pdf   ← compilado
└── sim.py             ← opcional: simulación o verificación con SymPy
```

### El piso mínimo

Cada repositorio debe tener **al menos cuatro cosas**:

1. `README.md` — una página. Qué pregunta responde el artículo, cuál es el
   problema del agente, cuál es el resultado principal **con sus condiciones**.
2. `prompts.md` — los prompts que usaste y las respuestas relevantes, en crudo.
   No las edites para que se vean bien: el valor está en ver dónde el modelo se
   equivocó.
3. `mano/` — al menos una foto (ver la sección 6).
4. `presentacion.tex` y `presentacion.pdf` — el Beamer de 5 minutos, con fuente
   y compilado. Aunque no te sorteen esa semana, tiene que estar.

Eso es el piso. **Todo lo que hagas por encima es tuyo y cuenta a favor.**

---

## 5. La parte libre: qué explotar de un artículo

Aquí quiero que se suelten. No hay una lista correcta. Estas son direcciones que
suelen dar fruto, no un formulario que llenar:

- **Relajar un supuesto y ver qué se rompe.** El clásico. ¿Qué pasa si el costo
  no es lineal? ¿Si el agente no es miope? ¿Si la IA no es igual de confiable
  para todos?
- **Meter heterogeneidad.** El modelo trata a todos igual: ¿qué cambia si hay
  dos tipos de agente?
- **Cambiar la forma funcional** y ver si el resultado sobrevive o dependía de
  esa forma en particular.
- **Simular.** Programa el modelo, muévele los parámetros y grafica. A veces una
  simulación revela que el resultado principal solo aparece en un rango estrecho
  de parámetros —y eso ya es un hallazgo.
- **Buscar el caso límite.** ¿Qué pasa cuando un parámetro tiende a cero o a
  infinito? ¿Sigue teniendo sentido económico?
- **Chocar dos artículos.** Dos papers del curso dicen cosas opuestas sobre lo
  mismo. ¿Qué supuesto los separa? Ahí suele haber un trabajo entero.
- **Traerlo a tu tesis.** Si tu tema es otro, pregúntate qué habría que cambiarle
  a este modelo para que hable de tu problema.

No tienes que resolver nada. Basta con que la idea esté planteada con precisión:
qué ecuación cambia y qué esperas que pase.

---

## 6. La derivación a mano

**La regla es corta: al menos una foto por repositorio, en `mano/`.**

No te pido que derives todo el artículo a mano. Te pido que haya **al menos un
lugar donde no le creíste a la máquina y lo comprobaste tú**. Ese es el punto
entero.

Elige para escribir a mano:

- el paso que el LLM hizo mal, o
- el paso que no entendiste hasta que lo hiciste tú, o
- el paso que te pareció demasiado fácil como para ser cierto.

**Foto del celular, torcida y con borrones: perfecto.** No hay que escanear,
pasar en limpio ni transcribir a LaTeX. La letra manuscrita es la prueba de que
pasó por tu cabeza; la prolijidad no aporta nada.

En el `README.md` escribe una línea diciendo qué muestra la foto:

> `mano/foc.jpg` — la CPO de la Prop. 2. GPT saltó del paso 3 al 5 y quería
> comprobar que la derivada del término de varianza salía como decía.

---

## 7. Prompts para empezar

Puntos de partida, no un guion. El objetivo de todos es el mismo: **obtener
respuestas que puedas verificar**. Una respuesta que no se puede comprobar no
sirve para nada.

### Para entender el modelo

> Reescribe el problema del agente de este paper como un problema de
> optimización: función objetivo, variable de elección, parámetros y
> restricciones. No expliques nada, solo escríbelo.

> Enumera todos los supuestos que el paper necesita para su Proposición X.
> Separa los que son técnicos —están ahí para que la matemática funcione— de los
> que son sustantivos, es decir, los que afirman algo sobre el mundo.

### Para atacar el modelo

> ¿Cuál es el supuesto más fuerte de este modelo? Si lo relajo, ¿qué proposición
> se rompe primero y por qué?

> Propón tres extensiones ordenadas de más fácil a más difícil. Para cada una
> dime exactamente qué ecuación cambia.

> Los autores ya relajaron algunos supuestos en los apéndices. ¿Cuáles? ¿Qué
> supuesto queda sin relajar en todo el paper?

**Ojo con este último.** Es la trampa más común: el LLM te va a proponer con
mucha seguridad una "extensión" que los autores ya hicieron en el apéndice. Si
no revisas, vas a proponer como idea nueva algo que está en la página 40 del
mismo paper.

### Para verificar

> Deriva la condición de primer orden paso a paso. En cada paso dime qué regla
> de derivación usaste.

> Aquí está mi derivación a mano [foto o transcripción]. Encuentra el error. Si
> no hay error, dilo.

> Dame un contraejemplo numérico donde esta proposición falle. Si no existe,
> explica por qué no puede existir.

### Para simular

> Escribe código en SymPy que verifique simbólicamente la Proposición X. Si no
> se puede resolver simbólicamente, haz una verificación Monte Carlo y grafica
> el resultado.

---

## 7-bis. El Beamer de 5 minutos

La presentación **vive dentro del repositorio**, con su fuente `.tex` y su PDF, y
expone lo que ese repositorio contiene y lo que lograste con él. Portada con el
enlace al repositorio, más cuatro diapositivas:

1. **El artículo.** Qué pregunta responde, cuál es el único mecanismo económico
   que formaliza, y el problema del agente escrito: qué se maximiza, sobre qué
   variable, bajo qué restricciones.
2. **El resultado principal.** El enunciado exacto de la proposición, con todas
   sus condiciones, y debajo la intuición en una oración.
3. **Lo que hice.** Qué exploraste: qué supuestos consideraste relajar, qué
   extensiones planteaste, qué simulaste y qué salió. Los callejones sin salida
   también cuentan si explicas por qué no llevaban a ninguna parte.
4. **Dónde no le creí a la IA.** El paso que verificaste a mano —con la foto en
   pantalla—, qué había respondido el modelo y tu veredicto: correcto,
   incorrecto o no verificable, con la razón.

Sin animaciones. Sin capturas de pantalla del artículo: las ecuaciones se
escriben en LaTeX.

---

## 8. El registro en el Excel

**Te llamen o no al sorteo, todas y todos registran el enlace cada semana.** El
Excel compartido tiene una fila por estudiante y semana:

| Columna | Qué va |
|---|---|
| Nombre | El tuyo |
| Semana | 1 a 6 |
| Artículo designado | El que anunció el profesor |
| URL del repositorio | `https://github.com/usuario/ia-01-aouad` |

Registrar el enlace es parte de la entrega: un repositorio que existe pero no
está en el Excel cuenta como no entregado.

---

## 9. Cómo se conecta con la nota

Tu trabajo semanal pesa en dos rubros del sistema de notas. Los **repositorios**
son 20 de los 30 puntos de *Promedio de trabajos* y se evalúan los seis, te
sorteen o no. El **examen oral** es el rubro *Control de lectura*, vale 10 % y se
aplica solo cuando el sorteo te toca.

Las clases son virtuales por Zoom: cuando te toque, compartes pantalla y expones
tu Beamer, que ya vive dentro del repositorio de esa semana.

**Si el repositorio de esa semana no está entregado y registrado al cierre del
martes, el oral es cero**, por bien que hables. Como no sabes qué semana te toca,
la única estrategia es cumplir todas.

Lo que hay por encima del piso mínimo —las extensiones que se te ocurrieron, las
simulaciones, los callejones sin salida que exploraste— es lo que distingue un
oral de 3 puntos de uno de 4.

---

## 10. Configuración

Haz tus repositorios **públicos** si no te incomoda; son un buen primer conjunto
de artefactos para mostrar. Si prefieres tenerlos privados, dale acceso de
lectura al profesor.

Si algo del entorno no te funciona —Git, credenciales, ramas, *pull requests*,
LaTeX, SymPy— pregúntalo **antes** de que empiece el tramo de artículos, no en la
semana en que te toque exponer.
