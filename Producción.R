Produccion <- read_excel("Producción.xlsx", sheet = "Hoja4")
Produccion$años <- as.numeric(Produccion$años)
prod <- Produccion$Producción
comparación <- cbind(comparación, prod)
Produccion%>%
  ggplot(aes(x = años, y = Producción))+
  geom_line()+
  geom_point()+
  ggtitle("Producción de café anual")+
  labs(x = "Años", y = "Miles de sacos de 60 Kg")
PvA <- comparación%>%
  ggplot(aes(x = area, y = prod, color = años))+
  geom_point()+
  geom_smooth(method = "lm", se = F)+
  ggtitle("Precio vs Área")
cor(x = comparación$area, y = comparación$prod, method = "pearson")
PdvPr <- comparación%>%
  ggplot(aes(x = prod, y = precio, color = años))+
  geom_point()+
  geom_smooth(method = "lm", se = F)
cor(x = comparación$prod, y = comparación$precio, method = "pearson")
