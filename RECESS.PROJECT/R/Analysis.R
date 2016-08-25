#' ANALYSIS
#' @keywords Analysis, regression, sentimental
#'

AIPY <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  # Total fatality vs years = fatality rate
  data.fatality <- aggregate(dataset$INTERACTION ~ dataset$YEAR, FUN = sum)
  # create data frames from dataset
  allData <- data.frame(inter = data.fatality$`dataset$INTERACTION` ,
                        year = data.fatality$`dataset$YEAR`)
  bar <- data.frame(INTERACTION = allData$inter,
                    CYEAR = allData$year)
  avg <-   mean(bar$INTERACTION)
  tot <-    sum(bar$INTERACTION)
  maxi <-   max(bar$INTERACTION)
  mini <-   min(bar$INTERACTION)
  minY = subset(bar,bar$INTERACTION == min(bar$INTERACTION))
  maxY = subset(bar,bar$INTERACTION == max(bar$INTERACTION))
  msg = paste("<h4>Highest Interactions occurred in",maxY,"and are <b>",maxi,
              "</b><br>Minimum Interactions occurred in",minY,"and are <b>",mini,
              "</b><br>The Average interactions from 1997 to 2014 = ",avg,
              "<br>Total interactions : ",tot,"</h4>")
  T <- list(messge1 = msg)
  list(message = T$messge1[2])
}

AFPY <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  data.fatality <- aggregate(dataset$FATALITIES ~ dataset$YEAR, FUN = sum)

  # create data frames from dataset
  allData <- data.frame(fatality = data.fatality$`dataset$FATALITIES` ,
                        year = data.fatality$`dataset$YEAR`)
  bar <- data.frame(FATALITY = allData$fatality,
                    CYEAR = allData$year)
  avg <- mean(bar$FATALITY)
  tot <-  sum(bar$FATALITY)
  maxi <- max(bar$FATALITY)
  mini <- min(bar$FATALITY)
  minY = subset(bar,bar$FATALITY == min(bar$FATALITY))
  maxY = subset(bar,bar$FATALITY == max(bar$FATALITY))
  msg = paste("<h4>Highest FATALITIES occurred in",maxY,"and are <b>",maxi,
              "</b><br>Minimum FATALITIES occurred in",minY,"and are <b>",mini,
              "</b><br>The Average FATALITY from 1997 to 2014 = ",avg,
              "<br>Total FATALITIES : ",tot,"</h4>")
  T <- list(messge1 = msg)
  list(message = T$messge1[2])
}

AFPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  dataframe = data.frame(location = dataset$ADMIN1, fatality = dataset$FATALITIES)
  sum_fatality_location = aggregate(dataframe$fatality~dataframe$location, FUN = sum)
  bar2 = data.frame(sum_fatality_location)
  bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                    REGION = bar2$dataframe.location)
  avg <- mean(bar$FATALITY)
  tot <- sum(bar$FATALITY)
  maxi <- max(bar$FATALITY)
  mini <- min(bar$FATALITY)
  regMx = subset(bar, bar$FATALITY == max(bar$FATALITY))
  regMn = subset(bar, bar$FATALITY == min(bar$FATALITY))
  list(message = paste("<h4>Highest Fatalities were in <code>",regMx$REGION,
                       "</code> and value = ",maxi,
                       "<br>Lowest Fatality were in <code>",regMn$REGION,"</code> and value = ",mini,
                       "<br>The Average FATALITIES for all regions is ",avg,
                       "<br>Total FATALITIES : ",tot,"</h4>"))
}

AIPR <- function(){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  dataframe = data.frame(location = dataset$ADMIN1, inter = dataset$INTERACTION)
  sum_fatality_location = aggregate(dataframe$inter ~dataframe$location, FUN = sum)
  bar2 = data.frame(sum_fatality_location)
  bar <- data.frame(INTER = bar2$dataframe.inter,
                    REGION = bar2$dataframe.location)
  avg <- mean(bar$INTER)
  tot <- sum(bar$INTER)
  maxi <- max(bar$INTER)
  mini <- min(bar$INTER)
  regMx = subset(bar, bar$INTER == max(bar$INTER))
  regMn = subset(bar, bar$INTER == min(bar$INTER))
  list(message = paste("<h4>Highest INTERACTIONS were in <code>",regMx$REGION,"
                       </code>: value = ",maxi,
                       "<br>Lowest INTERACTIONS were <code>",regMn$REGION,"</code>: value = ",mini,
                       "<br> Average INTERACTIONS for all regions is ",avg,
                       "<br>Total INTERACTIONS : ",tot,"</h4>"))
}

AFIFY <- function(year = 1999){
  yr = year
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df1 <- data.frame(actor1 = dataset$ACTOR1,
                    actor2 = dataset$ACTOR2,
                    fatality = dataset$FATALITIES,
                    year = dataset$YEAR,
                    interactions = dataset$INTERACTION)
  AgDF1 <- aggregate(df1$fatality ~ (df1$actor1 + df1$actor2 + df1$year),FUN = sum)
  AgDF2 <- aggregate(df1$interactions ~ (df1$actor1 + df1$actor2 + df1$year),FUN = sum)
  newDF <- data.frame(Interactions = AgDF2$`df1$interactions`,
                      Fatality = AgDF1$`df1$fatality`,
                      Actors = paste(AgDF1$`df1$actor1`," vs >> ",AgDF2$`df1$actor2`),
                      YEAR = AgDF2$`df1$year`)
  SSDF <- subset(newDF, newDF$YEAR == year)
  bars <- data.frame(INTERACTIONS = SSDF$Interactions,
                     FATALITY = SSDF$Fatality,
                     ACTORS = SSDF$Actors)
  cause1 = data.frame(subset(bars,bars$INTERACTIONS == max(bars$INTERACTIONS)))
  cause4 = data.frame(subset(bars,bars$INTERACTIONS == min(bars$INTERACTIONS)))
  cause2 = data.frame(subset(bars,bars$FATALITY == max(bars$FATALITY)))
  cause3 = data.frame(subset(bars,bars$FATALITY == min(bars$FATALITY)))
  avgI = mean(bars$INTERACTIONS)
  avgF = mean(bars$FATALITY)
  totI =  sum(bars$INTERACTIONS)
  totF =  sum(bars$FATALITY)
  msg = paste("<h3><b>",yr,"</b></h3>",
            "<h4>Highest INTERACTIONS were caused by <code>",cause1$ACTORS,"</code>
            and are <b>",cause1$INTERACTIONS,
            "</b><br>Minimum INTERACTIONS were caused by <code>",cause4$ACTORS,"</code>
            and are <b>",cause4$INTERACTIONS,
            "</b><br>
            Highest FATALITIES were caused by <code>",cause2$ACTORS ,"</code>
            and are <b>",cause2$FATALITY,
            "</b><br>Minimum FATALITIES were caused by <code>",cause3$ACTORS ,"</code>
            and are <b>", cause3$FATALITY,
            "</b><br>Average FATALITY = <i>",avgF,
            "</i><br>Average INTERACTIONS = <i>",avgI,
            "</i><br>Total FATALITIES   : <i>",totF,"</i>",
            "<br>Total INTERACTIONS : <i>",totI,"</i></h4>")
  T <- list(messge1 = msg)
  list(message = T$messge1[2])
}

Analysis_FY <- function(yr = 1997){
  # (AC1 Vs A2) Vs FATALITY + INTERAcTIONS
  library(ggplot2)
  library(reshape2)
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  df1 <- data.frame(actor1 = dataset$ACTOR1,
                    actor2 = dataset$ACTOR2,
                    fatality = dataset$FATALITIES ,
                    year = dataset$YEAR,
                    interactions = dataset$INTERACTION)
  AgDF1 <- aggregate(df1$fatality ~ (df1$actor1 + df1$actor2 + df1$year),FUN = sum)
  AgDF2 <- aggregate(df1$interactions ~ (df1$actor1 + df1$actor2 + df1$year),FUN = sum)
  newDF <- data.frame(Interactions = AgDF2$`df1$interactions`,
                      Fatality = AgDF1$`df1$fatality`,
                      Actors = paste(AgDF1$`df1$actor1`," vs >> ",AgDF2$`df1$actor2`),
                      YEAR = AgDF2$`df1$year`)
  SSDF <- subset(newDF, newDF$YEAR == yr)
  bars <- data.frame(INTERACTIONS = SSDF$Interactions,
                     FATALITY = SSDF$Fatality,
                     ACTORS = SSDF$Actors)
  theme_set(theme_bw(11))
    ggplot(bars,
         aes(x = ACTORS),
         aes(y = INTERACTIONS),
         aes(y = FATALITY)) +
    geom_bar(aes(y = FATALITY, fill = ACTORS), stat = "identity") +
    geom_bar(aes(y = INTERACTIONS), stat = "identity", width = 0.4) +
    labs(y = "INTERACTION AND FATALITIES") +
    theme(legend.position = "none") + coord_flip() +
    ggtitle(paste("INTERACTIONS AND FATALITIES Vs ACTORS FOR",yr))
}

AFPD <- function(region = "Elgon"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  dataframe = data.frame(region = dataset$ADMIN1, fatality = dataset$FATALITIES, district = dataset$ADMIN2)
  sum_fat_district = aggregate(dataframe$fatality ~ (dataframe$region+dataframe$district), FUN = sum)
  region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
  bar2 = data.frame(region_karamoja)
  bar <- data.frame(FATALITY = bar2$dataframe.fatality,
                    DISTRICT = bar2$dataframe.district)
  dis = data.frame(subset(bar,bar$FATALITY == max(bar$FATALITY)))
  dis1 = data.frame(subset(bar,bar$FATALITY == min(bar$FATALITY)))
  maxi = max(bar$FATALITY)
  mini = min(bar$FATALITY)
  avg = mean(bar$FATALITY)
  tot =  sum(bar$FATALITY)
  list(message = paste("<h4 class='summ'>Highest Fatality were in <code>",dis$DISTRICT,"district </code>
                       and its value = ", maxi,
                       "<br>Lowest Fatality were in <code>",dis1$DISTRICT,"district</code>
                       and its value = ",mini,
                       "<br>The Average FATALITIES for all Districts is ",avg,
                       "<br>Total FATALITIES : ",tot,"</h4>"))
}

AIPD <- function(region = "Elgon"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  dataframe = data.frame(region = dataset$ADMIN1, inter = dataset$INTERACTION, district = dataset$ADMIN2)
  sum_fat_district = aggregate(dataframe$inter ~ (dataframe$region+dataframe$district), FUN = sum)
  region_karamoja <- data.frame(subset(sum_fat_district,sum_fat_district$`dataframe$region` == region))
  bar2 = data.frame(region_karamoja)
  bar <- data.frame(INTER = bar2$dataframe.inter,
                    DISTRICT = bar2$dataframe.district)
  dis =  data.frame(subset(bar,bar$INTER == max(bar$INTER)))
  dis1 = data.frame(subset(bar,bar$INTER == min(bar$INTER)))
  maxi = max(bar$INTER)
  mini = min(bar$INTER)
  avg = mean(bar$INTER)
  tot =  sum(bar$INTER)
list(message = paste(
  "<h4 class='summ'>Highest Interactions were in <code>",
  dis$DISTRICT,"district </code>and its value = ", maxi,"<br>Lowest Interactions were in <code>",
  dis1$DISTRICT,"district</code>and its value = ",mini,"<br>The Average INTERACTIONS for all Districts is",
  avg,"<br>Total INTERACTIONS : ",tot,"</h4>"))
}
