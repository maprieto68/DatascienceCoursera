
for(i in 8:9){
  #mydata<-0
  mydata<-read.csv(paste0("C:/Users/mapri/Documents/DatascienceCoursera/specdata/",formatC(i, width=3, flag="0"),".csv"),sep =";")
  #nc<-numeric(2)
  meanpollutant<-numeric(2)
  for(j in 1:2){
    meanpollutant[j]<-mean(mydata$sulfate,na.rm=TRUE)
  }
  
}
meanpollutant