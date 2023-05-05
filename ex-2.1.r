data <- read.csv("C:/Users/joesa/Downloads/rainfall in india 1901-2015.csv");
df <- data.frame(data$total_consumption)
a1=data[c(0:22),]
a2=data[c(23:45),]
a3=data[c(46:68),]
a4=data[c(69:90),]
a5=data[c(90:100),]
#MEAN
m11=mean(a1$total_consumption)
m12=mean(a2$total_consumption)
m13=mean(a3$total_consumption)
m14=mean(a4$total_consumption)
m15=mean(a5$total_consumption)

m21=mean(a1$recorded_consumption)
m22=mean(a2$recorded_consumption)
m23=mean(a3$recorded_consumption)
m24=mean(a4$recorded_consumption)
m25=mean(a5$recorded_consumption)

m31=mean(a1$unrecorded_consumption)
m32=mean(a2$unrecorded_consumption)
m33=mean(a3$unrecorded_consumption)
m34=mean(a4$unrecorded_consumption)
m35=mean(a5$unrecorded_consumption)

m41=mean(a1$beer_percentage)
m42=mean(a2$beer_percentage)
m43=mean(a3$beer_percentage)
m44=mean(a4$beer_percentage)
m45=mean(a5$beer_percentage)

#VARIENCE
v11=var(a1$recorded_consumption)
v12=var(a2$recorded_consumption)
v13=var(a3$recorded_consumption)
v14=var(a4$recorded_consumption)
v15=var(a5$recorded_consumption)

v21=var(a1$unrecorded_consumption)
v22=var(a2$unrecorded_consumption)
v23=var(a3$unrecorded_consumption)
v24=var(a4$unrecorded_consumption)
v25=var(a5$unrecorded_consumption)

v31=var(a1$total_consumption)
v32=var(a2$total_consumption)
v33=var(a3$total_consumption)
v34=var(a4$total_consumption)
v35=var(a5$total_consumption)

v41=var(a1$beer_percentage)
v42=var(a2$beer_percentage)
v43=var(a3$beer_percentage)
v44=var(a4$beer_percentage)
v45=var(a5$beer_percentage)

#Covarience
cv11=cov(a1$total_consumption,a1$beer_percentage)
cv12=cov(a2$total_consumption,a2$beer_percentage)
cv13=cov(a3$total_consumption,a3$beer_percentage)
cv14=cov(a4$total_consumption,a4$beer_percentage)
cv15=cov(a5$total_consumption,a5$beer_percentage)

cv21=cov(a1$recorded_consumption,a1$unrecorded_consumption)
cv22=cov(a2$recorded_consumption,a2$unrecorded_consumption)
cv23=cov(a3$recorded_consumption,a3$unrecorded_consumption)
cv24=cov(a4$recorded_consumption,a4$unrecorded_consumption)
cv25=cov(a5$recorded_consumption,a5$unrecorded_consumption)

#CORRELATION
c11=cor(a1$total_consumption,a1$beer_percentage)
c12=cor(a2$total_consumption,a2$beer_percentage)
c13=cor(a3$total_consumption,a3$beer_percentage)
c14=cor(a4$total_consumption,a4$beer_percentage)
c15=cor(a5$total_consumption,a5$beer_percentage)

c21=cor(a1$recorded_consumption,a1$unrecorded_consumption)
c22=cor(a2$recorded_consumption,a2$unrecorded_consumption)
c23=cor(a3$recorded_consumption,a3$unrecorded_consumption)
c24=cor(a4$recorded_consumption,a4$unrecorded_consumption)
c25=cor(a5$recorded_consumption,a5$unrecorded_consumption)

print("mean")
x1=matrix(c(m11,m12,m13,m14,m15,m21,m22,m23,m24,m25,m31,m32,m33,m34,m35,m41,m42,m43,m44,m45),nrow =5,ncol=4)
print(x)
barplot(x)

print("varience")
x2=matrix(c(v11,v12,v13,v14,v15,v21,v22,v23,v24,v25,v31,v32,v33,v34,v35,v41,v42,v43,v44,v45),nrow=5,ncol=4)
print(x2)
plot(x2)

print("Covarience")
x3=matrix(c(cv11,cv12,cv13,cv14,cv15,cv21,cv22,cv23,cv24,cv25),nrow=5,ncol=2)
print(x3)
plot(x3)

print("Correlation ")
x4=matrix(c(c11,c12,c13,c14,c15,c21,c22,c23,c24,c25),nrow=5,ncol=2)
print(x4)
plot(x4)