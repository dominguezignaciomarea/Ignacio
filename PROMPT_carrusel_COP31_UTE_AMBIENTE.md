# PROMPT — Carrusel COP31 para UTE AMBIENTE

Prompt ampliado y listo para ejecutar directamente sobre Canva vía MCP.
Incluye: brief original del usuario + sistema de diseño UTE AMBIENTE + patrones aprendidos de la plantilla maestra de BRÚJULA + instrucciones operativas de ejecución.

---

## 0. PARÁMETROS TÉCNICOS DE CANVA (obligatorios)

- **Formato:** 1080 × 1350 px (4:5 vertical), 5 páginas en UN SOLO diseño.
- **Carpeta de destino:** `AMBIENTE` — folder ID `FAFG4tqJkw8`. Mover el diseño ahí con `move-item-to-folder` apenas esté creado. Toda pieza de UTE AMBIENTE vive en esa carpeta, sin excepción.
- **Título del diseño:** `UTE AMBIENTE — COP31 — Carrusel 4:5`
- **Brand kit disponible en la cuenta:** `kAGUgARGMCU` (no expone colores ni fuentes por API: usar los hex y fontRefs de abajo, que son la fuente de verdad).

---

## 1. PALETA (hex exactos — no improvisar)

| Rol | Nombre | Hex |
|---|---|---|
| Fondo principal | Verde Bosque | `#1B5E20` |
| Fondo alternativo / bloques | Verde Hoja | `#4BAE4F` |
| Fondo claro / placas de respiro | Arena-Crema | `#F1F8E9` |
| Apoyo institucional | Azul Cielo | `#29ABE2` |
| **Acento (uso restringido)** | **Rojo militante** | **`#E63329`** |
| Texto sobre fondo oscuro | Blanco | `#FFFFFF` |
| Texto sobre fondo claro | Verde Bosque | `#1B5E20` |

**Regla del acento:** el rojo `#E63329` aparece ÚNICAMENTE en (a) el dato grande "42%" de la placa 3, (b) la consigna final de la placa 5, y (c) el subrayado/bullet de "Exigimos". En ningún otro lugar. Si el rojo aparece en más de tres lugares del carrusel, está mal usado.

---

## 2. TIPOGRAFÍA

**Jerarquía (oficial del manual UTE AMBIENTE):**
- Títulos e impacto: **Red Hat Display**, peso Black/900, SIEMPRE EN MAYÚSCULAS.
- Cuerpo, listas y bajadas: **Poppins**, peso Regular (y SemiBold para destacados).

**Códigos internos de fuente observados en la cuenta de Canva** (usarlos para que el match sea exacto en lugar de aproximado):
- `YAFdJjbTu24` — familia usada con peso `heavy` en los encabezados institucionales de UTE ("PROYECTOS AMBIENTALES ESCOLARES"). Es la de títulos.
- `YAFdtQi73Xs` — familia usada en cuerpo de texto de las clases y, con peso `ultrabold`, en los títulos de BRÚJULA. Es la de cuerpo y la que mejor aguanta pesos extremos.
- `YAFdJt8dAY0` — familia de subtítulos/encabezados secundarios en los documentos de cátedra.

*(La correspondencia exacta código↔nombre comercial es inferida; si al aplicar un peso el render no coincide, usar el nombre comercial del manual.)*

**Escala tipográfica calibrada para lienzo 1080×1350** (derivada de la plantilla maestra de BRÚJULA, que usa el mismo lienzo):

| Elemento | Tamaño | Peso | Interlineado |
|---|---|---|---|
| Título de portada (placa 1) | 92 px | Black | 1.05 |
| Título de placa interna | 76 px | Black | 1.1 |
| Dato gigante ("42%") | 300 px | Black | 1.0 |
| Subtítulo / bajada | 46 px | SemiBold | 1.2 |
| Cuerpo y viñetas | 36 px | Regular | 1.35 |
| Texto destacado en recuadro | 38 px | SemiBold | 1.3 |
| Consigna final (placa 5) | 64 px | Black | 1.1 |
| Pie / fuente / numeración | 28 px | Regular | 1.2 |

**Piso duro:** ningún texto por debajo de 28 px. Si un texto no entra, se reduce el interlineado o se agranda el área, nunca se baja de 28.

---

## 3. GRILLA Y PLANTILLA COMÚN A LAS 5 PLACAS

Aprendido de `MAESTRO – BRÚJULA – Post 4:5` (`DAHWyuSMqs8`), que trabaja sobre el mismo lienzo:

- **Márgenes:** 80 px en los cuatro lados. Ningún texto ni logo los invade.
- **Columna de texto:** ancho máximo 920 px, alineada a la izquierda (`textAlign: start`). Nada centrado salvo el dato gigante de la placa 3 y la consigna final de la placa 5.
- **Zona de título:** bloque inferior izquierdo, arrancando aproximadamente al 58-62% de la altura. Es el patrón de BRÚJULA: foto arriba, texto abajo, peso visual en el tercio inferior.
- **Degradé oscuro:** sobre toda foto, rectángulo negro con opacidad 0.70-0.75 cubriendo desde el 45% de la altura hacia abajo, para garantizar contraste. BRÚJULA usa exactamente 0.72 — tomar ese valor como referencia.
- **Barra de pie:** franja horizontal de 67 px de alto, centrada, a 1112 px del borde superior (posición exacta de la barra de BRÚJULA). Contiene logos y datos de pie.
- **Logos:** UTE AMBIENTE y CTA-T juntos en la esquina inferior izquierda, alto máximo 76 px. Nunca deformar proporciones. Logo UTE AMBIENTE ya subido como asset: `MAHMw3Mb6dc`.
- **Numeración:** "1/5" … "5/5" en la esquina inferior derecha, 28 px, blanco al 70% de opacidad.
- **Flecha "deslizá":** en las placas 1 a 4, esquina inferior derecha junto a la numeración. Ícono de línea fina, mismo grosor que el resto de la iconografía. NO va en la placa 5.
- **Elemento orgánico:** una onda/curva suave en Verde Hoja o Azul Cielo por placa, variando la posición entre placas (arriba, abajo, lateral) para que el carrusel no se vea rígido. Recurso del manual UTE AMBIENTE.

**Consistencia:** las 5 placas comparten márgenes, posición de barra de pie, posición de numeración y familia tipográfica. Lo único que varía es el fondo (oscuro/claro), la foto y la posición de la onda.

---

## 4. IMÁGENES

Fotos o ilustraciones de: glaciares, incendios forestales en la Patagonia, inundaciones o sequía, y trabajadoras y trabajadores en movilización. Todas con superposición oscura para legibilidad.

**Modo de trabajo con imágenes:**
1. Si el usuario provee links públicos de Google Drive, subirlos con `upload-asset-from-url` usando el formato `https://lh3.googleusercontent.com/d/<FILE_ID>` (el formato `drive.google.com/uc?export=download` FALLA).
2. Si no hay fotos disponibles, dejar en cada placa un **marco placeholder visible** (rectángulo Verde Bosque al 40% con borde punteado) y dentro, en 28 px, la indicación escrita de qué foto va ahí. No inventar ni generar imágenes sin pedirlo.

**Asignación sugerida:**
- Placa 1: movilización de trabajadoras y trabajadores con banderas.
- Placa 2: plano de cumbre internacional o salón de negociación.
- Placa 3: glaciar en retroceso (foto documental, no ilustración).
- Placa 4: incendio forestal en la Patagonia.
- Placa 5: columna sindical en marcha, plano abierto.

---

## 5. CONTENIDO — RESPETAR TEXTUALMENTE

**No agregar, quitar ni reescribir una sola palabra.** El texto está cerrado.

### PLACA 1 — Portada
- **Título:** FRENTE A LA COP31
- **Subtítulo:** En defensa del ambiente, el trabajo y la soberanía
- **Texto:** Del 9 al 20 de noviembre, en Antalya (Turquía), casi 200 países discuten cómo enfrentar la crisis climática.
- **Pie:** Declaración de la CTA de las y los Trabajadores
- *Fondo: Verde Bosque + foto con degradé.*

### PLACA 2
- **Título:** ¿QUÉ SE DISCUTE EN LA COP31?
- **Lista:**
  - Cuánto dinero ponen los países ricos para el Sur Global.
  - Cómo se pone en marcha la transición justa.
  - Cómo se financian las obras para protegernos de inundaciones, sequías e incendios.
- **Texto destacado:** La ciencia advierte que el límite de 1,5 °C del Acuerdo de París ya va a ser superado. Y Estados Unidos se retiró del Acuerdo.
- *El texto destacado va en recuadro Verde Hoja o Arena, separado de la lista.*

### PLACA 3
- **Título:** LOS QUE MENOS CONTAMINAMOS, MÁS SUFRIMOS
- **Dato destacado en grande:** 42% — con la leyenda: de la superficie de nuestros glaciares perdida en 30 años
- **Texto:** La Argentina emite menos del 1% de los gases de efecto invernadero del mundo. Con su potencial en energías renovables y su capacidad científica, podría ser una voz fuerte de América Latina para exigir financiamiento sin deuda y una transición con justicia social.
- *El "42%" en rojo acento `#E63329`, 300 px, dominando la placa.*

### PLACA 4
- **Título:** EL GOBIERNO DE MILEI HIZO TODO LO CONTRARIO
- **Lista:**
  - Retiró a la delegación argentina de la COP29.
  - Calificó la agenda ambiental como un "fraude" y negó el origen humano del calentamiento global.
  - Presentó una meta de emisiones peor que la anterior.
  - Reformó la Ley de Glaciares para habilitar la megaminería.
  - Recortó casi un 70% el presupuesto para el manejo del fuego mientras la Patagonia se quemaba.
- *Cinco ítems: es la placa más cargada. Cuerpo a 36 px, interlineado 1.35, sin excepción.*

### PLACA 5 — Cierre
- **Título:** LAS Y LOS TRABAJADORES PAGAMOS LAS CONSECUENCIAS
- **Texto:** El ajuste ambiental y el ajuste social son parte del mismo modelo.
- **Subtítulo:** Exigimos:
- **Lista:**
  - Permanecer en el Acuerdo de París con una meta acorde a la ciencia.
  - Una transición justa con los sindicatos adentro.
  - Que los países ricos paguen su deuda climática sin más préstamos.
  - Restituir el presupuesto ambiental y derogar la reforma de la Ley de Glaciares.
  - No a la privatización de AySA.
- **Consigna final, grande y en color acento:** ¡DEFENDER EL AMBIENTE ES DEFENDER EL TRABAJO!
- *Sin flecha de deslizar. La consigna final cierra la placa, a 64 px, en `#E63329` sobre fondo claro o en blanco sobre bloque rojo.*

---

## 6. TONO VISUAL

Comunicación sindical y ambiental: fuerte, clara y militante, sin verse corporativa. Alto contraste, poco texto por placa, jerarquía tipográfica agresiva. La referencia de composición es BRÚJULA (foto a sangre, degradé, título pesado abajo a la izquierda), pero con la paleta y las tipografías de UTE AMBIENTE. No es una pieza informativa neutra: es una declaración.

---

## 7. PROCEDIMIENTO DE EJECUCIÓN EN CANVA

1. Crear el diseño de 1080×1350 con 5 páginas.
2. `move-item-to-folder` → `FAFG4tqJkw8` (AMBIENTE).
3. Construir la **placa 1 completa** como prueba del sistema de diseño. Mostrarla al usuario y **esperar aprobación antes de seguir**. No construir las 5 de una.
4. Aprobada la placa 1, replicar la plantilla en las placas 2 a 5 y cargar el contenido.
5. Trabajar siempre dentro de una transacción: `read-design` con `open_transaction` → `edit-design` con `keep_open` → mostrar preview → **recién ahí** `commit`.
6. Verificar con `read-design` que las 5 páginas tengan el contenido correcto antes de dar la tarea por terminada.

### Limitaciones conocidas del conector (evitar perder tiempo)
- `merge-designs` falla en silencio al insertar páginas en un diseño existente. No usarlo para ensamblar.
- `copy-design` rompe si se le pasan `page_numbers` duplicados. Solo valores únicos.
- `format_text` aplica formato al **cuadro de texto completo**: no permite poner en negrita una frase suelta dentro de un párrafo. Si una placa necesita mezcla de pesos en el mismo bloque, hay que **separar en cuadros de texto distintos desde el principio**.
- `replace_text` colapsa todos los tramos de formato de un cuadro en uno solo. Nunca usarlo sobre texto ya formateado.
- El `page_count` de la API viene desactualizado: verificar siempre con `read-design`.
- Los thumbnails pueden mostrar un render viejo; el array de elementos es la fuente de verdad.

---

## 8. CHECKLIST FINAL

- [ ] 5 placas en 1080×1350, en un solo diseño, dentro de la carpeta AMBIENTE.
- [ ] Texto idéntico al brief: ni una palabra agregada, quitada o cambiada.
- [ ] Ningún texto por debajo de 28 px.
- [ ] Rojo acento usado en 3 lugares como máximo.
- [ ] Márgenes de 80 px respetados en las 5 placas.
- [ ] Logos UTE AMBIENTE + CTA-T en esquina inferior, sin deformar.
- [ ] Numeración 1/5 a 5/5 presente y consistente.
- [ ] Flecha "deslizá" en placas 1 a 4; ausente en la 5.
- [ ] Toda foto con degradé oscuro suficiente para legibilidad.
- [ ] Onda orgánica presente en las 5 placas, variando de posición.
- [ ] Placa 1 aprobada por el usuario antes de construir el resto.
