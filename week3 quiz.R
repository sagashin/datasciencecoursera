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

df2 <- read.csv("getdata-data-GDP.csv",skip = 4,nrows = 215,)
df3 <- read.csv("getdata-data-EDSTATS_Country.csv")
df4 <- merge(df2, df3, by.x = "X",by.y ="CountryCode")
df4 <- arrange(df4, desc(X.1))
sum(!is.na(df4$X.1))
df4[13,]

df5 <- filter(df4,df4$Income.Group =="High income: OECD" | df4$Income.Group == "High income: nonOECD") 
df5 %>% group_by(Income.Group) %>% 
        summarize(mean(X.1,na.rm = TRUE)) %>% 
        print

mean(df5$X.1,na.rm = TRUE)
breaks <- quantile(df4$X.1,probs =c(0,0.2,0.4,0.6,0.8,1) ,na.rm = TRUE)
df4$qtr <- cut(df4$X.1,breaks = breaks)
table(df4$Income.Group,df4$qtr)



