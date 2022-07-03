andina <- c('N.santander', 'Santander', 'Boyacá', 'Cundinamarca', 'Tolima', 'Huila',
            'Antioquia', 'Caldas', 'Quindío', 'Risaralda', 'Cauca', 'Nariño', 'V. del Cauca' )
andina_num <- c(17, 21, 4, 11, 22, 12, 1, 5, 19, 20, 8, 17, 23)
randina <- area_anual[andina_num, ]
randina2 <- randina[, -1]
tandina <- t(randina2) 
n.santander <- tandina[, 1]
santander <- tandina[, 2]
boyaca <- tandina[, 3]
cundinamarca <- tandina[, 4]
tolima <- tandina[, 5]
huila <- tandina[, 6]
antioquia <- tandina[,7]
caldas <- tandina[, 8]
quindio <- tandina[, 9]
risaralda <- tandina[, 10]
randina3 <- data.frame(años, n.santander, santander, boyaca, cundinamarca, 
                       tolima, huila, antioquia, caldas, quindio, risaralda)
R_andina <- melt(randina3, id.vars = "años")
R_andina%>%
  ggplot(aes(x = años, y = value, color = variable))+
  geom_line(lwd = 0.7)+
  guides(color = guide_legend(title = "Departamentos"))+
  ggtitle("Área cultivada con café total (Región Andina)")+
  labs(x = "Año", y = "Miles de Hectareas")+
  scale_color_discrete(labels = andina)
  
  
  