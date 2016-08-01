#' ANALYSIS
#' @keywords Analysis, regression, sentimental
#'

AnalysisFY <- function(yr = 1997){
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
    ggplot(bars,
         aes(x = ACTORS),
         aes(y = INTERACTIONS),
         aes(y = FATALITY)) +
    geom_bar(aes(y = FATALITY, fill = ACTORS), stat = "identity") +
    geom_bar(aes(y = INTERACTIONS), stat = "identity", width = 0.4) +
    labs(y = "INTERACTION AND FATALITIES") +
    theme(legend.position = "none") + coord_flip()+
    ggtitle(paste("INTERACTIONS AND FATALITIES Vs ACTORS FOR ",yr))

}