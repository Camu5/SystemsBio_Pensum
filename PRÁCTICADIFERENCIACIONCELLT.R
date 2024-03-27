###By Caballero Rosas Santiago; BIOLOGÍA DE SISTEMAS; DIFERENCIACIÓN DE CÉLULAS INMUNITARIAS T

#Cargamos el directorio
setwd("C:/Users/HOME/Desktop/BIOLOGÍA DE SISTEMAS/CD4+/")


#Cargamos las dependencias
library(BoolNet) 
library(igraph)


#Cargamos la red -> "net"
net <- loadNetwork("RedDiferenciacionCelulasTMarianaEsther.txt") 
net



#Se muestra la red. Podemos graficarla mediante dos métodos: esfera (layout = layout.sphere) o círculo (layout = layout.circle)
plotNetworkWiring(net, layout=layout.sphere, main="RED DIFERENCIACIÓN DE CÉLULAS T")
plotNetworkWiring(net,layout=layout.circle, main="RED DIFERENCIACIÓN DE CÉLULAS T")


#Obtenemos los atractores y los asociamos al objeto "attr".
attr <- getAttractors(net)
attr


# mostrar atractores
#plotAttractors(attr)



#####CASO 1: 0,0,0,0
#Se fijan sólo los siguientes
net_no_inputs <- fixGenes(net, c("IFNGe", "IL2e", "IL4e", "IL21e", "TGFBe", "IL10e"), c(0,0,0,0,0,0))


#Se calculan los atractores
attr_no_inputs <- getAttractors(net_no_inputs) 


#Se calcula el número máximo de atractores
number_attractors = max(attr_no_inputs$stateInfo$attractorAssignment)
number_attractors


#####CONTAR EL NÚMERO DE ATRACTORES CON Gata3 = 0

number_attractors = max(attr_no_inputs$stateInfo$attractorAssignment)

counter_success = 0;
for(AttNumber in 1:number_attractors) {
	AA = getAttractorSequence(attr_no_inputs,AttNumber)
	A = AA[ ,c(3)]
	if (sum(A==1) > 0){

           print("¡GATA 3 ESTÁ ENCENDIDO :(")
          } 
	else {
           counter_success=counter_success + 1
         }
}

#Contamos el número de atractores
number_attractors

#Contamos el número de éxitos.
counter_success

#Cuantificamos el número de cuentas de atracción


#################################################################################################################################################


#####CASO 2: IL2 E IL4 ENCENDIDOS
#Se fijan sólo los siguientes
net_enc <- fixGenes(net, c("IFNGe", "IL2e", "IL4e", "IL21e", "TGFBe", "IL10e"), c(0,1,1,0,0,0))


#Se calculan los atractores
attr_enc <- getAttractors(net_enc) 


#Se calcula el número máximo de atractores
number_attractors=max(attr_enc$stateInfo$attractorAssignment)
number_attractors


#####CONTAR EL NÚMERO DE ATRACTORES CON IL2 e IL4 encendidos

number_attractors1 = max(attr_no_inputs1$stateInfo$attractorAssignment)

counter_success = 0;
for(AttNumber in 1:number_attractors1) {
	AA = getAttractorSequence(attr_no_inputs1,AttNumber)
	A = AA[ ,c(4,5)]
	if (sum(A==c(1,1) > 0){
           counter_success=counter_success + 1
          } 
	else {
           print("¡IL2 o IL4 ESTÁN APAGADOS! :(")
         }
}

#Contamos el número de atractores
number_attractors1

#Contamos el número de éxitos.
counter_success


#################################################################################################################################################


#####CASO 3: AMBIENTES PROINFLAMAROTORIOS
#Se fijan sólo los siguientes
net_enc <- fixGenes(net, c("IFNGe", "IL2e", "IL4e", "IL21e", "TGFBe", "IL10e"), c(0,1,1,0,0,0))


#Se calculan los atractores
attr_enc <- getAttractors(net_enc) 


#Se calcula el número máximo de atractores
number_attractors=max(attr_enc$stateInfo$attractorAssignment)
number_attractors


#####CONTAR EL NÚMERO DE ATRACTORES CON GATA3 APAGADO

number_attractors1 = max(attr_no_inputs1$stateInfo$attractorAssignment)

counter_success = 0;
for(AttNumber in 1:number_attractors1) {
	AA = getAttractorSequence(attr_no_inputs1,AttNumber)
	A = AA[ ,c(3)]
	if (sum(A==1) > 0){

           print("¡GATA3 ESTÁ ENCENDIDO!")
          } 
	else {
           counter_success=counter_success + 1
         }
}

#Contamos el número de atractores
number_attractors1

#Contamos el número de éxitos.
counter_success

#################################################################################################################################################


#####CASO 4: INFG ENCENDIDO
#Se fijan sólo los siguientes
net_enc <- fixGenes(net, c("IFNGe", "IL2e", "IL4e", "IL21e", "TGFBe", "IL10e"), c(1,0,0,0,0,0))


#Se calculan los atractores
attr_enc <- getAttractors(net_enc) 


#Se calcula el número máximo de atractores
number_attractors=max(attr_enc$stateInfo$attractorAssignment)
number_attractors


#####CONTAR EL NÚMERO DE ATRACTORES CON IFNG encendido

number_attractors = max(attr_no_inputs$stateInfo$attractorAssignment)

counter_success = 0;
for(AttNumber in 1:number_attractors) {
	AA = getAttractorSequence(attr_no_inputs,AttNumber)
	A = AA[ ,c(2)]
	if (sum(A==1) > 0){
           counter_success=counter_success + 1
          } 
	else {
          print("¡INFG ESTÁ APAGADO! :(") 
         }
}

#Contamos el número de atractores
number_attractors

#Contamos el número de éxitos.
counter_success

