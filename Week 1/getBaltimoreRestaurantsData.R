library(XML)

setwd("~/git/github/coursera_getting_and_cleaning_data/Week 1")

if (!file.exists("./data")) {
  dir.create("./data")
}

if (!file.exists("./data/baltimoreRestaurantsRawData.xml")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml",
              destfile = "./data/baltimoreRestaurantsRawData.xml", method = "curl")
}

doc <- xmlTreeParse(file = "./data/baltimoreRestaurantsRawData.xml",
                    useInternalNodes = TRUE)
rootNode <- xmlRoot(doc)