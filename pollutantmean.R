getwd()
setwd("/Users/sagashin/Desktop/Coursera_R_DS/")

pollutantmean <- function(directory, pollutant, id=1:332){
  df2 <- data.frame()
  for(i in id){
    if(i < 10){
      tn <- paste("0","0",i,".csv",sep = "")
    }
    else if(i >= 10 & i < 100){
      tn <- paste("0",i,".csv",sep = "")
    }
    else {
      tn <- paste(i,".csv",sep = "")
    }
    fn <- paste(getwd(),"/",directory,"/",tn, sep = "")
    df<- read.csv(paste(fn))
    df2 <- rbind(df2,df)
  }
  if(pollutant == 'sulfate'){
    cn <- 2
  }
  else {
    cn <- 3
  }
  mean(df2[,cn], na.rm = TRUE)
}
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 115:135)
pollutantmean("specdata", "nitrate", 23)

#####
