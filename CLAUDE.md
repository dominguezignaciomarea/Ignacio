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
- **Fondo:** siempre oscuro (negro, azul marino profundo, gris carbón)
- **Texto principal:** blanco, bold, centrado
- **Byline / autor:** rojo `#FF3B30`, bold, tamaño menor al título
- **Acento:** cian `#00E5FF` para elementos gráficos, explosiones de color, detalles
- **Sin fondos claros, sin texto negro, sin colores pasteles**
- **URL siempre presente:** `brujula-informativa.com`, blanco, tamaño pequeño, parte inferior

### Elementos de marca recurrentes en Canva
Estos assets de borde y decoración aparecen en todas las tapas:
| Asset ID | Descripción |
|---|---|
| `MAHEkzFjR3o` | Borde izquierdo vertical |
| `MAHEk2jSvVM` | Borde derecho vertical |
| `MAHEk9mk1Ks` | Borde inferior horizontal |
| `MAHEk0TFxag` | Borde derecho inferior |
| `MAHEkxs6i4k` | Borde superior horizontal |
| `MAHEkxUJ6aU` | Barra de URL inferior |
| `MAHEk9ZXBPc` | Ícono decorativo de URL |

### Composición estándar de flyer de entrevista
- **Zona superior (top: 0–500):** imagen del entrevistado o fondo generativo
- **Cita (top: ~570–620):** texto blanco, bold, size 34–38, centrado, width: 972
- **Byline (top: ~840):** rojo `#FF3B30`, size 20–22, bold, centrado
  - Formato: `"Entrevista a [Nombre].\n[Credenciales abreviadas]"`
- **URL (top: ~1050):** blanco, size 18, centrado

---

## Plantilla base en Canva

### Aristarain (fuente de todas las tapas)
- **Design ID:** `DAHIbnET3M4`
- Siempre contiene elementos de cine que hay que eliminar antes de usar
- **Elementos de cine a eliminar siempre** (mismos sufijos en cada copia):
  - `-LBRLwHnkyTFtqlt8`, `-LB6z5fW58WSFg7Xd`, `-LB9RCbkpRrbf9S5Q`, `-LB1xPS9QPQvlgxXF`, `-LBDjw9BxN0vgKx1h`, `-LBc9rHxlQRS90SzW`, `-LBvlRQb80GXkbS0J`, `-LBmG8bSB1wpqbsMc`, `-LB1rzszbZhf2n6s1`, `-LBmmR2PcxtjDvgCn`
- **Slots de texto (sufijos):**
  - Título: `-LBTKLV2vHNzNTSgf` (top: 831 por defecto → reubicar)
  - Autor: `-LBGnryMRGHDwjbRK` (top: 913 → reubicar)
  - URL: `-LBfNJsww0sZn1VJ6` (top: 1050 → mantener)
- **Fondo principal:** sufijo `-LBJjZs5cZg5DX3tx` → eliminar y reemplazar con `insert_fill`

### Flujo estándar para crear una tapa nueva
1. `copy-design` desde `DAHIbnET3M4` → nuevo design temporal
2. `start-editing-transaction` en el nuevo design
3. `perform-editing-operations` en un solo llamado:
   - Eliminar los 10 elementos de cine
   - Eliminar el fondo original (`-LBJjZs5cZg5DX3tx`)
   - `insert_fill` con el nuevo fondo (usar `left: -150` a `-250` para ajustar encuadre si hay figura humana desplazada)
   - `replace_text` + `format_text` + `position_element` en los 3 slots
4. `commit-editing-transaction`
5. `merge-designs` → insertar página en el archivo destino

---

## Archivos activos

| Archivo | Design ID | Contenido |
|---|---|---|
| TODO ROTO (carousel) | `DAHMph5EKoM` | 4 páginas: 3 placas de texto + 1 portada |
| Entrevistas (multi-página) | `DAHMqbH_iac` | Pág 1: Claudia Bang / Pág 2: Esteban Rodríguez Alzueta |

### TODO ROTO — detalles
- Portada (pág 4): fondo oscuro + figura+vidrio roto (`MAHMp40MDSw`) + figura sentada (`MAHMpwe6qbQ`)
- Título portada top: 60, autor top: 155
- Placas de texto: todas centradas, blanco, bold

### Entrevistas — detalles
- **Claudia Bang** (pág 1): fondo redes fragmentadas (`MAHMqWiiONs`). Foto a agregar manualmente en Canva.
- **Esteban Rodríguez Alzueta** (pág 2): silueta juvenil frente a skyline nocturno (`MAHMqopTBYY`), figura corrida a la derecha con `left: -200`. Foto a agregar manualmente en Canva.

---

## Criterios de diseño autónomo

Cuando Ignacio pide una tapa o flyer sin especificar todos los detalles, tomar estas decisiones de forma independiente:

### Imágenes de fondo
- Generar con `generate-design` usando prompt cinemático detallado
- Presentar siempre **4 candidatos** y pedir que elija por número
- Estilo preferido: fotorrealista oscuro, cinemático, atmosférico, sin texto
- Paleta: azul marino / negro / cian para temas políticos y sociales
- Nunca inventar fondos sin generar candidatos primero

### Texto
- Cita: siempre entre comillas tipográficas, centrada, blanca, bold, size 34–38
- No inventar credenciales — usar exactamente lo que da Ignacio
- Si falta información, preguntar máximo 3 cosas en una sola vez

### Composición
- Zona superior (top: 0–450) libre para foto del entrevistado — Ignacio la agrega manualmente
- Cita en zona media (top: 550–650)
- Byline rojo debajo de la cita (top: ~840)
- URL siempre al pie (top: ~1050)

### Decisiones que tomar solo (sin preguntar)
- Tamaño de fuente dentro del rango establecido
- Posición exacta de los elementos dentro de los rangos indicados
- Prompt de generación de imagen de fondo
- Orden de las operaciones en Canva

### Lo que NO hacer nunca
- Variar alineación de texto entre placas (siempre centrado)
- Usar fondos claros o colores pastel
- Superponer dos imágenes generativas sin pedido explícito
- Confirmar dos veces antes de ejecutar cuando ya hay aprobación

---

## Aprendizajes técnicos de Canva MCP

- `editable: false` en elementos NO impide `delete_element` vía API
- `update_fill` no permite controlar posición → usar `delete_element` + `insert_fill` con offset
- Para desplazar figura humana a la derecha: `insert_fill` con `left: -150` a `-250`
- `merge-designs` acepta solo 1 operación por llamada
- Fotos subidas en el chat NO son accesibles como archivos — siempre dejar zona libre y que Ignacio las agregue manualmente
- `insert_fill` inserta la imagen al fondo de la pila de elementos
- Los bordes de marca y la barra URL quedan encima automáticamente si ya están en la plantilla

---

## Estilo de trabajo con Ignacio

- Prefiere opciones concretas numeradas (1, 2, 3, 4) antes que preguntas abiertas
- Aprueba por número → ejecutar de inmediato sin pedir confirmación adicional
- Valora consistencia estética por encima de variación creativa
- Las iteraciones son normales — no asumir que el primer resultado es el final
- Idioma: siempre español rioplatense
- No explicar lo que se va a hacer en detalle — hacer y reportar el resultado
