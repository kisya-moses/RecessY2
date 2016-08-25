InterVsEventR <- function(){
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(INTERACTIONS = dataset$INTERACTION,
                   EVENT_TYPE = dataset$EVENT_TYPE,
                   REG = dataset$ADMIN1)
  AgDF <- aggregate(df$INTERACTIONS~df$EVENT_TYPE+df$REG, FUN = sum)
  SSevent <- data.frame(INTERACTIONS = AgDF$`df$INTERACTIONS`,
                        EVENT_TYPE = AgDF$`df$EVENT_TYPE`,
                        REGION = AgDF$`df$REG`)
  ggplot(SSevent, aes(x = EVENT_TYPE, y = INTERACTIONS,group = 1, fill = REGION)) +
    geom_bar(stat = "identity") +
    ggtitle("PLOT OF INTERACTIONS per REGION VS EVENT TYPE") + coord_flip()
}

InterVsEventY <- function(){
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(INTERACTIONS = dataset$INTERACTION,
                   EVENT_TYPE = dataset$EVENT_TYPE,
                   YR = dataset$YEAR)
  AgDF <- aggregate(df$INTERACTIONS~df$EVENT_TYPE+df$YR, FUN = sum)
  SSevent <- data.frame(INTERACTIONS = AgDF$`df$INTERACTIONS`,
                        EVENT_TYPE = AgDF$`df$EVENT_TYPE`,
                        YEAR = AgDF$`df$YR`)
  YEARS = paste(SSevent$YEAR)
  ggplot(SSevent, aes(x = EVENT_TYPE, y = INTERACTIONS,group = 1, fill = YEARS)) +
    geom_bar(stat = "identity") +
    ggtitle("PLOT OF INTERACTIONS per YEAR VS EVENT TYPE") + coord_flip()
}

FatalityVsEventR <- function(){
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(FATALITY = dataset$FATALITIES, EVENT_TYPE = dataset$EVENT_TYPE, REG = dataset$ADMIN1)
  AgDF <- aggregate(df$FATALITY~df$EVENT_TYPE+df$REG, FUN = sum)
  SSevent <- data.frame(FATALITY = AgDF$`df$FATALITY`,
                        EVENT_TYPE = AgDF$`df$EVENT_TYPE`,
                        REGION = AgDF$`df$REG`)
  ggplot(SSevent, aes(x = EVENT_TYPE,y = FATALITY, group = 1, fill = REGION)) +
    geom_bar(stat = "identity") +
    ggtitle("EVENT TYPE per REGION vs FATALITY") + coord_flip()
}

FatalityVsEventY <- function(){
  library(ggplot2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df <- data.frame(FATALITY = dataset$FATALITIES, EVENT_TYPE = dataset$EVENT_TYPE, YR = dataset$YEAR)
  AgDF <- aggregate(df$FATALITY~df$EVENT_TYPE+df$YR, FUN = sum)
  SSevent <- data.frame(FATALITY = AgDF$`df$FATALITY`,
                        EVENT_TYPE = AgDF$`df$EVENT_TYPE`,
                        YEAR = AgDF$`df$YR`)
  YEARS <- paste(SSevent$YEAR)
  theme_set(theme_bw(10))
  ggplot(SSevent, aes(x = EVENT_TYPE,y = FATALITY, group = 1, fill = YEARS)) +
    geom_bar(stat = "identity") +
    ggtitle("EVENT TYPE per YEAR vs FATALITY") + coord_flip()
}

#rm(list = ls())
#?geom_bar
