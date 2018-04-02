#problem1
#a)
x<-c(4,1,1,4)
#b)
y<-c(1,4)
#c)
x-y
#[1]  3 -3  0  0
#d)
s<-c(x,y)
#e)
rep(s,10)
lenght(rep(s,10))
#f
rep(s,each=3)
#g)i)
seq(7,21,by=1)
#g)ii)
7:21
#h)
lenght(seq(7,21,by=1))
#problem2
#a)
xmin<-c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax<-c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)
#b)
xmin-xmax
#c)
mean<-mean(xmin)
mean(xmax)
#d)
xmin[xmin <mean(xmin)]
#e)
xmax[xmax>mean(xmax)]
#f)
date<-
  names(xmin)<-c('03Mon18','04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
  names(xmax)<-  c( '03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
xmin
xmax
#g)
temperatures<-data.frame(df.xmin=xmin,df.xmax=xmax)
temperatures
#h)
temperatures$df.xminFahrenheit<-c(xmin)*9/5+32
temperatures
#i)
temperaturesF<-data,frame(df.tempF =temperatures$df.xminFahrenheit)
#j)
temperaturesF
temperaturesF5 <- data.frame(
  df.tempF =temperatures$df.xminFahrenheit[1:5])
temperaturesF5
temperaturesF
temperaturesFlast <- data.frame(
  df.tempF =temperatures$df.xminFahrenheit[-c(6, 7)])

temperaturesFlast

