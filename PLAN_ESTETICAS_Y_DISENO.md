# Plan — Claude como herramienta de diseño en Canva (3 estéticas)

Pedido del usuario (2026-09-30): que Claude aprenda y controle las estéticas que maneja en Canva — **UTE AMBIENTE**, **BRÚJULA** y **Mariano Acosta** — (colores, tipografías, imágenes, composición) para alivianar su carga de diseño.

## Fase 1 — Relevamiento por estética (una guía por marca)
Para cada marca:
1. Ubicar sus diseños en Canva (`search-designs`, `search-folders`, `list-folder-items`). Si no se encuentran, preguntar al usuario el nombre de la carpeta o links.
2. Leer 5–10 piezas representativas con `read-design` (thumbnails + `design_content` con transacción abierta y luego cancelada): de ahí salen **colores hex exactos, `fontRef` de cada tipografía, tamaños, interlineado, alineación, posiciones, opacidades, IDs de assets (logos, texturas, íconos)**.
3. Escribir `<MARCA>_guia_de_estilo.md` con: paleta, tipografías (nombre visible + `fontRef`), jerarquía de tamaños, grilla/márgenes por formato (post 1080×1350, historia 1080×1920, 16:9, flyer A4), recursos gráficos, tratamiento de fotos, tono de voz, logo (asset ID y ubicación), y "diseños maestros" de referencia.
4. Revisar el kit de marca de Canva (`list-brand-kits`) y plantillas de marca (`search-brand-templates`).
- UTE AMBIENTE ya tiene guía (`UTE_AMBIENTE_guia_de_estilo.md`): **ampliarla** con los datos técnicos (hex, fontRef, medidas) sacados del carrusel `DAHNmVHj07w` y otras piezas.

## Fase 2 — Plantillas maestras
Por marca y formato, un diseño "MAESTRO – <marca> – <formato>" con textos de ejemplo y elementos etiquetados para autofill (`update_autofill_field`). Motivo: el conector **no permite elegir familia tipográfica**; la tipografía correcta se conserva copiando un maestro (`copy-design`) y reemplazando textos/imágenes.

## Fase 3 — Flujo de producción
Pedido → guion (con fuentes verificadas) → copia del maestro → reemplazo de texto e imágenes → chequeo de marca y de rigor → guardar → exportar (`export-design`) → registrar en el repo.

## Límites conocidos del conector
- No cambia la familia tipográfica ni aplica animaciones/transiciones.
- No lee el contenido del kit de marca (solo su ID).
- Imágenes: fotos reales vía link público de Drive (`https://lh3.googleusercontent.com/d/<FILE_ID>`) o `create-upload-url`; `generate-image` solo para ilustraciones, nunca para retratar hechos o personas reales.

## Pendientes heredados
- Carrusel reciclado: 5 puntos de rigor en `UTE_AMBIENTE_brand_check_carrusel_reciclado.md`.
- Presentación docente de 16 placas: `UTE_AMBIENTE_presentacion_docente_SPEC.md` (sin iniciar).
- Clase 2: errores de fecha/unidades listados en `GUIA_USO_CLAUDE_CODE.md`, sección 4.
- Limpiar diseños de prueba viejos `DAHMw8cgQnQ` y `DAHMw9u6AbU` (consultar antes de borrar).

## Avance (2026-10-01)
**Fase 1 — hecha en primera pasada.** Guías:
- `UTE_AMBIENTE_guia_de_estilo.md` → ampliada con sección "Ampliación técnica" (hex, fontRef, asset IDs, grilla 1080×1350).
- `BRUJULA_guia_de_estilo.md` → nueva (carpeta `FAHEk-7xzLg`, subcarpeta Estética `FAHHPFy6rWA`; plantilla vigente `DAHTf1sxehI`).
- `MARIANO_ACOSTA_guia_de_estilo.md` → nueva (no hay carpeta propia; piezas identificadas por contenido: `DAHUo1iXNX4`, `DAHV3G3xrpw`). **Confirmar con el usuario.**

Hallazgos transversales:
- Kit de marca: hay **uno solo** (`kAGUgARGMCU`); no hay Brand Templates.
- El conector **no devuelve el nombre de la fuente**, solo `fontRef`. Los nombres en las guías están marcados [inferido].
- `YAFdJjbTu24,1` se usa en UTE AMBIENTE y en el Acosta (cuerpo).
- Los títulos "bubble" de UTE salen como elemento `unsupported`: no se pueden leer ni editar por API.
- Método de lectura: `read-design` sin transacción devuelve solo texto plano; para formato hace falta `open_transaction: true` y luego `cancel`. El conector se desconectó varias veces en la sesión: las transacciones abiertas se pierden (sin efecto, porque no había cambios).

Pendiente de Fase 1: carruseles de entrevista de BRÚJULA y historia 9:16; revista TARDE Y MAÑANA y piezas de elecciones; más piezas de UTE (historias, flyer A4, 16:9).
Siguiente: **Fase 2 — plantillas maestras** (copiar una pieza vigente por marca/formato y etiquetar campos).
