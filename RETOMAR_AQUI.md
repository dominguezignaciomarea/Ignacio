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

**Estado: no iniciada.** Ver **`UTE_AMBIENTE_presentacion_docente_SPEC.md`** — contiene la especificación completa placa por placa (texto en pantalla + notas del orador), el sistema de diseño, las 7 respuestas ya dadas por el usuario, y el checklist final.

**Próximo paso concreto: Fase 0.** Crear una única diapositiva de prueba (Placa 1 — Portada) en 16:9, mostrarla y esperar aprobación antes de seguir.

---

## Advertencia sobre el conector de Canva

Si las herramientas `mcp__Canva__*` no aparecen en la sesión, **reconectar Canva no alcanza**: el listado de herramientas MCP se congela al iniciar la sesión. Hay que reconectar y después **abrir una sesión nueva**.

Comprobación rápida: buscar `mcp__Canva__get-design`. Si devuelve "No matching deferred tools found", las herramientas no están cargadas.
