plotFPY <- function(fromYear = 4, toYear = 5){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  if ( toYear - fromYear < 2 ){
    stop("Cannot plot less than 3 bars")
  }
  # Total fatality vs years = fatality rate
  data.fatality <- aggregate(dataset$FATALITIES ~ dataset$YEAR, FUN = sum)
  # create data frames from dataset
  allData <- data.frame(fatality = data.fatality$`dataset$FATALITIES` ,
                   year = data.fatality$`dataset$YEAR`)
  bar <- data.frame(FATALITY = allData$fatality[fromYear:toYear],
                    CYEAR = allData$year[fromYear:toYear])
  YEAR = paste(bar$CYEAR,"")
  theme_set(theme_bw(16))
  ggplot(bar, aes(YEAR,FATALITY,fill = YEAR), alpha = 0.5) + geom_bar(stat = "identity") +
    ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER YEAR\n FROM",fromYear+1996,"TO",toYear+1996))
  #return nothing
  #invisible();
}

plotIPY <- function(fromYear = 4, toYear = 5){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  if ( toYear - fromYear < 2 ){
    stop("Cannot plot less than 3 bars")
  }
  # Total fatality vs years = fatality rate
  data.fatality <- aggregate(dataset$INTERACTION ~ dataset$YEAR, FUN = sum)
  # create data frames from dataset
  allData <- data.frame(inter = data.fatality$`dataset$INTERACTION` ,
                        year = data.fatality$`dataset$YEAR`)
  bar <- data.frame(INTERACTION = allData$inter[fromYear:toYear],
                    CYEAR = allData$year[fromYear:toYear])
  theme_set(theme_bw(16))
  YEAR <- paste(bar$CYEAR,"")
  ggplot(bar, aes(YEAR,INTERACTION,fill = YEAR ), alpha = 0.5) + geom_bar(stat = "identity")+
  ggtitle(paste("BAR GRPAH OF TOTAL INTERACTIONS PER YEAR\n FROM",fromYear+1996,"TO",toYear+1996))
  #return nothing
}

plotIPD <- function(region = "Western"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(region = dataset$ADMIN1,
                         inter = dataset$INTERACTION, district = dataset$ADMIN2)
  sum_fat_district = aggregate(dataframe$inter ~ (dataframe$region+dataframe$district), FUN = sum)
  region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
  bar2 = data.frame(region_karamoja)
  bar <- data.frame(INTERACTION = bar2$dataframe.inter,
                    DISTRICT = bar2$dataframe.district)
  theme_set(theme_bw(16))
  ggplot(bar, aes(DISTRICT,INTERACTION, fill = DISTRICT), alpha = 0.5) +
    geom_bar(stat = "identity")+
    ggtitle(paste("BAR GRAPH OF TOTAL INTERACTIONS PER DISTRICT\n FOR",region))
}

plotFPD <- function(region = "Western"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(region = dataset$ADMIN1, fatality = dataset$FATALITIES, district = dataset$ADMIN2)
  dataframe
  sum_fat_district = aggregate(dataframe$fatality ~ (dataframe$region+dataframe$district), FUN = sum)
    region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
    bar2 = data.frame(region_karamoja)
    bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                      DISTRICT = bar2$dataframe.district)
    theme_set(theme_bw(16))
    ggplot(bar, aes(DISTRICT,FATALITY, fill = DISTRICT), alpha = 0.5) + geom_bar(stat = "identity")+
      ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER DISTRICT\n FOR ",region))
}

plotIPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  library(plotrix)
  dataframe = data.frame(interactions = dataset$INTERACTION, region = dataset$ADMIN1)
  interctn2_sum = aggregate(dataframe$interactions~dataframe$region, FUN = sum)
  bar2 = data.frame(inter = interctn2_sum$`dataframe$interactions`, REGION = interctn2_sum$`dataframe$region`)
  ggplot(bar2, aes(x = factor(5), y = inter,fill = REGION) ) +
    geom_bar(width = 1,stat = "identity")+coord_polar(theta = "y") +
    ggtitle(paste("PIE CHART OF INTERACTIONS PER REGION"))
}

plotFPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  library(ggplot2)
  dataframe = data.frame(location = dataset$ADMIN1, fatality = dataset$FATALITIES)
  sum_fatality_location = aggregate(dataframe$fatality~dataframe$location, FUN = sum)
  bar2 = data.frame(sum_fatality_location)
  bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                    REGION = bar2$dataframe.location)
  ggplot(bar, aes(REGION,FATALITY, fill = REGION), alpha = 0.5) +
    geom_bar(stat = "identity")+
    ggtitle(paste("BAR GRAPH OF TOTAL FATALITY PER REGION"))
}
