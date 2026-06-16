# Carrusel "La crisis del reciclado en CABA" — Estado y pasos pendientes

## Contexto
Carrusel de Instagram para UTE AMBIENTE sobre la crisis del reciclado en la Ciudad de Buenos Aires (puntos verdes, cierre de cooperativas, dichos de Jorge Macri, pérdida de empleo, valor de cartoneros/as). Fuente: reel de la periodista Agustina Grasso. Todos los archivos deben quedar dentro de la carpeta "AMBIENTE" en Canva (ID `FAFG4tqJkw8`).

## Bloqueo técnico activo
La herramienta `mcp__Canva__perform-editing-operations` (y también `cancel-editing-transaction`) está devolviendo el error:
```
Streamable HTTP error: Error POSTing to endpoint: MCP tool call requires approval
```
en todos los intentos, sin mostrar ningún cuadro de aprobación visible en la sesión web de Claude Code. `start-editing-transaction` y el resto de las herramientas de lectura (`get-design-pages`, `get-design`, `copy-design`, `move-item-to-folder`, `upload-asset-from-url`) siguen funcionando con normalidad — el bloqueo es específico de las herramientas que escriben/confirman cambios dentro de una transacción de edición.

**Antes de reintentar lo que sigue, revisar:**
- Configuración de conectores/integraciones de Claude Code → Canva: ver si hay un permiso pendiente o deshabilitado para "editar diseños".
- Probar refrescar/reabrir la sesión web.
- Si nada de eso lo resuelve, puede ser un problema temporal del servidor MCP de Canva — reintentar más tarde.

## Estado actual de cada pieza

| Pieza | Design ID | Estado |
|---|---|---|
| Portada | `DAHMw8cgQnQ` | ✅ Texto guardado (título + bajada + logo). Falta imagen real. |
| Placa 1 — Puntos verdes | `DAHMwsPqHR8` | ✅ Texto guardado y tapas de libro eliminadas. Falta imagen real. |
| Placa 2 — Cooperativas | `DAHMwsdUmvo` | ⛔ Pendiente (bloqueado por el bug, transacción sin commitear). |
| Placa 3 — Dichos de Macri | `DAHMwnd5LvI` | ⛔ Pendiente, sin tocar. |
| Placa 4 — Pérdida de empleo | `DAHMwmGHT1k` | ⛔ Pendiente, sin tocar. |
| Placa 5 — Cartoneros/as | `DAHMwir1jn4` | ⛔ Pendiente, sin tocar. |
| Cierre / reflexión | `DAHMw9u6AbU` | ⛔ Pendiente, sin tocar. |

Todos los archivos ya están movidos a la carpeta AMBIENTE (`FAFG4tqJkw8`).

Logo oficial de UTE AMBIENTE ya subido a Canva como asset: `MAHMw3Mb6dc`.

## Guion de texto aprobado por el usuario (no modificar sin confirmar)

**1. Portada** (ya aplicado)
- Título: "LA CRISIS DEL RECICLADO EN CABA"
- Bajada: "Lo que dice el reel de @agustinagrasso, explicado"

**2. Placa — MENOS PUNTOS VERDES** (ya aplicado)
- Subtítulo 1: "De 41 a 21"
- Texto 1: "En los últimos años, la Ciudad de Buenos Aires redujo a la mitad la cantidad de puntos verdes en plazas y calles, dificultando el reciclado de cercanía para vecinos y vecinas."
- Subtítulo 2: "Menos accesibilidad"
- Texto 2: "Cada punto verde que cierra significa más kilómetros para separar y reciclar, y más residuos que terminan en la basura común."

**3. Placa — COOPERATIVAS EN RIESGO** (pendiente de aplicar)
- Subtítulo 1: "Centros que cierran"
- Texto 1: "Las cooperativas de reciclaje que sostienen los centros verdes de la Ciudad vienen sufriendo cierres y recortes que ponen en jaque años de trabajo organizado."
- Subtítulo 2: "Trabajo invisibilizado"
- Texto 2: "Son estas cooperativas las que sostienen, día a día, el circuito real del reciclado en CABA."

**4. Placa — LAS PALABRAS DE MACRI** (pendiente de aplicar)
- Subtítulo 1: "Declaraciones polémicas"
- Texto 1: "El jefe de Gobierno, Jorge Macri, minimizó la importancia del programa de reciclado y cuestionó públicamente la continuidad de los puntos verdes."
- Subtítulo 2: "Una mirada que preocupa"
- Texto 2: "Sus dichos generaron rechazo entre cartoneras, cartoneros y organizaciones ambientales que advierten un retroceso en la política de gestión de residuos."

**5. Placa — MILES DE PUESTOS EN PELIGRO** (pendiente de aplicar)
- Subtítulo 1: "Más de 6.000 familias"
- Texto 1: "La crisis del reciclado golpea directamente a miles de familias que dependen del trabajo cartonero y cooperativo para subsistir."
- Subtítulo 2: "Un trabajo esencial"
- Texto 2: "Sin estos puestos se pierde no solo un ingreso: se pierde una pieza clave del sistema de reciclado de la Ciudad."

**6. Placa — EL VALOR DE CARTONEROS Y CARTONERAS** (pendiente de aplicar)
- Subtítulo 1: "Quienes reciclan de verdad"
- Texto 1: "Cartoneros y cartoneras son quienes, con su trabajo diario, recuperan la mayor parte de los materiales reciclables de la Ciudad."
- Subtítulo 2: "Reconocimiento pendiente"
- Texto 2: "Su tarea es ambiental, social y económica: cuidan el planeta y sostienen a sus familias. Merecen condiciones dignas, no más recortes."

**7. Cierre / Reflexión final** (pendiente de aplicar)
- Título: "UNA REFLEXIÓN FINAL"
- Subtítulo 1: "El reciclado no se sostiene solo con discursos"
- Texto 1: "Se sostiene con políticas públicas, cooperativas fortalecidas y el trabajo de cartoneros y cartoneras. Defender los puntos verdes es defender sus puestos de trabajo y nuestro ambiente."
- Subtítulo 2: "¡Sumate al canal de difusión!"
- Texto 2: "Te compartimos materiales y propuestas. Contanos tu experiencia en @ute.ambiente. Link en nuestra bio."

## Imágenes reales pendientes (a pedir/conseguir)
El usuario pidió usar imágenes reales de internet, no ilustraciones. Por restricción de red del entorno (no se puede navegar libremente sitios externos), las imágenes deben llegar como **link público de Google Drive** (igual que se hizo con el logo) para poder subirlas a Canva con `upload-asset-from-url`.

Fotos a conseguir, una por placa:
1. Portada: foto de un punto verde o de cartoneros/as trabajando.
2. Puntos verdes: foto de un punto verde (lleno o vacío).
3. Cooperativas: foto real de una cooperativa/galpón de clasificación de residuos.
4. Dichos de Macri: foto de archivo de Jorge Macri (conferencia, acto oficial).
5. Pérdida de empleo: foto de carros/bicicletas cartoneras o manos trabajando.
6. Cartoneros/as: foto real de cartoneros/as en su trabajo.
7. Cierre: no requiere foto nueva (solo logo).

## Pasos exactos para retomar la edición (cuando se libere el bloqueo)

Para cada placa pendiente (Cooperativas, Macri, Pérdida de empleo, Cartoneros, Cierre):

1. `mcp__Canva__start-editing-transaction` con el `design_id` de la placa → guardar el `transaction_id` devuelto.
2. Del resultado, tomar los `element_id` de:
   - Título (texto grande arriba, ej. "LECTURAS INFANTILES")
   - Subtítulo bloque 1 (ej. "Greta y los gigantes")
   - Texto bloque 1 (párrafo largo)
   - Subtítulo bloque 2 (ej. "Palmeras en el Polo Norte")
   - Texto bloque 2 (párrafo largo)
   - Las 2-3 imágenes de tapas de libro (fills no editables, asset_id `MAGHnRqe-7c` x2 y `MAHDudknHws`)
3. `mcp__Canva__perform-editing-operations` con:
   - `replace_text` para título, subtítulo 1, texto 1, subtítulo 2, texto 2 (usar el texto del guion de arriba según la placa)
   - `delete_element` para las imágenes de tapas de libro
   - Si ya se subió la foto real correspondiente como asset: `insert_fill` (con `page_id`, `asset_type: image`, `asset_id`, `alt_text`) para colocarla donde estaba la tapa del libro eliminada
4. Mostrar la imagen de preview devuelta al usuario.
5. Pedir confirmación explícita al usuario antes de guardar.
6. `mcp__Canva__commit-editing-transaction` con el mismo `transaction_id` para guardar definitivamente.

Para la portada y el cierre, si se consiguen fotos reales después de subida con `upload-asset-from-url`, repetir pasos 1, 3 (solo `insert_fill`), 4-6 para agregar la imagen sin tocar el texto ya guardado.

## Subida de imágenes reales (cuando el usuario pase los links de Drive)

Para cada foto:
```
mcp__Canva__upload-asset-from-url(
  url: "https://lh3.googleusercontent.com/d/<FILE_ID_DE_DRIVE>",
  name: "<nombre descriptivo>"
)
```
Nota: el formato de URL que funciona para Drive es `https://lh3.googleusercontent.com/d/<FILE_ID>` (no `https://drive.google.com/uc?export=download&id=...`, que falló con error 404/fetch_failed en pruebas anteriores). El `FILE_ID` se extrae del link que comparte el usuario (`.../d/<FILE_ID>/view...`).

## Verificación final antes de cerrar la tarea
- Confirmar con `get-design-pages` que las 7 piezas tienen el contenido correcto.
- Confirmar que las 7 piezas están dentro de la carpeta AMBIENTE (`FAFG4tqJkw8`) con `list-folder-items`.
- Borrar o avisar sobre el archivo de prueba redundante `DAHMwvyNQnw` (copia de portada vieja, no se usa).
