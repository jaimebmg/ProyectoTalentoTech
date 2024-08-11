mtcars=read.csv("C:\\Users\\jaime\\Downloads\\mtcars.csv")
str(mtcars)
?mtcars
class(mtcars$vs)
mtcars$vs <- as.logical(mtcars$vs)
class(mtcars$vs)
str(mtcars)
mtcars$am <- as.logical(mtcars$am)
class(mtcars$am)
str(mtcars)
summary(mtcars)
mtcars$wt <- mtcars$wt * 453.592
mtcars.new <- transform(mtcars,wt=wt*453.592)
#install.packages("plyr")
mtcars_filtered <- mtcars[mtcars$cyl < 6, ]
mtcars_filtered
head(mtcars)
tail(mtcars)
#install.packages("dplyr")
glimpse(mtcars)
my_df <- mtcars[1:4,]
my_df
my_df2 <- mtcars[6:12,]
my_df2
colnames(mtcars)
colnames(mtcars) <- c("Modelo", "MPG", "Cilindros", "Desplazamiento", "HP", "Relación_Eje", "Peso_kg", "1/4_milla_seg", "Cilindros_en_V", "Transmisión_Manual", "Engranajes", "Carburadores")
str(mtcars)
mean(mtcars$MPG)
sd(mtcars$MPG)

data_cilindros <- mtcars %>% 
  group_by(Cilindros) %>%
  summarise( 
    count = n(),
    avg_mpg = mean(MPG), 
    avg_hp = mean(HP) ) %>% 
  as_tibble() 
print(data_cilindros)
# Instalar y cargar la librería ggplot2 para visualizaciones

ggplot(mtcars, aes(x = Peso_kg)) +
  geom_histogram(binwidth = 100) +
  labs(title = "Distribución del Peso", x = "Peso (kg)", y = "Frecuencia")