#Coded by Santiago Caballero 
#EXAMEN I - BIOLOGÍA DE SISTEMAS

#CARGAMOS LA LIBRERÍA 
library(BoolNet)

#CARGAMOS EL DIRECTORIO
setwd("C:/Users/HOME/Desktop/BIOLOGÍA DE SISTEMAS/EXAMEN")

#CARGAMOS LA RED Y LA LEEMOS
net <- loadNetwork("RED.txt")
net 
#Boolean network with 3 genes
#Involved genes: cIts Lac1 IPTG
# Transition functions:
# 1. cIts = IPTG & !Lac1
# 2. Lac1 = Lac1 & !cIts
# 3. IPTG = IPTG

plotNetworkWiring(net)

#OBTENEMOS LOS ATRACTORES DE LA RED
attr <- getAttractors(net)
attr
#Attractor 1 is a simple attractor consisting of 1 state(s) and has a basin of 3 state(s)
#Attractor 3 is a simple attractor consisting of 1 state(s) and has a basin of 3 state(s)
plotAttractors(attr)

#PREGUNTA 5 - SE CALCULA QUÉ PASA SI IPTG ESTÁ PRESENTE
path1 <- getPathToAttractor(net, c(0,0,1))
path1
#SE INHIBE
#cIts Lac1 IPTG
#1    0    0    1
#2    1    0    1


#PREGUNTA 6 - QUÉ OCURRE CON LA EXPRESIÓN DE Lac1 SI cIts ESTÁ SIEMPRE ACTIVO


#PREGUNTA 7 - QUÉ PASA SI cIts ES UN ACTIVADOR EN LUGAR DE INHIBIDOR 
#CARGAMOS LA RED MOD Y LA LEEMOS
net2 <- loadNetwork("RED_Alt.txt")
net2 
#Boolean network with 3 genes
#Involved genes: cIts Lac1 IPTG
#Transition functions:
#1. cIts = IPTG & Lac1
#2. Lac1 = Lac1 | cIts
#3. IPTG = IPTG
plotNetworkWiring(net2)

#OBTENEMOS LOS ATRACTORES
attr2 <- getAttractors(net2)
attr2
plotAttractors(attr2)
plotStateGraph(attr2)

#OBSERVAMOS QUÉ PASA
path2 <- getPathToAttractor(net2, c(1,0,0))
path2
#cIts Lac1 IPTG
#1    1    0    0
#2    0    1    0

#PREGUNTA 8 - CAMBIO DE COMPUERTA LÓGICA
#CARGAMOS LA RED MOD Y LA LEEMOS
net3 <- loadNetwork("RED_Alt1.txt")
net3 
#Boolean network with 3 genes
#Involved genes: cIts Lac1 IPTG
#Transition functions:
#1. cIts = IPTG & Lac1
#2. Lac1 = Lac1 & cIts
#3. IPTG = IPTG
plotNetworkWiring(net3)

#OBTENEMOS LOS ATRACTORES
attr3 <- getAttractors(net3)
attr3
plotAttractors(attr3)
plotStateGraph(attr3)

#OBSERVAMOS QUÉ PASA
path3 <- getPathToAttractor(net3, c(1,1,0))
path3
#cIts Lac1 IPTG
#1    1    0    0
#2    0    1    0