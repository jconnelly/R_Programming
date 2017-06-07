complete <- function(directory, id = 1:332) {
  ## 'director' is a character vector of length 1 indicationg
  ## the lcoation of the CSV files
  
  ## 'id' is an integer vecotr indication the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number an d'nobs' is the 
  ## number of complete cases
  
  ## Get the files from the directory through the getAllFiles.R function
  files <- getAllFiles(directory)
  
  ## Get the length of the second argument (id) to determine the size of the dataCollection variable
  idLength <- length(id)
  dataCollection <- rep(0, idLength)
   
  ## print(dataCollection)
  dataCollectionIncrementor <- 1
   
  for (i in id) {
    ## Get the first file by reading the csv file path
    currentFile <- read.csv(files[i], header=TRUE, sep=",")
    
    ## Sum up the file contents into the dataCollection array at the index specified
    ## The complete.cases (?complete.cases) will return a vector object, so assign it to the indexed variable
    dataCollection[dataCollectionIncrementor] <- sum(complete.cases(currentFile))
    
    ## Increment the counter before going to the next index in the for loop
    dataCollectionIncrementor <- dataCollectionIncrementor + 1
  }
  ## print(dataCollection)
  
  ## Create a data.frame, set the column names and values and assign to a variable
  dataResults <- data.frame(id = id, nobs = dataCollection)
  ## print(dataResults)
  
  ## Return the data.frame back
  return(dataResults)
  
}