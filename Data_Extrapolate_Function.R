##Data_Extrapolation_Function##
#This function will take dataframes that contain measured soil variables and make a smooth curve of each variable vs. soil depth
#The function will use the smoothed curve to extrapolate a soil response variable value for every centimeter in the soil profile
#The function will store each vector of responses and merge those vectors into a single dataframe after it extrapolates all the resonse variable sets
#The function will return a single dataframe with all the response variables. 

#Args:
  #soilDatSets: This is a list containing names of the dataframes imported in the data_import function

Data_Fill <- function(soilDatSets=SoilDatList)
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


PFrac
Roots

OrderedDat <- PFrac[order(PFrac$Pi.Fract),]
xDat <- OrderedDat$Pi.Fract
yDat <- OrderedDat$Depth

plot(x=xDat, y=yDat, ylim = c(180,0))
points(approx(x=xDat, y=yDat, n=200), col = 2, pch = "*")
demo <- (approx(x=xDat, y=yDat, xout=seq(1,200)))
demo

plot(demo$x~demo$y, ylim = c(180,0))
str(demo)
demo
help("approx")
install.packages("zoopackage")

points(approx(x, y, method = "constant"), col = 4, pch = "*")

f <- approxfun(x, y)
curve <- curve(f(x), 0, 10, col = "green")
points(x, y)
is.function(fc <- approxfun(x, y, method = "const")) # TRUE
curve(fc(x), 0, 10, col = "darkblue", add = TRUE)




####Other attempt

SoilSummDat <- as.data.frame(4:175)
x <- PFrac$Po.Fract
y <- PFrac$Depth
df1 <- data.frame(x,y)
dfOrdered <- df1
plot(x=dfOrdered$x,y=dfOrdered$y, main = "approx(.) and approxfun(.)", ylim = c(180,0))
demo <- (approx(y=dfOrdered$x, x=dfOrdered$y, xout=seq(4,175)))
plot(demo$x~demo$y, ylim = c(180,0))
SoilSummDat <- cbind(SoilSummDat, demo$y)



