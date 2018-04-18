##DataImportFunction##
#This is a function to import multiple .csv files for use in one correlation analysis. 
#***DAN: does it just load all that are in the folder?
#Datasets will each be named and stored as new R objects
#***DAN: what format will the names follow? You could specify that here, as anyone usng this function will need to know that
#The function will return dataframes from all .csv files. Each dataframe will have its own name. The actual return from the function will be a list of names dataframes that were created.
#***DAN: this above line is nice and precise
#Args
  #workingDIR : calls the working directory where all .csv files to be run in the analysis are stored.
workingD1 <- "~/Google Drive/KU Info/Spring 2018/DataCapentry_EnvironmentalInformatics/hauser_finalProject"
data_import <- function(folder = workingD1) 
{
    setwd(folder)
  #***DAN: this line won't work for me - the folder does not exist on my machine. So I could not knit.
  
    filenames <- list.files(pattern=".*csv")
    numfiles <- length(filenames)
    dfnames <- substr(filenames,1,5) 
    
    ###Load all files
    for(set in 1:numfiles)
    {
      assign(paste0(dfnames[set]), read.csv(filenames[set], header = T))
    } 
  #SoilDatList <- list(CPool, PFrac, Roots) #might go this route to make into a list in the future
}




