# Cómo usar mejor Claude Code — análisis de tareas y recomendaciones

Análisis hecho el 2026-09-30 a partir del contenido de este repo (guía de estilo, carrusel de reciclado, spec de la presentación docente, Clase 2) y de lo que se pudo comprobar en el entorno de la sesión.

## 1. Qué tipo de tareas hacés (según el repo)

| Tipo de tarea | Ejemplo en el repo | Peso aproximado |
|---|---|---|
| Piezas gráficas para redes (carruseles, flyers, historias) | Carrusel "Crisis del reciclado en CABA" | Alto |
| Presentaciones para capacitación docente | Spec de 16 placas + notas del orador | Alto |
| Redacción de material de clase / textos académicos | Clase 2: transición energética | Alto |
| Mantener identidad visual de UTE AMBIENTE | Guía de estilo | Transversal |

Patrón común: **contenido pedagógico-político con fuentes** → **adaptarlo a un formato visual con identidad fija** → **publicar en Canva/Instagram**.

## 2. Qué puede y qué no puede hacer Claude Code (comprobado en esta sesión)

### Puede, bien
- **Escribir y revisar texto**: guiones de carrusel, notas del orador, clases, bajadas, CTAs, adaptaciones por nivel educativo.
- **Chequeo de datos y coherencia** (cifras, fechas, unidades), si se le dan las fuentes o tiene acceso web.
- **Editar Canva vía conector MCP**: reemplazar textos, borrar/insertar elementos, copiar diseños, mover a carpetas, subir imágenes desde URL. Requiere que Canva esté autorizado (**en esta sesión NO lo está**: hay que autorizarlo en la configuración de conectores de claude.ai y abrir una sesión nueva).
- **Leer Google Drive** (conector activo): buscar y leer documentos de consulta.
- **Generar piezas por código**: flyers/placas en HTML/SVG exportables a PNG o PDF, gráficos de datos (ej. evolución de renovables, emisiones), documentos Word/PDF/PowerPoint.
- **Páginas web publicables (Artifacts)**: materiales interactivos para docentes (líneas de tiempo, quizzes, mapas conceptuales) con link privado compartible.

### Puede, con límites
- **Imágenes**: no genera fotos ni ilustraciones "tipo IA". Puede componer diseños con formas, texto, íconos vectoriales y fotos que vos le pases. Las fotos reales deben llegar como link público (Drive: `https://lh3.googleusercontent.com/d/<FILE_ID>`).
- **Canva**: puede fallar en operaciones de escritura (ver bloqueo registrado en el TODO del carrusel). Trabajar de a una placa y con preview es más seguro.
- **Video**: no genera video filmado ni animado por IA. Podría armar videos simples tipo slideshow/animación HTML por código, pero **en este contenedor no hay `ffmpeg` ni librerías de imagen instaladas**; habría que instalarlas por sesión o en un script de arranque.
- **Fuentes de marca** (Red Hat Display, Poppins) no están instaladas en el contenedor; para piezas por código se cargan desde Google Fonts.

### No puede
- Ver reels/videos o escuchar audio (Instagram, Facebook, YouTube). Si una pieza se basa en un reel, pasale **la transcripción o las ideas clave por escrito**.
- Navegar libremente cualquier sitio: la red del entorno tiene restricciones.
- Publicar directamente en Instagram.
- Recordar conversaciones anteriores: por eso existe `RETOMAR_AQUI.md` (buena práctica, mantenerla).

## 3. Recomendaciones concretas para ahorrar tiempo

1. **Plantillas maestras en Canva + Claude solo reemplaza texto.** Es lo que mejor funciona con el conector: un diseño base por formato (carrusel pregunta/respuesta, flyer, historia, placa 16:9) y Claude copia y rellena. Mucho más rápido y estable que "diseñar desde cero".
2. **Pedidos por lotes con guion aprobado primero.** Flujo: (a) Claude propone texto → (b) aprobás → (c) Claude aplica en Canva. Ya lo hacés; conviene mantenerlo porque evita rehacer diseño.
3. **Una carpeta de fotos en Drive** ("UTE AMBIENTE – banco de imágenes") con permisos públicos de lectura. Así Claude puede subir fotos sin pedírtelas cada vez.
4. **Reutilizar contenido entre formatos**: de una clase (ej. Clase 2) Claude puede derivar en una misma tarea: carrusel de 7 placas, 3 historias con datos, guion de reel de 60 s y actividad para el aula.
5. **Crear skills propias** (instrucciones reutilizables) para tareas repetidas, por ejemplo: `/carrusel-ute` (guion + aplicación en Canva con la guía de estilo) y `/chequeo-fuentes` (verificar cifras, fechas y citas antes de publicar).
6. **Script de arranque de sesión (SessionStart hook)** que instale `ffmpeg`, Pillow y las fuentes de marca, si se van a producir imágenes o videos por código.
7. **Para video**: Claude escribe guion, subtítulos y textos de placas; el montaje conviene hacerlo en Canva (plantillas de video) o CapCut.

## 4. Revisión rápida de rigor sobre el material existente

Puntos detectados al leer el repo, a confirmar por el usuario antes de publicar:

- **Clase 2**: dice que Taiana habló "en la COP de Copenhague (2015)". La COP15 de Copenhague fue en **2009** (Taiana fue canciller 2005-2010). Probable error de año.
- **Clase 2**: "157 proyectos, equivalentes a 4.966 GW". En notación argentina "4.966" se lee como cuatro mil novecientos sesenta y seis GW, lo cual es imposible para Argentina; probablemente sea **4.966 MW** (≈ 5 GW). Además, la suma del desglose (1.242 + 427 + 38 + 7 = 1.714 MW) no coincide con el total: conviene aclarar que el desglose es de proyectos en operación u otro subconjunto, según la fuente (Burgos, 2020).
- **Clase 2**: el Acuerdo de París fue **adoptado el 12/12/2015** y abierto a la firma el 22/04/2016; conviene mencionar ambas fechas.
- **Carrusel reciclado**: las cifras "de 41 a 21 puntos verdes" y "más de 6.000 familias", y la atribución de dichos a Jorge Macri, provienen de un reel. Recomendable respaldarlas con una fuente primaria (datos del GCBA, cooperativas, nota periodística con cita textual) y citarla en la placa o en el texto de la publicación.

## 5. Actualización (2026-09-30, misma sesión): Canva conectado y herramientas nuevas

Corrige y amplía lo dicho en la sección 2:

- **Canva ya está conectado y activo** (conector oficial de claude.ai). Google Drive también.
- El conector de Canva **cambió sus herramientas**. Las viejas (`start-editing-transaction`, `perform-editing-operations`, `commit-editing-transaction`, `get-design-content`) ya no aparecen; ahora hay:
  - `read-design` (leer contenido) y `edit-design` (una sola herramienta que aplica cambios, guarda o descarta). Permite: reemplazar/formatear texto (color, tamaño, negrita, alineación), mover, redimensionar, recortar, rotar y voltear elementos, cambiar imágenes/videos, insertar formas SVG (útil para las "olas"), agregar y reordenar páginas, **escribir notas del orador**, agrupar, cambiar opacidad y capas.
  - `generate-image`: **genera imágenes con IA dentro de Canva** (corrige lo dicho antes: sí se pueden generar ilustraciones o imágenes, vía Canva). Para fotos documentales de hechos reales (cartoneros/as, funcionarios, cooperativas) siguen conviniendo fotos reales, por veracidad.
  - `remove-background`, `separate-image-layers`, `resize-design` (adaptar a post/historia/16:9), `export-design` (PNG/PDF/MP4 según el diseño), `create-upload-url` (subir archivos), `autofill-design` y plantillas de marca (`search-brand-templates`, `create-design-from-brand-template`), `list-brand-kits`, comentarios (`list-comments`, `reply-to-comment`), carpetas (`create-folder`, `search-folders`).
- **Límites que siguen**: no elige fuentes desde el conector (el formato de texto no incluye familia tipográfica: la fuente sale de la plantilla), no aplica animaciones ni transiciones, no edita línea de tiempo de video, y cada guardado requiere tu aprobación del preview.
- **Kit de marca / plantillas de marca** (Canva Pro/Teams/Educación): permiten que Claude cree piezas nuevas ya con logo, colores y tipografías de UTE AMBIENTE sin diseñar desde cero.
- **Plugin recomendado**: "Canva" (autor: Canva, catálogo Knowledge Work de Anthropic). Suma skills: edición de diseños, creación en lote, adaptación a redes, chequeo de marca, feedback de diseño y aplicación de feedback.
- **Permisos**: `.claude/settings.json` autoriza los nombres viejos de herramientas; conviene agregar los nuevos (`mcp__Canva__edit-design`, `mcp__Canva__read-design`, etc.) para evitar pedidos de aprobación.
