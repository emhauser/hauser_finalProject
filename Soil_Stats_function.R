##StatisticalAnalysisFunction##
#This function will take a dataframe of soil variables measured at different depths in soil profiles sampled under 2 different land uses.
#It will calculate the mean and standard error of each variable at each depth across replicated plots.
#It will use these to calculate correlations between soil variables and determine if there is an effect of land use.
#In particular I will examine correlations between different phosphorus forms (organic, inorganic, resin, melich, and total) and root carbon exudates (phosphatase enzyme, and extractable organic carbon (EOC), as well as the ratio of phosphatase:EOC), and root density.
#The function will return a dataframe that can be used by subsequent plotting functions that contains columns for mean and SE of each variable and correlations between data variable pairs
#It will also return the statistics calculated as the result of the included ANOVA model

#Args
  #dat: argument specifying the dataset of interest. Dataset has previously been imported and correctly formatted according to previous Data_Import_Function.

soil_stats <- function(dat)
{
  #means <- vector of means of each variable at each depth and land use
  #SE <- vector of standard errors of each variable at each depth and land use
  #corr <- correlations between variables of interest at each depth and land use. This may be a for loop that will find correlations between multiple variables and store them in multiple vectors to be added to the dataframe.
  #landuse <- vector of land use names to be repeated and included in dataframe
  #depths <- vector of soil sampling depths to be included in dataframe
  #ANOVA <- anova model of soilVar1 ~ soilVar2 by depth and land use, accounting for site as a random variable
  
  #soilDat<-as.data.frame(cbind(landuse, depths, means, SE, corr))
  #return(soilDat, ANOVA)
}