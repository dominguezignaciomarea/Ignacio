# Retomar el trabajo — UTE AMBIENTE

Este archivo existe para que una sesión nueva de Claude Code pueda continuar sin depender del historial de chat.

## Qué decir al arrancar una sesión nueva

> Leé `RETOMAR_AQUI.md` y seguí desde donde quedó.

## Contexto permanente (leer siempre)

- **`UTE_AMBIENTE_guia_de_estilo.md`** — identidad visual completa de UTE AMBIENTE: logo, paleta, tipografías, tono, recursos gráficos, formatos habituales, IDs de diseños de referencia en Canva.

## Reglas fijas del usuario (no romper)

1. La información nueva **amplía** la anterior, nunca la reemplaza.
2. Todo archivo de Canva de UTE AMBIENTE va dentro de la carpeta **AMBIENTE** (`FAFG4tqJkw8`). *(Excepción: la presentación docente — el usuario dijo que no necesita carpeta específica.)*
3. Todo lo que se averigua o se acuerda se guarda por escrito en este repo y se commitea.
4. En tareas por fases, **pausar y esperar confirmación del usuario al final de cada fase**.

---

## Proyecto B — Carrusel Instagram "La crisis del reciclado en CABA"

**Estado: a medias.** Ver **`UTE_AMBIENTE_carrusel_crisis_reciclado_TODO.md`** — tiene el guion de texto de las 7 placas ya aprobado por el usuario, el estado de cada pieza, los design IDs y los pasos exactos para retomar.

Pendiente: terminar las placas que faltan, y conseguir del usuario las fotos reales (links públicos de Google Drive en formato `https://lh3.googleusercontent.com/d/<FILE_ID>`).

---

## Proyecto C — Presentación docente de 16 diapositivas

**Estado: TERMINADA.** Las 16 placas están construidas y guardadas. Ver **`UTE_AMBIENTE_presentacion_docente_SPEC.md`** — contiene la especificación completa placa por placa, el sistema de diseño, las 7 respuestas del usuario, el checklist final con su estado y las notas técnicas del conector.

Diseño único de la presentación: **`DAHRchioh8E`** — https://www.canva.com/d/veSh8Usz6yGanXt
"UTE AMBIENTE — Tecnología, Diseño y Programación + Educación Ambiental (charla docente, 16 placas)".

**Quedan dos cosas en manos del usuario:**

1. **Tipografía.** El conector de Canva no permite fijar la familia tipográfica, así que las 16 placas quedaron con la fuente por defecto de Canva. Red Hat Display Black / Poppins hay que aplicarlas a mano.
2. **Las 4 fotos** de las placas 1, 11, 12 y 13. Cada una tiene un marco con la indicación escrita de qué imagen va; el usuario las coloca a mano, como acordó en la respuesta 5.

---

## Advertencia sobre el conector de Canva

Si las herramientas `mcp__Canva__*` no aparecen en la sesión, **reconectar Canva no alcanza**: el listado de herramientas MCP se congela al iniciar la sesión. Hay que reconectar y después **abrir una sesión nueva**.

Comprobación rápida: buscar `mcp__Canva__get-design`. Si devuelve "No matching deferred tools found", las herramientas no están cargadas.
