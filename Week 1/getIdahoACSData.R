library(data.table)

setwd("~/git/github/coursera_getting_and_cleaning_data/Week 1")

if (!file.exists("./data")) {
  dir.create("./data")
}

if (!file.exists("./data/idahoAcsRawData.csv")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",
                destfile = "./data/idahoAcsRawData.csv", method = "curl")
}

DT <- fread("./data/idahoAcsRawData.csv")