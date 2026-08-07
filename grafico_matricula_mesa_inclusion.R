#=========================================================
# LIBRERÍAS
#=========================================================

library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(ggrepel)

#=========================================================
# CARGAR BASES
#=========================================================

base_matricula <- read_excel("databaseMATRICULA.xlsx")

base_CUD <- read_excel(
  "databaseCUD.xlsx",
  col_names = FALSE
)

#=========================================================
# RENOMBRAR COLUMNAS
#=========================================================

names(base_matricula)[1] <- "Año"
names(base_CUD) <- c("Año", "CUD")

#=========================================================
# PASAR A FORMATO LARGO
#=========================================================

matricula_long <- base_matricula %>%
  pivot_longer(
    cols = -Año,
    names_to = "Serie",
    values_to = "Cantidad"
  )

cud_long <- base_CUD %>%
  rename(Cantidad = CUD) %>%
  mutate(
    Serie = "Mesa de inclusión"
  )

datos <- bind_rows(matricula_long, cud_long)

# Etiquetas (último año)
etiquetas <- datos %>%
  group_by(Serie) %>%
  filter(Año == max(Año))

#=========================================================
# ESPACIO PARA LAS ETIQUETAS
#=========================================================

# Rangos de los datos: sirven para calcular desplazamientos
# proporcionales en vez de valores fijos.
rango_x <- diff(range(datos$Año))
rango_y <- diff(range(datos$Cantidad, na.rm = TRUE))

# Panel que se reserva a la derecha para que entren las etiquetas.
# Subir a 0.35-0.40 si el texto sigue quedando justo.
margen_derecho <- rango_x * 0.30

#=========================================================
# GRÁFICO
#=========================================================

ggplot(
  datos,
  aes(
    x = Año,
    y = Cantidad,
    color = Serie,
    group = Serie
  )
) +

  geom_line(linewidth = 1.5) +
  geom_point(size = 3.2) +

  # Etiquetas de los idiomas
  geom_text_repel(
    data = etiquetas %>% filter(Serie != "Mesa de inclusión"),
    aes(label = Serie),
    direction = "y",
    hjust = 0,
    nudge_x = 0.15,
    xlim = c(max(datos$Año) + 0.15, NA),
    segment.color = NA,
    show.legend = FALSE,
    size = 4.5
  ) +

  # Etiqueta de Mesa de inclusión
  geom_text(
    data = etiquetas %>% filter(Serie == "Mesa de inclusión"),
    aes(label = Serie),
    hjust = 0,
    nudge_x = rango_x * 0.07,
    nudge_y = rango_y * 0.03,
    color = "black",
    fontface = "bold",
    size = 4.5,
    show.legend = FALSE
  ) +

  scale_color_manual(values = c(
    "Francés" = "#E41A1C",
    "Italiano" = "#377EB8",
    "Inglés C" = "#4DAF4A",
    "Inglés D" = "#984EA3",
    "Mesa de inclusión" = "black"
  )) +

  scale_x_continuous(
    breaks = sort(unique(datos$Año)),
    limits = c(min(datos$Año), max(datos$Año) + margen_derecho),
    expand = expansion(mult = c(0.02, 0.02))
  ) +

  # Permite dibujar texto fuera del panel sin que se recorte
  coord_cartesian(clip = "off") +

  labs(
    x = "Año",
    y = "Cantidad"
  ) +

  theme_minimal(base_size = 15) +

  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    legend.position = "none",
    axis.title = element_text(face = "bold"),
    plot.margin = margin(10, 60, 10, 10)
  )

#=========================================================
# GUARDAR (opcional)
#=========================================================

# ggsave(
#   "grafico_matricula.png",
#   width = 10, height = 6, dpi = 300, bg = "white"
# )
