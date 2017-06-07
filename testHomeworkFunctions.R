testHomeworkFunctions <- function(directory) {
  
  ## This file will run through each of the functions created for the homework
  ## and will output the values from the functions
  
  ##  Setup the working directory
  setwd("/Users/jconnelly/projects/coursera_r_class/")
  directory <- paste(getwd(), directory, sep="/")
  ##print(directory)
  
  ## PollutantMean function testing
  print("-----------------------")
  print("Pollutant Mean Function")
  print("-----------------------")
  pm1 <- pollutantmean(directory, "sulfate", 1:10)
  pm2 <- pollutantmean(directory, "nitrate", 70:72)
  pm3 <- pollutantmean(directory, "nitrate", 23)
  answers <- c(pm1, pm2, pm3)
 
  print(pm1)
  print(pm2)
  print(pm3)
  
  ## Complete function testing
  print("-----------------------")
  print("Complete Function")
  print("-----------------------")
  c1 <- complete(directory, 1)
  c2 <- complete(directory, c(2, 4, 8, 10, 12))
  c3 <- complete(directory, 30:25)
  c4 <- complete(directory, 3)
  
  print(c1)
  print("******")
  print(c2)
  print("******")
  print(c3)
  print("******")
  print(c4)
  
  ## Corr function testing
  print("-----------------------")
  print("Corr Function")
  print("-----------------------")
  cr1 <- corr(directory, 150)
  cr2 <- corr(directory, 400)
  cr3 <- corr(directory, 5000)
  cr4 <- corr(directory)
  
  print(head(cr1))
  print(summary(cr1))
  print("******")
  print(head(cr2))
  print(summary(cr2))
  print("******")
  print(summary(cr3))
  print(length(cr3))
  print("******")
  print(summary(cr4))
  print(length(cr4))
  
}