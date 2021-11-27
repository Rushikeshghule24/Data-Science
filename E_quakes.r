#Download the data set
e_quakes<-datasets::quakes
####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns
e_quakes[,c(1,2)]
df<-e_quakes[,-6]

summary(e_quakes[,1])

e_quakes$long

summary(e_quakes$long)

###########Summary of the data#########

summary(e_quakes)
summary(e_quakes$long) 

#####################

plot(e_quakes$long)
plot(e_quakes$lat,e_quakes$long,type="p")
plot(e_quakes)

# points and lines 

plot(e_quakes$long, type= "l") # p: points, l: lines,b: both
plot(e_quakes$long, xlab = 'Concentration', 
     ylab = 'No of Instances', main = 'levels in city',
     col = 'blue')

# Horizontal bar plot

barplot(e_quakes$long, main = 'Concenteration ',
        ylab = 'Levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(e_quakes$long)
hist(e_quakes$long, 
     main = 'Radiation values',
     xlab = 'rad.', col='blue')

#Single box plot
boxplot(e_quakes$long,main="Boxplot")
# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(e_quakes$long)
plot(e_quakes$long, e_quakes$depth)
plot(e_quakes$long, type= "l")
plot(e_quakes$long, type= "l")
plot(e_quakes$long, type= "l")
barplot(e_quakes$long, main = 'Concenteration ',
        xlab = 'levels', col='green',horiz = TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4], main='Multiple Box plots')

sd(e_quakes$long,na.rm = T)

var(e_quakes$depth,na.rm = T)

install.packages("moments")
library(moments)
skewness(e_quakes)
kurtosis(e_quakes)

d <- density(e_quakes$depth)
plot(d)
