# Sistema de diseño UTE AMBIENTE — Carrusel Instagram 4:5

**Fuente: ingeniería inversa del carrusel COP31 (`DAHaoXka3oQ`) editado a mano por Ignacio.**
Esta es la referencia normativa real, por encima de cualquier suposición previa. Todo pedido
futuro de carrusel para UTE AMBIENTE debe replicar estos valores exactos.

---

## 0. Correcciones a suposiciones previas (IMPORTANTE)

Lo que yo había asumido y **está mal**:

| Asumí | Es en realidad |
|---|---|
| Fondo Verde Bosque `#1B5E20` | **Fondo NEGRO `#000000`** |
| Acento rojo `#E63329` | **No hay rojo.** El acento es Verde Hoja `#4BAE4F` y el azul del WordArt |
| Títulos alineados a la izquierda | **Alineados a la DERECHA** (`textAlign: "end"`) |
| Flecha "Deslizá →" | **No se usa.** Se usan 5 puntos de paginación |
| Numeración "1/5" en texto | **No se usa.** Los puntos cumplen esa función |
| Ondas orgánicas generadas por código | **Papel rasgado** con assets de imagen reales |
| Logo abajo a la izquierda, chico | **Logo centrado abajo, grande (288 px)** |
| Cuerpo en peso normal | **Cuerpo en BOLD y justificado** |

---

## 1. Lienzo

- **1080 × 1350 px**
- **Fondo de página: `#000000`** en todas las placas.
- El negro es el color estructural del sistema: las fotos y los bloques de color se recortan
  contra él mediante papel rasgado.

---

## 2. Tipografía (valores exactos)

### Títulos
- `fontRef`: **`YAFdJhmxbVQ,1`**
- `fontWeight`: **`heavy`**
- `fontSize`: **109.575** (placas internas) · **81.578** (bajada de portada)
- `lineHeight`: **1.2**
- `color`: `#ffffff`
- `textAlign`: **`end`** (derecha) en placas internas · `start` en portada
- Caja: `left: 23.585`, `width: 1032.83`
- Siempre MAYÚSCULAS.

### Cuerpo y listas
- `fontRef`: **`YACgEZ1cb1Q,0`**
- `fontWeight`: **`bold`**
- `fontSize`: **45.3331**
- `lineHeight`: **0.97** (muy compacto — es un rasgo del estilo)
- `textAlign`: **`justify`**
- `color`: `#ffffff`
- Separación entre ítems: doble salto de línea `\n\n` dentro del MISMO cuadro de texto.

### Texto destacado (tipo "la ciencia advierte…")
- Mismo `fontRef` que cuerpo, `bold`, `fontSize`: **33.3334**, `lineHeight`: **1.04**,
  `textAlign`: **`center`**, `left: 52`, `width: 1004.42`

### Bajada de portada
- `fontSize`: **36**, `fontWeight`: `normal`, `lineHeight`: **1.35**, `textAlign`: `center`

---

## 3. Assets recurrentes (texturas y marca)

| Asset ID | Qué es | Uso |
|---|---|---|
| `MAFvW5ALujQ` | Papel rasgado (banda) | Borde superior de la zona oscura. Se usa **rotado -180** |
| `MAE0kygyIHE` | Papel rasgado (pie) | Franja inferior, **siempre** en la misma posición |
| `MAF3TzBaz_8` | Trama de puntos | Textura sutil: `opacity 0.12`, recolor `#000000`→`#ffffff`, `flipY` |
| `MAG7HP4AnGY` | **Logo UTE** | Pie, centrado, **siempre** en la misma posición |
| `MAGCAEfzShE` | Viñeta (flecha/triángulo) | Listas. Recolor `#ff005e`→`#4BAE4F` |

### Posiciones fijas (no recalcular, copiar tal cual)

**Papel rasgado inferior** (`MAE0kygyIHE`):
```
top: 1165.4167   left: -433.7962   width: 2147.0527   height: 585.0719
```

**Logo UTE** (`MAG7HP4AnGY`):
```
top: 1065.1970   left: 395.6655   width: 288.6691   height: 288.6691
```

**Viñetas de lista** (`MAGCAEfzShE`): `left: 52`, `width: 71.665`, `height: 66.291`.
Una por ítem, alineada con su primera línea.

---

## 4. Paginación (idéntica en las 5 placas)

Cinco círculos. El que corresponde a la placa actual va en claro; el resto en gris oscuro.

- Path: `M32 0A32 32 0 1 0 32 64A32 32 0 1 0 32 0Z` · viewBox `64 × 64`
- Tamaño: **12.654 × 12.654**
- `top`: **1229.346**
- `left` de cada uno: **923.490 · 944.903 · 966.557 · 988.211 · 1007.856**
- Color activo: **`#bfbebb`** · Color inactivo: **`#3a3b3f`**

---

## 5. Paleta real

| Rol | Hex |
|---|---|
| Fondo estructural | `#000000` |
| Texto | `#ffffff` |
| Verde de marca (bloques, viñetas) | `#4BAE4F` |
| Punto de paginación activo | `#bfbebb` |
| Punto de paginación inactivo | `#3a3b3f` |

El bloque verde de cabecera se usa con **`opacity: 0.82`**, no a full.

---

## 6. Estructura por tipo de placa

### Portada
Foto a sangre (sobredimensionada, recortada) + logo del evento en recuadro blanco sobre la
foto + papel rasgado arriba y abajo + título `heavy` a 81.578 alineado a la izquierda +
bajada centrada a 36 + logo UTE centrado al pie.

### Placa de lista
Fondo negro + bloque Verde Hoja al 0.82 en la franja superior + trama de puntos al 0.12 +
título a 109.575 alineado a la **derecha** + texto destacado centrado + papel rasgado como
corte + lista en un único cuadro justificado a 45.3331 con viñetas verdes a la izquierda.

### Placa de foto + texto
Título sobre negro arriba, alineado a la derecha + papel rasgado + foto abajo a sangre +
texto justificado encima de la foto.

### Placa de cierre
Título grande a 109.575 + **consigna final como elemento WordArt** (ver limitación abajo) +
papel rasgado + logo UTE.

---

## 7. Limitaciones del conector para replicar este estilo

1. **No se puede elegir la familia tipográfica por API.** `format_text` controla tamaño, peso,
   color, interlineado y alineación, pero **no** la fuente. Para que el texto salga en
   `YAFdJhmxbVQ`, hay que **copiar una página existente** que ya la use y reemplazar el texto
   con `replace_text` (hereda la fuente), en lugar de crear cuadros nuevos con `add_text`.
2. **`fontWeight: heavy` no es alcanzable** con `format_text` (solo acepta `normal` | `bold`).
   Se obtiene únicamente heredándolo de un cuadro existente.
3. **La consigna final de la placa 5 es un elemento `unsupported`** (WordArt con efecto de
   sombra azul). No se puede crear ni editar por API. Hay que copiarla de una placa existente
   o hacerla a mano.
4. `format_text` aplica al cuadro completo: **no** permite negritas parciales dentro de un
   párrafo. Separar en cuadros distintos desde el inicio si hace falta mezclar pesos.
5. `replace_text` colapsa todos los tramos de formato en uno. Solo usarlo en cuadros de
   formato uniforme.

---

## 8. Método recomendado para futuros carruseles

**No construir desde cero con `insert_shape` + `add_text`.** El resultado queda genérico y no
respeta la estética. En su lugar:

1. `copy-design` del carrusel COP31 (`DAHaoXka3oQ`) como plantilla base.
2. Reemplazar el texto de cada cuadro con `replace_text` — hereda fuente, peso y alineación.
3. Reemplazar las fotos con `update_fill` sobre los rectángulos existentes.
4. Ajustar qué punto de paginación va en claro según la placa.
5. Mover el diseño a la carpeta **AMBIENTE** (`FAFG4tqJkw8`).

Así el sistema se preserva íntegro y solo cambia el contenido.
