#Download the data set
irisdata<-datasets::iris
####Top 10 rows and last 10 rows
head(irisdata,10)
tail(irisdata,10)
######Columns
irisdata[,c(1,2)]
df<-irisdata[,-4]

summary(irisdata[,1])

irisdata$Sepal.Length

summary(irisdata$Sepal.Length)

###########Summary of the data#########

summary(irisdata)
summary(irisdata$Sepal.Length) 

#####################

plot(irisdata$Sepal.Length)
plot(irisdata$Sepal.Width,irisdata$Sepal.Length,type="p")
plot(irisdata)

# points and lines 

plot(irisdata$Sepal.Length, type= "l") # p: points, l: lines,b: both
plot(irisdata$Sepal.Length, xlab = 'width', 
     ylab = 'No of Instances', main = 'length',
     col = 'blue')

# Horizontal bar plot

barplot(irisdata$Sepal.Length, main = 'Concenteration ',
        ylab = 'Levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(irisdata$Sepal.Length)
hist(irisdata$Sepal.Length, 
     main = 'Radiation values',
     xlab = 'rad.', col='blue')

#Single box plot
boxplot(irisdata$Sepal.Length,main="Boxplot")
# Multiple box plots
boxplot(irisdata[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(irisdata$Sepal.Length)
plot(irisdata$Sepal.Length, irisdata$Petal.Length)
plot(irisdata$Sepal.Length, type= "l")
plot(irisdata$Sepal.Length, type= "l")
plot(irisdata$Sepal.Length, type= "l")
barplot(irisdata$Sepal.Length, main = 'Concenteration ',
        xlab = 'levels', col='green',horiz = TRUE)
hist(irisdata$Petal.Width)
boxplot(irisdata$Species)
boxplot(irisdata[,0:4], main='Multiple Box plots')

sd(irisdata$Sepal.Length,na.rm = T)

var(irisdata$Petal.Length,na.rm = T)


d <- density(irisdata$Petal.Width)
plot(d)
