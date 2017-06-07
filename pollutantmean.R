
pullutantmean <- function(directory, pollutant, id = 1:332) {
  
  ## 'directory' is a charcter vector of length 1 indicating the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating the name of the pollutant
  ## for which we will calclualte the mean; either "sulfate" or "nitrate"
  
  ## 'id' is an integer vector indicating the monitor ID numbers to be used
  
  ## Return the mean of the pollutant across all monitors list in the 'id' vector (ignoring NA values)
  ## NOTE:  Do not round the result
  
  ## Create an empty array that will be used inside the loop
  pollutantData <- c()
  
  ## Get the files from the directory through the getAllFiles.R function
  completeFilePath <- getAllFiles(directory)
  
  ## Start loop of the third argument (counter)
  for (i in id) {
    ## Get the first file by reading the csv file path
    file <- read.csv(completeFilePath[i], header=TRUE, sep=",")
      ## print(file)
    
    ## Remove all the NA values from the pollutant header 
    removeNAValues <- file[!is.na(file[, pollutant]), pollutant]
      ## print(removeNAValues)
    
    ## Append each of the mean values from the pollutants
    ## into a secondary array to use outside of the first loop
    pollutantData <- c(pollutantData, removeNAValues)
      ## print(pollutantData)
    
  }
  ## print(pollutantData)
  
  ## Perform a mean() function across the new pollutantData data
  meanPollutantValue <- mean(pollutantData)
  
  ## print(meanPollutantValue)
  return(meanPollutantValue)
  
}