library(xlsx)

setwd("~/git/github/coursera_getting_and_cleaning_data/Week 1")

if (!file.exists("./data")) {
  dir.create("./data")
}

if (!file.exists("./data/ngapRawData.xlsx")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx ",
              destfile = "./data/ngapRawData.xlsx", method = "curl")
}

dat <- read.xlsx(file = "./data/ngapRawData.xlsx",
                 sheetIndex = 1,
                 rowIndex = 18:23,
                 colIndex = 7:15)