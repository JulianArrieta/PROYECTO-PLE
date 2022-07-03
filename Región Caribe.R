area_anual <- read_excel("D:/JULIAN/Documentos UNAL/TRABAJOS/PLE II/Proyecto/area anual.xlsx")
caribe <- c('Bolivar', 'Magdalena', 'La Guajira', 'Cesar')

rcaribe <- area_anual[c(1,3,14,13,9),]
rcaribe2 <- rcaribe[, -1]
años <- colnames(rcaribe2)
años <- c(2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021)
tcaribe <- t(rcaribe2)
bolivar <- tcaribe[, 2]
magdalena <- tcaribe[, 3]
guajira <- tcaribe[, 4]
cesar <- tcaribe[, 5]
rcaribe3 <- data.frame(años, bolivar, magdalena, guajira, cesar) 
rownames(rcaribe3) <- 1:nrow(rcaribe3)
R_Caribe <- melt(rcaribe3, id.vars = "años")
R_Caribe%>%
  ggplot(aes(x = años, y = value, color = variable))+
  geom_line(lwd = 0.7)+
  guides(color = guide_legend(title = "Departamento"))+
  ggtitle("Área cultivada con café total (Región Caribe)")+
  labs(x = "Año", y = "Miles de Hectareas")+
  scale_color_discrete(labels = caribe)
mxd <- area_anual[which((area_anual$Departamento == 'Bolivar') | (area_anual$Departamento == 'Cesar')) ,]





