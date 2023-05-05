data <- c(read.csv("C:/Users/joesa/Downloads/datafile (2).csv"))
x <- data$Area.2008.09
y <- data$Area.2009.10
n <- length(x)
m= sum(x)/n
m2=sum(y)/n
print(paste("MEAN:",m))
v = sum((x-m)^2)/(n-1)
print(paste("Variance: ",v))
sd = sqrt(v)
print(paste("Standard Deviation:",sd))
print(paste("USING DEFAULT FUNCTIONS"))
print(paste("MEAN: ",mean(x)))
print(paste("Variance: ",var(x)))
print(paste("SD: ",sd(x)))
print(paste("covariance: ",cov(x,y)))
print(paste("correlation: ",cor(x,y)))
                              