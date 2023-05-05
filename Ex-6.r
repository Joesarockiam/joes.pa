df <- data.frame(read.csv("C:/Users/joesa/Downloads/AMZN.csv"))
model <- lm(formula = df$Close~df$Open+df$Low)
SST <- sum((df$Close - mean(df$Close))^2)
SSR <- sum((predict(model) - mean(df$Close))^2)
SSE <- SST - SSR
a<-data.frame("Source" <- c("Regression" ,  "Error"  , "Total") , "Sum Square" <- c(SSR , SSE , SST)  , 
              "DF" <- c(3 ,+++ length(df$Close) - 3 - 1 ,  length(df$Close) - 1) , "Mean Square" <- c(SSR/1 , SSE/(length(df$Close) - 2) , 0 ))
colnames(a)<-c("Source" , "Sum Square" , "DF" , "Mean Square")

print(a)
print(paste("F - Statistics :" , a$'Mean Square'[1] /a$'Mean Square'[2] ))
print(paste("P - Value :" , (a$DF[1]/a$DF[2])))