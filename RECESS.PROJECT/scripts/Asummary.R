AnalysisSummary <- function(year = 1997){
  library(psych)
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
  SSDF <- subset(newDF, newDF$YEAR == year)
  bars <- data.frame(INTERACTIONS = SSDF$Interactions,
                     FATALITY = SSDF$Fatality)
  MEAN <- sapply(bars, mean, na.rm = TRUE)
  MEAN <- paste("HIGHEST TOTAL INTERACTIONS::", max(bars$INTERACTIONS),
                "\n LOWEST TOTAL INTERACTIONS::", max(bars$FATALITY),"\n\n",
                "HIGHEST TOTAL FATALITIES::", min(bars$INTERACTIONS),
                "\n LOWEST TOTAL FATALITIES::", min(bars$FATALITY)
  )
  MEAN
}
AnalysisSummary(1999)
