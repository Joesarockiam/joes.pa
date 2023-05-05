library(car)
df <- read.csv("")

model1 <- lm(df$total~df$Price_each+df$Quantity.Ordered,data=df)
print("Model1:")
print(summary(model1))
avPlots(model1)

model2 <- lm(df$total~df$Order.Month+df$Quantity.Ordered,data=df)
print("Model2:")
print(summary(model2))
avPlots(model2)

print("R^2 Values:")
print(paste(summary(model1)$r.squared,summary(model2)$r.squared))
print("RSE Values:")
print(paste(summary(model1)$sigma,summary(model2)$sigma))