## WARNING: do _not_ merge the problems in one file! Write your solutions in separate files, otherwise
## your homework/exam will _not_ be review and will _not_ be graded.

## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.

## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code

#problem 1 and 2 merged
#problem1

#a)
x<-c(4,1,1,4)
#b)
y<-c(1,4)
#c)
x-y

## Missing explanation.

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
# Improve readability
## NOTE: this works by its intention is unclear
## Why do you create a new object "date"?
date<- names(xmin) <- c('03Mon18','04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmax) <- c( '03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
xmin
xmax

#g)
temperatures<-data.frame(df.xmin=xmin,df.xmax=xmax)
temperatures
#h)
temperatures$df.xminFahrenheit<-c(xmin)*9/5+32
temperatures
#i)
## ERROR: its data.frame, not data,frame.
## Please do not submit invalid code!

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

# Easier

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Better, although with one column in the data fram 
## the subsetting returns a vector, not a data.frame

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]


