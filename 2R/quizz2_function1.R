

function1<-function(x="C:/Users/mapri/Documents/DatascienceCoursera/specdata/",y="sulfate",z)
  
#FIRST ASSIGNMENT: funcion que hace el promedio de las columnas indicadas# LECCION: siempre para definir 
 #la funcion se requiere poner valores predeterminados de los argumentos dentro de la funcion, luego se pueden cambiar.  
  
pollutantmean<-function(y,z=1:332){
  meanpollutant<-numeric(length(z))
   pos<-1
   SUMA<-0
    for(i in z){
      mydata<-0
      mydata<-read.csv(paste0("C:/Users/mapri/Documents/DatascienceCoursera/specdata/",formatC(i, width=3, flag="0"),".csv"))
        
      if (y=="sulfate"){SUMA[pos:(pos+nrow(mydata)-1)]<-mydata$sulfate
      pos<-pos+nrow(mydata)
          
      }
      else {
        SUMA[pos:(pos+nrow(mydata)-1)]<-mydata$nitrate
        pos<-pos+nrow(mydata)
         }
   
  }
  meanpollutant<-mean(SUMA,na.rm=TRUE)
  meanpollutant
  }
  

pollutantmean("nitrate")

