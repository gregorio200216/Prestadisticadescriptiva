getwd()
nuevo_dir <-"c:/Prestadisticadescriptiva"
setwd(nuevo_dir)
getwd()
dir()
list.files()
if (file.exists(nuevo_dir)){
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else{
  cat("fallo al crear directorio: ", nuevo_dir, "\n")
}

x = c(1,2,3,4,5)
y = c(9.1,2.4,7.5,1.3,3.4)
print(y)
length(x)
length(y)

# Estrucutura de datos que almacena cadena de caracteres y o lógicos, 
# Los números de tipo integer son precisos y no tienen parte decimal. Son ideales cuando se trabaja con datos que son naturalmente números enteros, como recuentos o índices.
# Los números de tipo double tienen parte decimal y pueden representar una gama más amplia de valores, pero a veces pueden tener pequeños errores de redondeo debido a la representación binaria de los números de punto flotante.

#1
x+y
x-y
x*y
x/y
x^y

#2

y^2
#3

y*10
#4
y+25

#5
max(y)

#6
min(y)

#8
abs(y)

#9
sqrt(y)
#10
sum(y)

#11
lista = list(c(1,2,3,4,5,9.1,2.4,7.5,1.3,3.4))
print(lista)
typeof(lista)
str(lista)
view(lista)
#Pasa a valor double porque en la lista también hay decimales y para tenerlo en el mismo valor todo

#12
is.na(lista)

#13

z = c(29,NA,12,46,73)

#14
mean(z, na.rm = TRUE)
# para conseguir que la media tenga un resultado se debe añadir un valor aleatoriamente

#15
matriz= matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), ncol=3, nrow=4)
print(matriz)
#Se colocan en columnas por defecto

#16
matriz= matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), ncol=3, nrow=4, byrow=T)
print(matriz)

#17

a = matrix(c(1:9), ncol=3, nrow=3, byrow=F)
print(a)
b = matrix(c(10:18), ncol=3, nrow=3, byrow=F)
print(b)

#18
suma_matriz = a+b
print(suma_matriz)

resta_matriz = a-b
print(resta_matriz)
#Obtenemos todo en el resultado -9 porque es el resultado de posición por posición

#19
matriz1= matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), ncol=4, nrow=3, byrow=T)
print(matriz1)

#20
matriz_mult = matriz1*3
print(matriz_mult)

#21

matriz_mult = a*b
print(matriz_mult)

#22

matriz_mult[2,3]
matriz_mult[2, ]
matriz_mult[ ,3]

#PRACTICA

#1

set.seed(25) #Creamos semilla para los números aleatorios
registros = 100

yacimiento = round(rnorm(100, mean = 50, sd = 10))

print(yacimiento)

#2
mean(yacimiento)

#3
median(yacimiento)

#4
mode <- as.numeric(names(sort(table(yacimiento), decreasing = TRUE)[1]))
print(mode)

#5
range(yacimiento)

#6
quantile(yacimiento, .25)

#7
quantile(yacimiento, .75)

#8
var(yacimiento)

#9
sd(yacimiento)

#10
hist(yacimiento)

#11
boxplot(yacimiento, main = "Número de Cuentas", border = "red", horizontal = T)

#12
denso = density(yacimiento)
plot(denso, main = "Gráfico de Densidad", col = "yellow")

#12.5

hist(yacimiento, freq = FALSE, main = "Histograma y densidad",
     ylab = "densidad")

lines(denso, lwd = 2, col = "blue")
plot(lwd = 2, col = "blue",
     main = "Densidad")
rug(jitter(yacimiento))

#13
barplot(yacimiento, names.arg = 1:length(yacimiento), main = "Gráfico de Barras", xlab = "Yacimientos", ylab = "Cuentas", col = "skyblue", border = "black")

#14
set.seed(123)
registros = 10
tipos_artefactos = c("Flecha", "Arco", "Borde", "Punta", "Daga", "Cuenta", "Collar", "Fíbula", "Martillo", "Hacha")
muestras_tipo_artefacto <- sample(tipos_artefactos, 10, replace = TRUE)
print(muestras_tipo_artefacto)
datos <- data.frame(tipos_artefactos = muestras_tipo_artefacto)
print(datos)
table(datos)

material = c("metal", "ceramica", "oseo", "madera", "barro")
muestra_material = sample(material, 10, replace = T)
print(muestra_material)

datos = data.frame(material = muestra_material)
print(datos)
table(datos)

periodo_cultural = c("prehistorico", "protohistorico", "antiguo", "medievo", "moderno", "contemporaneo")
muestra_periodo = sample(periodo_cultural, 10, replace = T)
print(muestra_periodo)

datos = data.frame(periodo_cultural = muestra_periodo)
print(datos)
table(datos)

estado_conservacion = c("bueno", "regular", "mala")
muestra_estado_conservacion = sample(estado_conservacion, 10, replace = T)
print(muestra_estado_conservacion)

datos = data.frame(estado_conservacion = muestra_estado_conservacion)
print(datos)
table(datos)

ubicacion_artefacto = c("estrato1", "estrato2", "estrato3", "estrato4", "estrato5")
muestra_ubicacion_artefacto = sample(ubicacion_artefacto, 10, replace = T)
print(muestra_ubicacion_artefacto)

datos = data.frame(ubicacion_artefacto = muestra_ubicacion_artefacto)
print(datos)
table(datos)

