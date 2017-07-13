setwd("C:/Users/S.Sagara/Documents/Data Science/coursera/R specialization/Getting and clearning data/week4")

X_train <- read.table("X_train.txt",sep = "")
y_train <- read.table("y_train.txt",sep = "")
X_test <- read.table("X_test.txt",sep = "")
y_test <- read.table("y_test.txt",sep = "")
features <- read.table("features.txt",sep = "")
subject <- read.table("subject_train.txt", sep=" ")
activity <- read.table("activity_labels.txt")

X_all <- rbind(X_train, X_test)
y_all <- rbind(y_train, y_test)
fn <- features[,2]

colnames(X_all) <- fn

mean <- grep("mean",fn)
std <- grep("std",fn)
mean_std <- sort(c(mean,std))

X_all_sel <- X_all[,mean_std]
