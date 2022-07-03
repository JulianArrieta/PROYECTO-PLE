orinoquia <- c('Arauca', 'Casanare', 'Meta')
orinoquia_num <- c(2, 7, 15)
rorinoquia <- area_anual[orinoquia_num, ]
rorinoquia2 <- rorinoquia[, -1]
torinoquia <- t(rorinoquia2)
arauca <- torinoquia[, 1]
casanare <- torinoquia[, 2]
meta <- torinoquia[, 3]
rorinoquia3 <- data.frame(años, arauca, casanare, meta)
R_orinoquia <- melt(rorinoquia3, id.vars = "años")
R_orinoquia%>%
  ggplot(aes(x = años, y = value, color = variable))+
  geom_line(lwd = 0.7)+
  guides(color = guide_legend(title = "Departamentos"))+
  ggtitle("Área cultivada con café total (Región Orinoquía)")+
  labs(x = "Año", y = "Miles de Hectareas")+
  scale_color_discrete(labels = orinoquia)
