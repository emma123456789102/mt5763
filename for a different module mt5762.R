## practical 15- mutliple inear regression 


pairs(seldata[,c(3,2,8,12)])
names(seldata)
tapply(X=seldata$assets,INDEX = seldata$indclass, FUN= summary)
lsmodel <- lm(assets ~ capex, data=seldata)
lmFull<-lm(seldata$assets ~seldata$year + seldata$mv +seldata$sales + as.factor(seldata$indclass),data = seldata)
nrow(seldata)
lsres <- residuals(lsmodel)
lsres
hist(lsres, xlab="Residuals")
