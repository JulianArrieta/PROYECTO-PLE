P_interno <- read_excel("precio interno.xlsx", sheet = "Hoja3")
P_interno$año <- as.numeric(P_interno$año)
P_interno%>%
  ggplot(aes(x = año, y = `Precio interno`))+
  geom_line()+
  geom_point()
area <- total2$totales
precio <- P_interno$`Precio interno`
comparación <- data.frame(años, area, precio )
comparación%>%
  ggplot(aes(x = precio, y = area, color = años))+
  geom_point()+
  geom_smooth(method = "lm", se = F)+
  ggtitle("Precio vs Área")+
  labs(x = "Precio Promedio Anual", y = "Área anual (por miles de hectareas)")
cor(x = area, y = precio, method = "pearson")
