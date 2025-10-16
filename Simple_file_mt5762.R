## Finial tutorial - for intro data analysis
## Question 1 -load the data and print the visualisation 
load("C:/Users/Emma Davidson/Downloads/brexitdf.Rdata")
dim(brexitdf)
head(brexitdf)
simple.lm<-lm(leave ~ electorate, data = brexitdf)
simple.lm
plot(brexitdf$electorate,brexitdf$leave,xlab="who wanted brexit", ylab="who did want")
abline(simple.lm, col="purple")
summary(simple.lm)




anova(simple.lm)
