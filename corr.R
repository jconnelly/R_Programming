
## setwd("/Users/jconnelly/projects/coursera_r_class/")

corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of lenght 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completey observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE:  Do not round the result;
  
  ## Get the files from the directory through the getAllFiles.R function
  files <- getAllFiles(directory)
  
  ## Load the full table using the complete.R function created earlier
  fullTableLoaded <- complete(directory, 1:332)
  
  ## Get the nobs column data
  tableNobs <- fullTableLoaded$nobs
  ## print(tableNobs)
  
  ## Get the ids column data where the 'threshold' is greater than or equal to
  tableIds <- fullTableLoaded$id[tableNobs > threshold]
  ## print(tableIds)
  
  ## Get the length of the tableIds to determine the size of the dataCollection variable
  idLength <- length(tableIds)
  dataCollectionVar <- rep(0, idLength)
  
  ## Increment variable for the array
  dataCollectionIncrementor <- 1
  ##print(dataCollectionIncrementor)
  
  for (i in tableIds) {
    
    ## Get the first file by reading the csv file path
    currentFile <- read.csv(files[i], header=TRUE, sep=",")
    ##print( currentFile)
    
    dataCollectionVar[dataCollectionIncrementor] <- cor(currentFile$sulfate, currentFile$nitrate, use="complete.obs")
    dataCollectionIncrementor <- dataCollectionIncrementor + 1
    
  }
  
  ##print(dataCollection)
  return(dataCollectionVar)
  
}