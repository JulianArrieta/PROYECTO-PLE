pacifico <- c('Cauca', 'Chocó', 'Nariño', 'Valle Del Cauca' )
pacifico_num <- c(8, 10, 16, 23)
rpacifica <- area_anual[pacifico_num, ]
rpacifica2 <- rpacifica[, -1] 
tpacifica <- t(rpacifica2) 
cauca <- tpacifica[, 1]
choco <- tpacifica[, 2]
narino <- tpacifica[, 3]
valle <- tpacifica[, 4]
rpacifica3 <- data.frame(años, cauca, choco, narino, valle)
rownames(rpacifica3) <- 1:nrow(rpacifica3)
R_pacifica <- melt(rpacifica3, id.vars = "años")
R_pacifica%>%
  ggplot(aes(x = años, y = value, color = variable))+
  geom_line(lwd = 0.7)+
  guides(color = guide_legend(title = "Departamentos"))+
  ggtitle("Área cultivada con café total (Región Pacifica)")+
  labs(x = "Año", y = "Miles de Hectareas")+
  scale_color_discrete(labels = pacifico)
  
