##Data_Extrapolation_Function##
#This function will take dataframes that contain measured soil variables and make a smooth curve of each variable vs. soil depth
#The function will use the smoothed curve to extrapolate a soil response variable value for every centimeter in the soil profile
#The function will store each vector of responses and merge those vectors into a single dataframe after it extrapolates all the resonse variable sets
#The function will return a single dataframe with all the response variables. 

#Args:
  #soilDatSets: These are names of the dataframes imported in the data_import function

Data_Fill <- function(soilDatSets)
{
  #soilDat <- Make and empty dataframe into which columns of data may be added
  for(set in soilDatSets)
  {
    #plot(responseVar ~ soil depth)
    #make as smooth curve over the points
    #extrapolate a value at each 1 cm depth up to 2m
    #put values in a vector
    #soilDat[set] <- new vector becomes a dataframe column
  }
  #return(soilDat)
}