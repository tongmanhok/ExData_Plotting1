library(dplyr)

loadData <- function() {
  read.table("household_power_consumption.txt", 
             header=TRUE, sep=";", na.strings = "?", 
             colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric')) %>%
    mutate(Date = as.Date(Date, '%d/%m/%Y')) %>%
    mutate(Time = as.POSIXct(strptime(paste(Date, ' ', Time), '%Y-%m-%d %H:%M:%S'))) %>%
    filter(Time >= strftime('2007-02-01 00:00:00'), Time < strftime('2007-02-03 00:00:00')) %>%
    tbl_df
}

data<-loadData()
