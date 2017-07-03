complete <- function(directory, id = 1:332) {
        f <- function(i) {
                data = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                                      ".csv", sep = ""))
                sum(complete.cases(data))
        }
        nobs = sapply(id, f)
        return(data.frame(id, nobs))
}
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

cc <- complete("specdata", 54)
print(cc$nobs)
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])


