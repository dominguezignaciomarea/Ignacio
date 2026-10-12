# Contexto de trabajo — Brújula Informativa

Este archivo carga automáticamente el contexto necesario para trabajar con Ignacio Domínguez en la producción de contenido digital para **Brújula Informativa**, medio de periodismo digital argentino.

---

## El medio

**Brújula Informativa** es un medio de periodismo digital argentino. Produce notas de análisis político, entrevistas y contenido de opinión. Su presencia en redes sociales es clave — Instagram es el canal principal de distribución visual.

**Sitio:** brujula-informativa.com
**Instagram:** formato principal de flyers 1080×1350px (4:5 portrait)

---

## Estética visual de Brújula

### Reglas fijas (no negociar)
- **Fondo de página:** siempre `#000000` (negro puro), nunca gris
- **Fondo imagen:** siempre oscuro (negro, azul marino profundo, gris carbón), opacidad **0.79**
- **Gradiente oscuro encima del fondo:** elemento `MAHBY_ZFzrQ` con opacity 0.72 que oscurece la mitad inferior para mejorar legibilidad
- **Texto principal:** blanco, ultrabold, centrado
- **Byline / autor:** naranja `#FF751F` cuando hay foto circular del autor; rojo `#FF3B30` sin foto
- **Acento:** cian `#00E5FF` / `#98D4E7` para bordes de foto y elementos gráficos
- **Sin fondos claros, sin texto negro, sin colores pasteles**
- **URL siempre presente:** `brujula-informativa.com`, parte inferior

### Elementos de marca recurrentes en Canva
| Asset ID | Descripción |
|---|---|
| `MAHEkzFjR3o` | Borde izquierdo vertical |
| `MAHEk2jSvVM` | Borde derecho vertical |
| `MAHEk9mk1Ks` | Borde inferior horizontal |
| `MAHEk0TFxag` | Borde derecho inferior |
| `MAHEkxs6i4k` | Borde superior horizontal |
| `MAHEkxUJ6aU` | Barra de URL inferior |
| `MAHEk9ZXBPc` | Ícono decorativo de URL |
| `MAHBY_ZFzrQ` | Gradiente oscuro semitransparente (opacity 0.72) |

---

## Composición estándar — tapa de análisis o entrevista

### Estructura de capas (de abajo hacia arriba)
1. **Fondo negro** (`#000000`) — color de página
2. **Imagen de fondo** — opacidad 0.79, reencuadrada para máximo impacto (no necesariamente 1:1 con el canvas)
3. **Gradiente oscuro** (`MAHBY_ZFzrQ`, opacity 0.72) — oscurece la mitad inferior
4. **Bordes de marca** (izquierdo, derecho, superior, inferior)
5. **Textos** — título, bajada, byline, URL
6. **Foto circular del autor** (cuando aplica)
7. **Barra URL**

### Jerarquía tipográfica del título — DOS elementos separados
El título se divide en dos elementos con fuentes y tamaños distintos para generar tensión visual:

| Elemento | Posición | Font | Size | Weight | Color | Tracking |
|---|---|---|---|---|---|---|
| Frase gancho / "bajada" | top: ~50–100 | `YACgEUFdPdA` (serif elegante) | ~89px | normal | `#FFFFFF` | -0.064 |
| Título completo de la nota | top: ~700–800 | `YAFdtQi73Xs` (sans bold) | ~70px | ultrabold | `#FFFFFF` | 0 |

**Lógica**: la frase corta e impactante va arriba grande. El título largo va abajo más pequeño. Jerarquía invertida — genera curiosidad.

### Foto circular del autor
- Forma: círculo con path `M32 0A32 32 0 1 0 32 64A32 32 0 1 0 32 0Z`
- Tamaño: ~165×165px
- Borde stroke: **4px**, color `#98D4E7` (cian claro)
- Posición: izquierda del byline, mismo nivel vertical (~top: 925)
- El byline se desplaza a la derecha para dejarle lugar (left: ~268)

### Byline con foto circular
- Tamaño: **~35px** (mucho mayor que sin foto)
- Color: **`#FF751F`** (naranja)
- Alineado a la derecha de la foto circular
- Formato: `"Por [Nombre].\n[Credenciales]"`

### Byline sin foto
- Tamaño: 20–22px
- Color: **`#FF3B30`** (rojo estándar)
- Centrado, width completo

### URL
- Barra `MAHEkxUJ6aU` + ícono `MAHEk9ZXBPc`
- Posición: top ~1112–1130 (más abajo que el centro)

---

## Plantilla base en Canva

### Aristarain (fuente de todas las tapas)
- **Design ID:** `DAHIbnET3M4`
- Siempre contiene elementos de cine que hay que eliminar antes de usar
- **Elementos de cine a eliminar siempre** (mismos sufijos en cada copia):
  - `-LBRLwHnkyTFtqlt8`, `-LB6z5fW58WSFg7Xd`, `-LB9RCbkpRrbf9S5Q`, `-LB1xPS9QPQvlgxXF`, `-LBDjw9BxN0vgKx1h`, `-LBc9rHxlQRS90SzW`, `-LBvlRQb80GXkbS0J`, `-LBmG8bSB1wpqbsMc`, `-LB1rzszbZhf2n6s1`, `-LBmmR2PcxtjDvgCn`
- **Slots de texto (sufijos):**
  - Título: `-LBTKLV2vHNzNTSgf`
  - Autor: `-LBGnryMRGHDwjbRK`
  - URL: `-LBfNJsww0sZn1VJ6`
- **Fondo principal:** sufijo `-LBJjZs5cZg5DX3tx` → eliminar y reemplazar con `insert_fill`

### Flujo estándar para crear una tapa nueva
1. `copy-design` desde `DAHIbnET3M4` → nuevo design temporal
2. `read-design` con `open_transaction: true` → obtener IDs y abrir transacción
3. `edit-design` con `finalize: "keep_open"` y todas las operaciones en un solo llamado:
   - Eliminar los 10 elementos de cine + fondo original
   - `insert_fill` con el nuevo fondo (opacidad 0.79 aplicar después con `update_opacity`)
   - **`layer_element` con `position: "back"` sobre el fondo recién insertado** ← crítico para que quede detrás del texto
   - `insert_fill` con `MAHBY_ZFzrQ` (gradiente) encima del fondo
   - Reemplazar y formatear los slots de texto
4. `edit-design` con `finalize: "commit"` → guardar
5. `merge-designs` → insertar página en el archivo destino si corresponde

---

## Archivos activos

| Archivo | Design ID | Contenido |
|---|---|---|
| TODO ROTO (carousel) | `DAHMph5EKoM` | 4 páginas: 3 placas de texto + 1 portada |
| Entrevistas (multi-página) | `DAHMqbH_iac` | Pág 1: Claudia Bang / Pág 2: Esteban Rodríguez Alzueta |

---

## Criterios de diseño autónomo

### Imagen de fondo
- Generar con `generate-design`, prompt cinemático, oscuro, sin texto
- Presentar 4 candidatos y pedir que elija por número
- Al insertar: **opacidad 0.79**, reencuadrar para máximo impacto (puede desbordar el canvas)
- Añadir gradiente `MAHBY_ZFzrQ` encima con opacity 0.72

### Título
- Dividir siempre en DOS elementos:
  - Arriba: frase corta e impactante, fuente `YACgEUFdPdA`, ~89px, weight normal, tracking -0.064
  - Abajo: título completo, fuente `YAFdtQi73Xs`, ~70px, ultrabold
- Ambos blancos, centrados

### Foto del autor
- Siempre circular con borde cian 4px (`#98D4E7`)
- A la izquierda del byline
- Ignacio la agrega manualmente en Canva — dejar espacio en esa zona

### Byline
- Con foto: naranja `#FF751F`, ~35px, izquierda desplazada (~left: 268)
- Sin foto: rojo `#FF3B30`, 20–22px, centrado

### Decisiones que tomar solo (sin preguntar)
- Cómo partir el título en dos frases
- Tamaño y posición exactos dentro de los rangos indicados
- Prompt de generación de imagen
- Orden de capas

### Lo que NO hacer nunca
- Fondo de página gris — siempre negro `#000000`
- Imagen de fondo a opacidad 1.0 — siempre 0.79
- Título en un solo elemento de texto
- Byline centrado cuando hay foto circular
- Olvidar `layer_element: back` después de `insert_fill`

---

## Aprendizajes técnicos de Canva MCP

- La nueva API usa `edit-design` en lugar de `perform-editing-operations`
- `finalize: "keep_open"` aplica operaciones sin guardar; `finalize: "commit"` guarda
- `editable: false` en elementos NO impide `delete_element`
- `insert_fill` siempre inserta la imagen **encima** de todo → usar `layer_element: "back"` inmediatamente después
- `update_fill` no permite controlar posición → usar `delete_element` + `insert_fill` con offset
- Para desplazar figura humana a la derecha: `insert_fill` con `left: -150` a `-250`
- `merge-designs` acepta solo 1 operación por llamada
- Fotos subidas en el chat NO son accesibles como archivos — Ignacio las agrega manualmente
- Fondo de página se setea desde `background.color`, no desde un elemento

---

## Estilo de trabajo con Ignacio

- Prefiere opciones concretas numeradas (1, 2, 3, 4) — aprobar por número → ejecutar sin confirmar de nuevo
- Valora consistencia estética por encima de variación creativa
- Las iteraciones son normales
- Idioma: siempre español rioplatense
- No explicar lo que se va a hacer — hacer y reportar el resultado
