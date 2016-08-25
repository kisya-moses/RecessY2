plotFPY <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  # Total fatality vs years = fatality rate
  data.fatality <- aggregate(dataset$FATALITIES ~ dataset$YEAR + dataset$ADMIN1, FUN = sum)
  # create data frames from dataset
  allData <- data.frame(fatality = data.fatality$`dataset$FATALITIES`,
                        year = data.fatality$`dataset$YEAR`,
                        REGION = data.fatality$`dataset$ADMIN1`)
  bar <- data.frame(FATALITY = allData$fatality,
                    CYEAR = allData$year,
                    REG = allData$REGION)
  YEAR = paste(bar$CYEAR)
  theme_set(theme_bw(16))
  ggplot(bar, aes(YEAR,FATALITY,fill = REG), alpha = 0.5) + geom_bar(stat = "identity") +
    ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER YEAR\n FROM (1997 - 2014)"))
  #return nothing
  #invisible();
}

plotIPD <- function(region = "Western"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(region = dataset$ADMIN1,
                         inter = dataset$INTERACTION,
                         district = dataset$ADMIN2,
                         YR = dataset$YEAR)
  sum_fat_district = aggregate(dataframe$inter~dataframe$region+dataframe$district+dataframe$YR,FUN = sum)
  region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
  bar2 = data.frame(region_karamoja)
  bar <- data.frame(INTERACTION = bar2$dataframe.inter,
                    DISTRICT = bar2$dataframe.district,
                    YEAR = bar2$dataframe.YR)
  theme_set(theme_bw(16))
  YEARS <- paste(bar$YEAR)
  ggplot(bar, aes(DISTRICT,INTERACTION, fill = YEARS), alpha = 0.5) +
    geom_bar(stat = "identity")+
    ggtitle(paste("BAR GRAPH OF TOTAL INTERACTIONS PER DISTRICT\n FOR",region))
}

plotFPD <- function(region = "Western"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(region = dataset$ADMIN1,
                         fatality = dataset$FATALITIES,
                         district = dataset$ADMIN2,
                         YR = dataset$YEAR)
  sum_fat_district = aggregate(dataframe$fatality ~ dataframe$region + dataframe$district + dataframe$YR,
                               FUN = sum)
    region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
    bar2 = data.frame(region_karamoja)
    bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                      DISTRICT = bar2$dataframe.district,
                      YEAR = bar2$dataframe.YR)
    theme_set(theme_bw(16))
    YEARS = paste(bar$YEAR)
    ggplot(bar, aes(DISTRICT,FATALITY, fill = YEARS ), alpha = 0.5) + geom_bar(stat = "identity")+
      ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER DISTRICT\n FOR ",region))
}

plotIPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  library(plotrix)
  dataframe = data.frame(interactions = dataset$INTERACTION, region = dataset$ADMIN1, YEAR = dataset$YEAR)
  interctn2_sum = aggregate(dataframe$interactions~dataframe$region+dataframe$YEAR, FUN = sum)
  bar2 = data.frame(inter = interctn2_sum$`dataframe$interactions`,
                    REGION = interctn2_sum$`dataframe$region`,
                    Year = interctn2_sum$`dataframe$YEAR`)
  YEARS = paste(bar2$Year)
  ggplot(bar2, aes(y = inter,x = REGION) ) +
    geom_bar(aes(fill = YEARS), stat = "identity") +
    ggtitle(paste("BAR CHART OF INTERACTIONS PER REGION")) +
    labs(y = "INTERACTIONS")
}

plotIPY <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  library(plotrix)
  df=data.frame(interactions = dataset$INTERACTION,region=dataset$ADMIN1,YR = dataset$YEAR)
  inter1=aggregate(df$interactions ~ df$region + df$YR,FUN=sum)
  bar2 = data.frame(inter = inter1$`df$interactions`,
                    REGION = inter1$`df$region`,
                    YEAR = inter1$`df$YR`)
  theme_set(theme_bw(16))
  ggplot(bar2, aes(x = YEAR, y = inter,fill = REGION)) +
    geom_bar(stat="identity") +
    ggtitle(paste("STACKED BAR CHART OF INTERACTIONS PER YEAR (1997 - 2014)"))+
    labs(x = "YEAR", y = "INTERACTIONS")
}

plotFPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(location = dataset$ADMIN1, fatality = dataset$FATALITIES, YEAR = dataset$YEAR)
  sum_fatality_location = aggregate(dataframe$fatality~dataframe$location + dataframe$YEAR, FUN = sum)
  bar2 = data.frame(sum_fatality_location)
  bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                    REGION = bar2$dataframe.location,
                    Year = bar2$dataframe.YEAR)
  ggplot(bar, aes(REGION,FATALITY, fill = REGION), alpha = 0.5) +
    geom_bar(stat = "identity", aes(fill = paste(Year))) +
    ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER REGION"))
}
