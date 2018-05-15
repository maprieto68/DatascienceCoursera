above10<-function(x){
use<-x>10
x[use] 
}
under<-function(x,y){
  use<-x>y
  x[use]
}
##Meadia por columnas
columnmean<-function(x,removeMV=TRUE){
  nc<-ncol(x)
  #Crear un vector de dim nc donde se guardaran las medias 
  means<-numeric(nc)

  for(i in 1:nc){
  #means[i] se refiere a la posicion en ese vector
    means[i]<-mean(x[,i],na.rm=removeMV)
  }
means
}

#Lexing scoping: create functions as an output 
make.power<-function(n){
  pow<-function(x){
    x^n
  }
  pow
  }

#Este 3 es el argumento n. De la primera funcon
cube<-make.power(3)
#Este 2 es el argumento x. de la funcion pow. En ultimas
#es almacenar la funcion pow en "cube"
cube(2)

cube <- function(x, n) {
  x^3
}

if(x>5){
  y<-0
}

f<-function(x){
  g<-function(y){
    y+z
  }
  z<-4
  x+g(x)
  }
x<-5
y<-if(x<3){
  NA
} else{
  10
}

x<-1:10
if(x[7]>5){
  y<-0
}