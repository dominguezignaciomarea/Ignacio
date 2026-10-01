# Guía de estilo — BRÚJULA (Brújula Informativa)

Relevamiento técnico hecho el 2026-09-30/10-01 leyendo los diseños de Canva con `read-design` (datos de elementos). Los valores hex, `fontRef`, tamaños, posiciones e IDs **son exactos, extraídos de Canva**. Lo marcado con **[inferido]** sale de mirar las miniaturas y no está verificado.

## Identidad
- Nombre: **BRÚJULA** / **Brújula Informativa**. Bajada: **"Semanario de navegación informativa"**.
- Web: **brujula-informativa.com** (aparece en todas las placas).
- Formato de contenido: notas de opinión, crónicas y entrevistas firmadas ("Por Nombre Apellido"). Temas vistos: política argentina, Malvinas, memoria (24 de marzo), educación, internacional (Gaza), cultura (Spinetta, Aristarain, Rubén Blades).
- Tono **[inferido de los títulos]**: ensayístico-periodístico, títulos con tesis fuerte o irónica ("La larga agonía de la Argentina progresista", "Las malvinas son paraguayas", "¿Hacemos un asado?").

## Carpetas en Canva
- **BRÚJULA** `FAHEk-7xzLg`
  - **2026** `FAHHPBMmt-k` — placas publicadas (una por nota).
    - Foto periodismo - Mundial `FAHQCQlO44Q`
  - **Estética** `FAHHPFy6rWA` — recursos de marca:
    - LOGO Y COLORES `DAHEkyPW7hs` (3 págs., 1080×1080)
    - Sello nuevo `DAHHPCfhGbQ` (1080×1350)
    - plantilla_brujula.psd `DAHEk6aWwjU` (1080×1350, importada de Photoshop)
  - Aristarain `DAHIbnET3M4` (suelto en la raíz de BRÚJULA)

## Logo / sello
- Wordmark **"BRÚJULA"** en sans condensada negra muy pesada, con la última "A" reemplazada por una **aguja de brújula roja/blanca** dentro de un **dial graduado** (círculo con marcas y números).
- Variantes de imagen (asset IDs):
  | Uso | Asset ID | Tamaño en la pieza |
  |---|---|---|
  | Wordmark BRÚJULA (versión 1) | `MAHEkxFD2pY` | 439×145 |
  | Wordmark BRÚJULA (versión 2, usada sobre blanco) | `MAHEk48brDs` | 439×145 |
  | Dial graduado | `MAHEk9BgdkM`, `MAHEk-fgTNo`, `MAHEk01q5fg`, `MAHEk5lzIm0` | 150×150 |
  | Aguja (grande) | `MAHEk9TclRM`, `MAHEkxmJyUQ` | 47×61 |
  | Aguja (chica) | `MAHEk_PpB4o`, `MAHEk0Ti-u4`, `MAHEk49gRcA` | 24×33 |
  | Aguja suelta en placas (arriba a la derecha) | `MAHEk0ms9bE` (96×106) + `MAHEk9MecR0` (43×63) | — |
  | Isotipo "B" con pañuelo blanco "Nunca Más – 24 de marzo – Madres de Plaza de Mayo" (fondo `#7dd0e2`) | `MAHElrIMb1I` | 530×807 |
  | Sello "B" 3D negro sobre celeste, con aguja | `MAHHPCAcd8s` | — |
  | Sello "Brújula Informativa" (oscuro, 3D) | `MAHHy3ZqV4w` | — |
  | Sello "Brújula Informativa" (variantes plateado/negro) | `MAHHy8EtCsk`, `MAHHyxYf8N0` | — |
- **[a confirmar con el usuario]** cuál de los sellos es el vigente: el diseño se llama "Sello nuevo", pero las placas 2026 relevadas no muestran el wordmark completo, solo la aguja y la URL.

## Paleta (valores extraídos)
| Rol | Hex | Dónde aparece |
|---|---|---|
| Negro (wordmark, URL) | `#000000` | logo, texto URL |
| Blanco (títulos sobre foto) | `#ffffff` | títulos |
| Celeste marca (marco, barra URL, fondo isotipo) | `#7dd0e2` (fondo de página del isotipo) | el marco y la barra son **imágenes** (ver recursos), el tono visual coincide **[inferido]** |
| Violeta firma (plantilla 2026) | `#cb6ce6` | "Por …" en placas 2026 |
| Violeta/rosa firma (plantilla original) | `#dd62df` | "Por …" en plantilla_brujula.psd |
| Gris bajada | `#555555` | "Semanario de navegación informativa" |
| Fondo placa oscura | `#251e1d` / `#cccccc` (detrás de la foto, no se ve) | — |
| Rojo aguja | sin hex: es imagen. Visualmente rojo coral **[inferido]** | aguja |

## Tipografías (`fontRef` exacto; el nombre de la fuente **no lo devuelve el conector**)
| Uso | fontRef | Peso | Tamaño (px, en 1080×1350) | Color | Alineación / interlineado | Nombre visual **[inferido]** |
|---|---|---|---|---|---|---|
| Título de placa (2026) | `YAFdtQi73Xs,0` | ultrabold / bold | 84 (2 líneas) a 117 (título corto) | `#ffffff` | start · 1.02–1.1 | sans geométrica tipo Montserrat |
| Firma "Por Nombre" (2026) | `YAFdtQi73Xs,0` | semibold | 37.8–49.2 | `#cb6ce6` o `#ffffff` al 76 % | start / end · 1.2 | ídem |
| URL brujula-informativa.com (2026) | `YACgEcYqQ-A,0` | normal | 37.7 · letterSpacing 0.021 | `#000000` | 1.2 | sans pesada/condensada |
| Título (plantilla original) | `YACgEZ1cb1Q,0` | normal | 79.8 | `#ffffff` | start · 1.2 | sans neutra tipo Arial/Helvetica |
| Bajada / volanta (plantilla original) | `YACgEZ1cb1Q,0` | normal | 49.7 | `#ffffff` | start | ídem |
| Firma (plantilla original) | `YACgEZ1cb1Q,0` | "Por" normal + nombre heavy | 49.2 | `#dd62df` | — | ídem |
| URL (plantilla original) | `YACgEZ1cb1Q,0` | normal | 63.1 | `#000000` | — | ídem |
| Bajada del logo | `YACgEZ1cb1Q,0` | normal | 41.7 | `#555555` | center | ídem |
| Bajada del logo (versión script) | `YAEnTKKGyv8,0` | normal | 24.4 | `#000000` | center | manuscrita cursiva |

**Conclusión**: el sistema vigente (placas 2026) usa **dos fuentes**: `YAFdtQi73Xs,0` (títulos + firma) y `YACgEcYqQ-A,0` (URL). Como el conector no permite elegir fuente, las piezas nuevas se hacen **copiando una placa 2026** y reemplazando texto.

## Composición — Placa de nota (1080×1350, post 4:5)
Plantilla de referencia vigente: **"La larga agonía de la Argentina progresista" `DAHTf1sxehI`**.
1. **Foto a sangre** ocupando toda la placa (o la mitad superior), con **degradé oscuro desde abajo** (`MAHCCOZlXB8`, ~2400×1278, top 484) para legibilidad. Capas de textura/oscurecido: `MAG8I4q2ov4`, `MAG8NYhl-jY` (opacidad 0.5), `MAHBY_ZFzrQ` (opacidad 0.72).
2. **Marco celeste fino** en los 4 bordes (≈20 px visibles), armado con 5 imágenes: `MAHEkzFjR3o` (izq.), `MAHEk2jSvVM` y `MAHEk0TFxag` (der.), `MAHEkxs6i4k` (arriba), `MAHEk9mk1Ks` (abajo).
3. **Título** blanco, alineado a la izquierda, margen izquierdo **45–48 px**, ancho ≈ 995–1057 px, ubicado en el **tercio inferior** (top ≈ 600–790).
4. **Firma** "Por Nombre Apellido" debajo del título (top ≈ 1005), violeta `#cb6ce6`.
5. **Barra URL**: rectángulo celeste `MAHEkxUJ6aU` (661×67) **centrado** (left 209.5, top 1112), con ícono de cursor `MAHEk9ZXBPc` (76×76) y texto "brujula-informativa.com".
- Márgenes laterales: 45 px; zona segura inferior: la barra URL termina en y ≈ 1180 (margen inferior ≈ 170 px).
- Variante "foto protagonista" (`DAHWsaAHzmg`, "Educar después de Gaza"): sin marco completo (solo borde derecho), título más grande (117 px, interlineado 1.02, terminado en punto), firma blanca al 76 % alineada a la derecha sobre recuadro negro **[recuadro inferido de la miniatura]**, URL y cursor agrupados centrados abajo (top 1200).
- Variante original (`DAHEk6aWwjU`): título + volanta + firma + barra URL a la izquierda (left 73, top 1031), aguja arriba a la derecha.

## Tratamiento de imagen
- Fotos periodísticas reales a sangre, oscurecidas hacia abajo. También ilustraciones/fotomontajes simbólicos (ej. brújula rota sobre tierra agrietada en "La larga agonía…" **[posible imagen generada o de banco; verificar origen y crédito]**).
- **Rigor**: en las placas relevadas no hay crédito de foto visible. Recomendación: agregar crédito chico (fotógrafx / agencia) cuando la foto sea de terceros, y no usar imágenes generadas por IA que parezcan fotos de hechos reales sin aclararlo.

## Otros formatos vistos
- 1080×1080 (LOGO Y COLORES).
- Historia 9:16: `wwww.brujula-informativa.com` `DAHFcu952_k` (335×596 en miniatura) — **no leído en detalle todavía**.
- Carruseles de entrevista: "Entrevista a Luis García Esteban Campos" `DAHTUygwJyo` (8 págs.), "Esteban Campos" `DAHREC-qQTY` (5 págs.), "TODO ROTO — Brújula Informativa" `DAHMph5EKoM` (4 págs.) — **pendientes de leer**.

## Pendientes / sin verificar
- Nombre real de las fuentes detrás de cada `fontRef` (el conector no lo da; confirmar en Canva: seleccionar texto → ver nombre de fuente).
- Hex exacto del celeste del marco y de la barra (son imágenes; el único hex celeste confirmado es `#7dd0e2`).
- Kit de marca: la cuenta tiene un solo kit (`kAGUgARGMCU`), no se sabe si incluye BRÚJULA.
- No hay plantillas de marca (Brand Templates) en la cuenta.

## Plantilla maestra (Fase 2, 2026-10-01)
- **MAESTRO – BRÚJULA – Post 4:5 (1080×1350)** · `DAHWyuSMqs8` · carpeta Estética `FAHHPFy6rWA` · copia de `DAHTf1sxehI` (el original no se tocó).
  - Edición: https://www.canva.com/d/6aD8OaKjwZOQZpr
- Campos de autofill etiquetados: **`titulo`** (`PBKhR9GBpRNp1gnk-LBTKLV2vHNzNTSgf`), **`firma`** (`PBKhR9GBpRNp1gnk-LBGnryMRGHDwjbRK`), **`foto`** (`PBKhR9GBpRNp1gnk-LBzjzTtq4d9ghFjv`).
- Corrección de diseño aplicada: el título quedó **anclado abajo** (`update_text_anchoring: end`). Motivo: en la vista previa, un título de 3 líneas crecía hacia abajo y **pisaba la firma**. Ahora crece hacia arriba, sobre la foto.
- Regla de uso: título de **hasta 2 líneas** a 84 px (~22 caracteres por línea **[estimado a partir de la vista previa]**); si tiene 3, revisar que no tape lo importante de la foto.
- Cómo usarla: `copy-design` de `DAHWyuSMqs8` → reemplazar `titulo`, `firma` y la imagen `foto` → mover a la carpeta `2026` (`FAHHPBMmt-k`).
