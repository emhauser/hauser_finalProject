##Data_Extrapolation_Function##
#This function will take dataframes that contain measured soil variables and make a smooth curve of each variable vs. soil depth
#The function will use the smoothed curve to extrapolate a soil response variable value for every centimeter in the soil profile
#The function will store each vector of responses and merge those vectors into a single dataframe after it extrapolates all the resonse variable sets
#The function will return a single dataframe with all the response variables. 

#Args:
  #soilDatSet: This is a dataframe from which the user is extrapolating datapoints via linear interpolation

#Initial pseudocode:
#Data_Fill <- function(soilDatSets=SoilDatList)
#{
  #soilDat <- Make and empty dataframe into which columns of data may be added
  #for(set in soilDatSets)
  #{
    #plot(responseVar ~ soil depth)
    #make as smooth curve over the points
    #extrapolate a value at each 1 cm depth up to 2m
    #put values in a vector
    #soilDat[set] <- new vector becomes a dataframe column
  #}
  #return(soilDat)
#}


#Function that produces a plot and a set of response variable points generated using linear interpolation between sampled datapoints, as well as a plot of extrapolated and measured points.
data_fill <- function (soilDatSet)
{
  x <-soilDatSet[,2]
  y <- soilDatSet[,1]
df1 <- data.frame(x,y)
dfOrdered <- df1
plot(x=dfOrdered$x,y=dfOrdered$y, main = "approx(.) and approxfun(.)", ylim = c(180,0))
demo <- (approx(y=dfOrdered$x, x=dfOrdered$y, xout=seq(4,175)))
plot(demo$x~demo$y, ylim = c(180,0))
return(demo$y)
}

#Then Produce a dataframe with each extrapolated response variable
#This could be more modular. I need to make my dataframes into a vector. However, I'm having trouble getting my function to run when I do this.
#To make a vector, I think I should do this:
# soilDataSets <- as.vector(PiFra, PoFra, EOC.c, AP.cs, AP.EO)
  
SoilSummDat <- as.data.frame(4:175)
colnames(SoilSummDat) <- "Depth"
#SoilSummDat$Pi <- data_fill(PiFra)
SoilSummDat$Po <- data_fill(PoFra)
SoilSummDat$EOC <- data_fill(EOC.c)
#SoilSummDat$AP <- data_fill(AP.cs)
#SoilSummDat$APEOC <- data_fill(AP.EO)
SoilSummDat
