amazonica <- c('Caquetá', 'Putumayo')
amazonica_num <- c(6, 18)
ramazonica <- area_anual[amazonica_num, ]
ramazonica2 <- ramazonica[, -1]
tamazonica <- t(ramazonica2)
caqueta <- tamazonica[, 1]
putumayo <- tamazonica[, 2]
ramazonica3 <- data.frame(años, caqueta, putumayo)
R_amazonica <- melt(ramazonica3, id.vars = "años")
R_amazonica%>%
  ggplot(aes(x = años, y = value, color = variable))+
  geom_line(lwd = 0.7)+
  guides(color = guide_legend(title = "Departamentos"))+
  ggtitle("Área cultivada con café total (Región Amazonica)")+
  labs(x = "Año", y = "Miles de Hectareas")+
  scale_color_discrete(labels = amazonica)
hola
