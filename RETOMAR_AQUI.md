# Retomar el trabajo — UTE AMBIENTE

Este archivo existe para que una sesión nueva de Claude Code pueda continuar sin depender del historial de chat.

## Qué decir al arrancar una sesión nueva

> Leé `RETOMAR_AQUI.md` y seguí desde donde quedó.

## Contexto permanente (leer siempre)

- **`UTE_AMBIENTE_guia_de_estilo.md`** — identidad visual completa de UTE AMBIENTE: logo, paleta, tipografías, tono, recursos gráficos, formatos habituales, IDs de diseños de referencia en Canva.
- **`GUIA_USO_CLAUDE_CODE.md`** — qué puede y qué no puede hacer Claude Code en estas tareas, recomendaciones para ahorrar tiempo y observaciones de rigor pendientes sobre el material.

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

**Estado: no iniciada.** Ver **`UTE_AMBIENTE_presentacion_docente_SPEC.md`** — contiene la especificación completa placa por placa (texto en pantalla + notas del orador), el sistema de diseño, las 7 respuestas ya dadas por el usuario, y el checklist final.

**Próximo paso concreto: Fase 0.** Crear una única diapositiva de prueba (Placa 1 — Portada) en 16:9, mostrarla y esperar aprobación antes de seguir.

---

## Proyecto D — Estéticas UTE AMBIENTE, BRÚJULA y Mariano Acosta

**Estado: Fase 1 hecha en primera pasada (2026-10-01). Prioridad principal del usuario.** Ver **`PLAN_ESTETICAS_Y_DISENO.md`** (sección "Avance") y las guías `BRUJULA_guia_de_estilo.md`, `MARIANO_ACOSTA_guia_de_estilo.md` y `UTE_AMBIENTE_guia_de_estilo.md`. Otros archivos de contexto: `GUIA_USO_CLAUDE_CODE.md`, `UTE_AMBIENTE_brand_check_carrusel_reciclado.md`.

---

## Advertencia sobre el conector de Canva

Si las herramientas `mcp__Canva__*` no aparecen en la sesión, **reconectar Canva no alcanza**: el listado de herramientas MCP se congela al iniciar la sesión. Hay que reconectar y después **abrir una sesión nueva**.

Comprobación rápida: buscar `mcp__Canva__get-design`. Si devuelve "No matching deferred tools found", las herramientas no están cargadas.

---

## Actualización de reglas (2026-10-01, pedido del usuario)
- Para el Proyecto D el usuario pidió **trabajar de forma autónoma**: avanzar entre fases y guardar sin pedir confirmación, mostrando vistas previas y un resumen al final. Esto amplía la regla 4 (pausar por fase) para este proyecto.
- Sigue vigente: **consultar antes de borrar diseños**; no inventar datos y marcar lo no verificado.

## Permisos (2026-10-01)
- Con autorización explícita del usuario se actualizó `.claude/settings.json`: se **agregaron** los nombres actuales de las herramientas de Canva (`read-design`, `edit-design`, `export-design`, etc.) y `WebSearch`/`WebFetch` para verificar fuentes. Los nombres viejos se conservaron.
- Siguen sujetos a consulta: borrar diseños (regla del usuario).
