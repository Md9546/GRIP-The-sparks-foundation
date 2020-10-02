#(The sparks foundation Internship tasks)

#Name -: Manthan Daraji

#Supervised ML by Using Simple Linear Regression

#->>>>>In this Regression task we will predict the percentage of marks that a student is expected to score based upon the number of hours they studied.This is a simple linear regression task as it involves just two variables.

#->>>>>If a single independent variable is used to predict the value of a numerical dependent variable,then such a Linear Regression algorithm is called Simple Linear Regression.


#Content:
#Scatter plot(2 quantitative variables) order of x,y important
#R codes for:regression , prediction, prediction interval ,extrapolation.



### Access the Data ###
data<-read.csv("http://bit.ly/w-data",header = T)
data
head(data,8)


### Summary Statistics of the Data ###
summary(data)



##1. Scatter plot(ordering) AND we use histogram for better explaination
plot(data$Hours , data$Scores)
hist(data$Hours) #independent variable
hist(data$Scores)#dependent variable


##2. Corretion Between two variable
cor(data$Hours , data$Scores)
#### The value of correlation is 0.9761907 so by scatter plot we can say that both variable are posively correleted####


##3.The model: simple linear regression
r<-lm(Scores~Hours, dat=data)



##4. add regression line(must run regression before this line)
abline(r)
summary(r)   # finding summary statistics for this line



##5. names to access regression object 
names(r)



##6.Fitted value for data and plot fitted value for Hours(independent variable)
r$fitted.values
plot(data$Hours,r$fitted.values)           #fitted value for Hours



##7. prediction for certain x(Hours) 
#7.1 Coefficient
coef(r)
coef(r)[1]
coef(r)[2]  

      
#7.2 predict command
predict((r)) #percentage of marks of an student based on the number of study hours




##### Now What will be predicted score if a student studies for 9.25 hrs/ day? ####
predict(r,data.frame(Hours=9.25))
