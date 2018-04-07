##DataImportFunction##
#This is a function to import multiple .csv files for use in one correlation analysis. 
#Datasets will each be named and stored as new R objects 
#The function will return dataframes from all .csv files. Each dataframe will have its own name.

#Args
  #workingDIR : calls the working directory where all .csv files to be run in the analysis are stored.
workingD1 <- "~/Google Drive/KU Info/Spring 2018/DataCapentry_EnvironmentalInformatics/hauser_finalProject"
data_import <- function(folder = workingD1) 
  {
    setwd(folder)
  
    filenames <- list.files(pattern=".*csv")
    numfiles <- length(filenames)
    dfnames <- substr(filenames,1,5) 
    
    ###Load all files
    for(set in 1:numfiles)
    {
      newDat <- assign(paste0(dfnames[set]), read.csv(filenames[set], header = T))
    }
  SoilDatList <- list(CPool, PFrac, Roots)
}

data_import(workingD1)


