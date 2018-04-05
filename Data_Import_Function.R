##DataImportFunction##
#This is a function to import multiple .csv files for use in one correlation analysis. 
#Datasets will each be named and stored as new R objects 
#The function will return dataframes from all .csv files. Each dataframe will have its own name.

#Args
  #csv : calls the names of the csv files to import. May be a single csv or a vector of csv files

help("list.files")
data_import <- function(csv)
{
  {
    filenames <- list.files(pattern=".*csv")
filenames
    ##Create list of data frame names without the ".csv" part 
    names <-substr(filenames,1,3)
    names

    ###Load all files
    for(i in names)
      {
          filepath <- file.path(paste(i,".csv",sep=""))
          assign(i, read.delim(filepath,
                       colClasses=c("character","factor",rep("numeric",4)),
                       sep = "\t"))
          for(i in names)
          {
            oname = paste(i, sep="")
            assign(oname, read.csv(paste(oname, ".txt", sep="")))
          }
      }
  }
}
  soilDatFrame <- read.csv(csv)
  
  #return(SoilDatFrame[set])
  }
}