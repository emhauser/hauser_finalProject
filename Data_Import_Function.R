##DataImportFunction##
#This is a function to scrape a datatable from a pdf and append the data to an existing .csv file. 
#The two datasets will be merged according to common columns of 'land use' and 'site'
#The function will return a single dataframe with columns from both the pdf and the .csv

#Args
  #csv : calls the name of the csv file to import
  #pdf : calls pdf for data scraping

data_import <- function(csv, pdf)
{
  #soilDat <- read.csv(csv)
  #soilPdf <- scrape table from pdf. This may become its own function that occurs before this function after attempts at coding.
  #soilDatFrame <- merge soilDat and soil Pdf (either with merge() or append() most likely)
  #return(SoilDatFrame)
}