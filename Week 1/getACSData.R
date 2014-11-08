setwd("~/git/github/coursera_getting_and_cleaning_data/Week 1")

if (!file.exists("./data")) {
  dir.create("./data")
}

if (!file.exists("./data/acsRawData.csv")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",
              destfile = "./data/acsRawData.csv", method = "curl")
}

rawData <- read.csv("./data/acsRawData.csv")