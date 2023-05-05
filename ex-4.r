m1=c(78,98,89,58,90,90,68,88,77)
m2=c(90,87,79,75,69,90,87,54,78)
a=c(3,-1)
b=c(2,-5)
l=length(m1)
temp=0
cv1=0
v1=c()
v2=c()
for(i in 1:l){
  k=((m1[i]*a[1])+(m2[i]*a[2]))
  v1=append(v1,k)
  temp=temp+k
}
m=temp/l
print(paste("Mean",m))
temp=0
for(i in 1:l){
  w=((m1[i]*b[1])+(m2[i]*b[2]))
  v2=append(v2,w)
  temp=temp+w
}
mean2=temp/l
meann=mean(m2)
print(paste("Mean",mean2))
cv=0
for(i in 1:l){
  a1=((v1[i]-m)*(v2[i]-mean2))
  cv=cv+a1
}
cv=cv/(l-1)
print(paste("Covarience :",cv))
print(cor(m1,m2))
plot(v1,type="b",col="purple",frame=FALSE)
plot(v2,type="b",col="blue",frame=FALSE)
abline(h=mean2)
print(v2)