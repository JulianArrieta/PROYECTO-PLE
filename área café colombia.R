columnas <- colnames(rcaribe2)
Departamento <- c("Total")
"2002" <- colSums(area_anual[, "2002"], na.rm = T)
"2003" <- colSums(area_anual[, "2003"], na.rm = T)
"2004" <- colSums(area_anual[, "2004"], na.rm = T)
"2005" <- colSums(area_anual[, "2005"], na.rm = T)
"2006" <- colSums(area_anual[, "2006"], na.rm = T)
"2007" <- colSums(area_anual[, "2007"], na.rm = T)
"2008" <- colSums(area_anual[, "2008"], na.rm = T)
"2009" <- colSums(area_anual[, "2009"], na.rm = T)
"2010" <- colSums(area_anual[, "2010*"], na.rm = T)
"2011" <- colSums(area_anual[, "2011*"], na.rm = T)
"2012" <- colSums(area_anual[, "2012*"], na.rm = T)
"2013" <- colSums(area_anual[, "2013*"], na.rm = T)
"2014" <- colSums(area_anual[, "2014*"], na.rm = T)
"2015" <- colSums(area_anual[, "2015*"], na.rm = T)
"2016" <- colSums(area_anual[, "2016*"], na.rm = T)
"2017" <- colSums(area_anual[, "2017*"], na.rm = T)
"2018" <- colSums(area_anual[, "2018*"], na.rm = T)
"2019" <- colSums(area_anual[, "2019*"], na.rm = T)
"2020" <- colSums(area_anual[, "2020*"], na.rm = T)
"2021" <- colSums(area_anual[, "2021*"], na.rm = T)
total <- data.frame(Departamento, `2002`, `2003`, `2004`, `2005`, `2006`,
                    `2007`,`2008`, `2009`, `2010`, `2011`, `2012`, `2013`,
                    `2014`, `2015`, `2016`, `2017`, `2018`, `2019`, `2020`,
                    `2021`)
colnames(total) <- colnames(area_anual)

totales <- total[,-1]
totales <- t(totales)
totales <- totales[, 1]
total2 <- data.frame(años, totales)
rownames(total2) <- 1:nrow(total2)
total2%>%
  ggplot(aes(x = años, y = totales))+
  geom_line()+
  geom_point()+
  ggtitle("Área cultivada con café total (Toda Colombia)")+
  labs(x = "Año", y= "Miles de Hectareas")
