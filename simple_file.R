## Finial tutorial - for intro data analysis

load("C:/Users/Emma Davidson/Downloads/brexitdf.Rdata")
dim(brexitdf)
head(brexitdf)
simple.lm<-lm(leave ~ electorate, data = brexitdf)
simple.lm
plot(brexitdf$electorate,bexitdf$leave,xlab="who wanted brexit", ylab="who did want")
anova(simple.lm)
