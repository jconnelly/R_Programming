getAllFiles <- function(directory) {
  
  ##  Sorry the Java/OO developer in me thought 
  ##  this should be a reusable function/object
  ##  instead of repeating this for each assignment
  
  ## Get the files from the directory
  fileNames <- list.files(directory)
  ## Get the full file path
  completeFilePathArray <- paste(directory, fileNames, sep="/")
  
  ## Return the full file path array containing all the files
  return(completeFilePathArray)
  
}