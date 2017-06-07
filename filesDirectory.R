filesDirectory <- function(directory) {
  
  ## Get the files from the directory
  fileNames <- list.files(directory)
  ## Get the full file path
  completeFilePathArray <- paste(directory, fileNames, sep="/")
  
  ## Return the full file path array containing all the files
  return(completeFilePathArray)
  
}