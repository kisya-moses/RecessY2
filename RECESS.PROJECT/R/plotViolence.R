# National
# event occurance per region e.g violence against humans

EventVSReg <- function(even = ""){
  library(dplyr)
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(region = dataset$ADMIN1, event = dataset$EVENT_TYPE)
  SSevent <- data.frame(subset(df, df$event == even))
  ggplot(SSevent, aes(x = region,y = event, fill = region)) + geom_bar(stat = "identity")
}

InterVsEvent <- function(){
  library(dplyr)
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(INTERACTIONS = dataset$INTERACTION, EVENT_TYPE = dataset$EVENT_TYPE)
  AgDF <- aggregate(df$INTERACTIONS~df$EVENT_TYPE, FUN = sum)
  SSevent <- data.frame(INTERACTIONS = AgDF$`df$INTERACTIONS`, EVENT_TYPE = AgDF$`df$EVENT_TYPE`)
  ggplot(SSevent, aes(x = EVENT_TYPE,y = INTERACTIONS,group = 1, fill = EVENT_TYPE)) +
    geom_bar(stat = "identity") +
    ggtitle("PLOT OF INTERACTIONS VS EVENT TYPE") + coord_flip()
}

FatalityVsEvent <- function(){
  library(dplyr)
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(FATALITY = dataset$FATALITIES, EVENT_TYPE = dataset$EVENT_TYPE)
  AgDF <- aggregate(df$FATALITY~df$EVENT_TYPE, FUN = sum)
  SSevent <- data.frame(FATALITY = AgDF$`df$FATALITY`, EVENT_TYPE = AgDF$`df$EVENT_TYPE`)
  ggplot(SSevent, aes(x = EVENT_TYPE,y = FATALITY, group = 1, fill = EVENT_TYPE)) +
    geom_bar(stat = "identity") +
    ggtitle("EVENT TYPE vs FATALITY") + coord_flip()
}

#rm(list = ls())
#?geom_bar
