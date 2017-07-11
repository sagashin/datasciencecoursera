library(dplyr)

setwd("C:/Users/S.Sagara/Documents/Data Science/coursera/R specialization")

df <- read.csv("getdata%2Fdata%2Fss06hid.csv")
str(df)

agricultureLogical <- df %>% filter(ACR == 3 & AGS == 6)

agricultureLogical <- df$ACR == 3 & df$AGS == 6

which(agricultureLogical)[1:3]

library(jpeg)

jp <- readJPEG("getdata%2Fjeff.jpg", native = TRUE)
quantile(jp,probs = c(0.3,0.8))

df2 <- read.csv("getdata%2Fdata%2FGDP.csv")
df3 <- read.csv("getdata%2Fdata%2FEDSTATS_Country.csv")

str(df3)
summary(df2)
names(df3)
