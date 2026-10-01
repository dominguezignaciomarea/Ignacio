# Guía de estilo — Mariano Acosta (ENS en Lenguas Vivas Nº 2)

Relevamiento técnico del 2026-10-01 con `read-design`. Valores hex, `fontRef`, tamaños, posiciones e IDs **extraídos de Canva**. Lo marcado **[inferido]** sale de las miniaturas, sin verificar.

> **A confirmar con el usuario**: no existe una carpeta "Mariano Acosta" en Canva. Las piezas se identificaron por su contenido. Si hay una carpeta específica (o si las piezas de "TARDE Y MAÑANA" y "Elecciones Delegadxs" pertenecen a otra marca), indicarlo para ajustar.

## Identidad (datos que aparecen en las piezas)
- **Escuela Normal Superior en Lenguas Vivas Nº 02 "Mariano Acosta"** (ENS Nº 2). Escudo: **"ACOSTA – ENP – 1874"**.
- Dirección: **Urquiza 277, CABA** (Comuna 3, Balvanera).
- Instagram: aparece escrito "@mariano acosta.ens2" (con espacio) **[verificar el usuario exacto; un @ no puede tener espacios]**.
- Mail: ens2acosta_npregencia@bue.edu.ar · Tel.: 4931-7893.
- Revista institucional: **"TARDE Y MAÑANA"** (carpeta `FAHI6g06DyI`), contacto revista.acosta@gmail.com.
- Tono **[inferido]**: institucional-cercano, comunitario; usa lenguaje inclusivo con "x" ("maestrx", "Delegadxs"); en la inscripción destaca ESI, DDHH, huerta y "más de 150 años de trayectoria".

## Piezas relevadas
| Pieza | ID | Formato |
|---|---|---|
| Día del maestrx en el Acosta | `DAHUo1iXNX4` | 1080×1350 (post 4:5) |
| Inscripción 2027 (1080×1080) | `DAHV3G3xrpw` | 2 págs. cuadradas ("Parte de afuera" / "Parte de adentro", díptico) |
| Otras sin leer en detalle | Inscripción 2027 `DAHVwnepELM` (apaisado), Inscripción 2027 1123×1123 `DAHV3K5eECQ`, TARDE Y MAÑANA 2026 `DAHJAHV36LI` (4 págs.), TARDE Y MAÑANA 2025 `DAGvt88E30M` (57 págs.), Revista.acosta@gmail.com `DAHKChI7ZvE`, Boleta Elecciones Delegadxs 2026 `DAHNstFHMuE`, Material Elecciones Delegadxs 2026 `DAHNsuziXE8`, Bienvenida de vuelta - Escuela `DAHO772glYo` (16:9, 11 págs.) | — |

## Logo
- **Escudo ACOSTA ENP 1874** (azul marino con borde dorado **[color del borde inferido]**): asset **`MAHKIUjF8zo`**. Se usa recortado en un marco (imageBox desplazado ~−94 px arriba).
  - Post 1080×1350: 283×317, centrado (left 399, top 689).
  - Cuadrado 1080×1080: 110×123, centrado abajo (left 481, top 957).

## Paleta (valores extraídos)
| Rol | Hex | Dónde |
|---|---|---|
| Azul marino fondo (post) | `#11113d` | fondo "Día del maestrx" |
| Azul marino institucional (trazos, bordes) | `#131244` | recoloreo de trazos de pincel y bordes en "Inscripción 2027" |
| Crema / blanco cálido (texto sobre azul) | `#fff7ef` | todos los textos del post |
| Blanco texto sobre bandas | `#fffdfd` | Inscripción 2027 |
| Azul enlace | `#0f1b96` | URL en negrita |
| Negro texto sobre blanco | `#000000` | Inscripción 2027 |
| Dorado (original de un ícono, recoloreado a crema) | `#efb44e` | destellos `MAFRXIhrJwA` |

## Tipografías (`fontRef`; el conector no da el nombre)
| Uso | fontRef | Peso | Tamaño | Color | Nombre visual **[inferido]** |
|---|---|---|---|---|---|
| Título gigante (post) | `YAEp7Jy5cNk,0` | normal | 550 px (una palabra: "ASADOOO") | `#fff7ef` · center | display condensada tipo Bebas Neue / Anton |
| Volanta y datos (post) | `YAFdJs2qTWQ,0` | bold | 66.7 (volanta), 56.9 (datos), 42.5 (pie) · interlineado 1.13 | `#fff7ef` | sans geométrica |
| Títulos de folleto | `YADZ-ZHBePw,0` | normal | 52 (título), 43 (subtítulo subrayado), 40.6 ("¡TE ESPERAMOS!"), 33, 20 | `#000000` / `#fffdfd` | display en mayúsculas, condensada |
| Cuerpo de folleto | `YAFdJjbTu24,1` | semibold (ítems) / normal + bold (instructivo) | 24.4 (ítems, interlineado 0.98) · 16.9 (instructivo, interlineado 1.06, viñetas disc) | `#000000` | **la misma familia que usa UTE AMBIENTE en cuerpo** |

## Composición
### Post de evento 1080×1350 (`DAHUo1iXNX4`)
1. Fondo azul marino `#11113d` + **foto del edificio** (`MAHUpJ_mgg0`) a sangre con **opacidad 0.31** (duotono por superposición).
2. Volanta centrada arriba (top 151): "Día del maestrx".
3. **Palabra gigante** centrada (550 px) ocupando el tercio superior.
4. **Cápsula** de borde redondeado: contorno `#fff7ef` 4 px, sin relleno, ancho completo 1080, alto 209, top 743, esquinas 51.
5. Dentro de la cápsula: dato izquierda (alineado a la derecha, left 26) · **escudo al centro, solapando la cápsula** · dato derecha (alineado a la izquierda, left 697).
6. Pie: dirección (izq., left 53) · ícono central (parrilla `MAHCYBd5LPw` recoloreada a blanco) · aclaración (der.) en top ≈ 1200; separadores de destello `MAFRXIhrJwA`.
- Márgenes laterales efectivos: ~26–53 px. Todo centrado y simétrico.

### Folleto / díptico 1080×1080 (`DAHV3G3xrpw`)
- Fondo blanco, **trazos de pincel** azul marino (`MAGf2ZojoAg`, recoloreado `#231f20→#131244`, rotados −9° a −22°, opacidad 0.64–1).
- Columna izquierda con recuadro blanco y borde azul 4 px (lista "Contamos con"); centro con instructivo; derecha con título "INSCRIPCIÓN PRIMARIA 2027" y foto.
- **Fotos tipo polaroid** con cinta: marco `MAFvE4xdV2o` sobre cada foto (fotos de la escuela: `MAHV2syqwAQ`, `MAHLorrfWDE`, `MAHMSthU82U`, `MAHN3SBjjG8`, `MAHVxGPCJao`, `MAHVxDnuKzI`, `MAHN3dI-ig8`, `MAHVxb9q4b8`, `MAHV2m1dFH0`, `MAHVxVT50q0`, `MAHVxUKe2h8`, `MAHVxVcOUX8`, `MAHVwuO-760`, `MAHVxf7z3Lg`, `MAHV2ndzsKY`, `MAHV2p9iI30`, `MAHV2hlevO4`, `MAHV2tflZV0`), collage con hilos/líneas finas.
- Bandas azul marino con texto blanco en mayúsculas ("MÁS DE 150 AÑOS DE TRAYECTORIA", "EX ALUMNOS").
- Íconos: teléfono `MAEmf-RmqPk` (recoloreado blanco); decorativos `MAE_0c_42SA`, `MAGzMShwHo8` (recoloreados a negro/azul).

## Observaciones de rigor
- **"@mariano acosta.ens2"**: con espacio no es un usuario válido de Instagram; verificar.
- **"Tres laboratorio de Ciencias"** → falta concordancia: "Tres laboratorios de Ciencias".
- **"ex alumnos"** sobre fotos de figuras públicas: verificar que efectivamente sean ex alumnos y que haya permiso/crédito de las fotos.
- Fecha "Viernes 11/9" del post del Día del Maestro: 11/9/2026 fue viernes ✔ (calendario).
- Plazo de inscripción "del 5 de octubre al 6 de noviembre": verificar contra el calendario oficial del GCBA antes de republicar.

## Pendientes
- Leer la revista TARDE Y MAÑANA (portada e interiores) y las piezas de elecciones para ver si comparten el sistema.
- Confirmar nombres de fuentes en Canva.
