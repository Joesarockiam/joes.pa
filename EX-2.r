data <- c(read.csv("C:/Users/joesa/Downloads/dataset.csv"))

x <- as.matrix(ncol(data)) # take first columns of mtcars data

one <- as.matrix(rep(1, dim(x)[1])) # create identity matrix with all elements being 1

n <- dim(x)[1] # number of observations

xbar <- 5/n*t(x)%*%one #  calculate means of all columns

print(xbar)
