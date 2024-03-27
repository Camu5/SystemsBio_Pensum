###By Caballero Rosas Santiago
##INTRODUCCIÓN SUAVE A R

#Si se busca escribir un comentario, se escribe después de un "#" o varios. 
#Por ejemplo, así. <-- COMENTARIO. 

#Si se quiere mostrar un texto, se utiliza la función print(). 
#Por ejemplo, imprimamos el texto "Hola Mundo"
print("Hello World")

#También se pueden reaizar matemáticas en R
#Suma (1+1=2)
1+1
#Suma, resta y multiplicación (combinados)
12+34*43
#Exponentes (x^n)
5^2
#Raíz cuadrada -> sqrt()
sqrt(36)
#Función coseno, seno,
cos(-pi)
cos(3*pi)
sin(2)

#Para orientar objetos se utiliza "<-"; c() para concatenar funciones. 
OBJETO1 <- c(1,2,3,4,5)
#Igualmente se puede usar "="
OBJETO2 = c(5,6,7,8)

#Un corchete con valor "n" después del vector, te la la entrada "n"
v_dna[2]

#La función lenght() imprime la longitud del vector
lenght(v_dna)

#Se puede utilizar 1:n en el vectro, da un vector con entradas desde 1 hasta n.
vector <- c(1:10)
vector

#Para hacer matrices, se pueden ocupar las siguientes funciones. 
#cbind() une a los vectores como columnas de una matriz
matriz1 <- cbind(OBJETO1,v_dna)
matriz1
#rbind() une a los vectores como filas de una matriz
matriz2 <- rbind(OBJETO1,v_dna)
#Para visualizar las cosas, se puede utilizar view()
view(matriz1)

#Funciones
#Para definir una función, se crea un objeto, después de usa function() y se orienta
funcion1 <- function(x,y,z){
	return(x-3*y+z-1)
}

a <- 10
b <- 7
c <- 5
funcion(a,b,c)

#Condicionales
#Si se busca ver cuándo "funcion1" es positiva o cuando es menor que cero.
if(funcion1<0){
	print("Función1 es negativa")
}	else{
	print("Función1 es positiva")
}

#EJERCICIO 1: CONTEOS
nrep <- 10 #Número de muestra 
n <- 100 #Tamaño de la muestra de cada muestra.
conteo <- numeric(nrep) #Objeto que almacena el conteo. 
#Numeric da un objeto con "nrep entradas" iguales a cero. 
conteo

#Para cada entrada del vector conteo
for (i in 1:nrep) {
	#runif() es la distribución uniforme
	#Asignaremos para cada i 100 valores entre 1 y 3.
	x <- runif(n=n, min=1, max=3)
	#Sum() suma, vemos que las "x´s" mayores a 2.5"
	conteo[i] <- sum(x >= 2.5)	
}
#Al final nos da el total de valores mayores a 2.5
conteo

#EJERCICIO 2: Salario Semanal 
#Definamos sal como el salario básico por semana
sal <- 100000
#Definamos hlab como horas laboradas por semana
hlab <- 48

#Si quisieramos saber si un empleado trabaja más de las horas necesarias 40:
if (hlab > 40){
	#Calculamos el extra de horas
	h_extra <- hlab - 40
	#Hacemos la cuenta de pago por horas extra
	sal_extra <- h_extra * 5000
	#Suma final
	sal <- sal + sal_extra 
}
#Evaluemos el salario ganado
sal

#EJERCICIO 3: 
#Definamos un número de experimentos
n_exp <- 5
#Definamos un número de cultivos en cada experimento
n <- 10
#Definamos un objeto para almacenar la cantidad de bacterias. numeric() da un vector con "n_exp" entradas iguales a cero.
poblaciones <- numeric(n_exp)

#Para cada entrada del vector de número de experimentos
for (i in i:n_exp){
	#Asignaremos para cada i 100 valores entre 50000 y 80000
	x <- runif(n=n, min=50000, max=80000)
	#Veamos las "x´s"/poblaciones mayores a 70000
	poblaciones [i] <- sum (x <= 70000)
}

#Nos va a dar el tota de valores menores o iguales a 700000
poblaciones

