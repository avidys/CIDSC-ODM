parameterName="LD"
source("Prepare.R")

# plot all pchs
#plot(1:25, cex=2, pch=c(1:25), xlab="pch", main="pch Summary (plot char)")

result=LD$Result
study=LD$Study
date=LD$date

names(parameterName)

#range, min,max
summary(LD$Result)
summary(LD$Month)
summary(LD$date)

rangeLow=LD[1,"rangeLow"]
rangeHigh=LD[1,"rangeHigh"]
rangeText=LD[1,"rangeText"]
units=LD[1,"Units"]
dateMin=min(LD$date)
dateMax=max(LD$date)
dateMinMax=paste(as.character(dateMin),"-",as.character(dateMax),sep=" ")

print(paste("Today is", date()))

print (c("Number of studies:",length(unique(LD$Study))),quote=F)
print (c("Number of subjects:",length(unique(LD$Subject))),quote=F)
#print (c("Number of subjectsxstudies:",length(unique(LD[,""]))),quote=F)
print(c("Ranges: ",rangeText))
cat("Dates:", dateMinMax, "\n")

readline("press return")

#options()
#rm(list=ls(all=TRUE))

hist(log(LD$Result),freq=T,nclass=100)
readline("press return")

hist(LD$Result,freq=T,xlim=c(0,400),nclass=length(LD$Result))
readline("press return")

hist(LD$Result,freq=T,xlim=c(0,400),nclass=100)
readline("press return")


plot(LD$Result,pch=20,cex=.5)
readline("press return")

plot(LD$date,LD$Result,pch=20,cex=.1)
abline(h=rangeLow,col=gray(.8))
abline(h=rangeHigh,col=gray(.8))
n=length(LD$Result)
title(main = paste(parameterName," Results (n=",n,")",sep=""), col.main = "blue", cex.main = 1.2, font.main = 4)
title(xlab = paste("From",dateMin,"to",dateMax), ylab=parameterName, col.lab = gray(.8), cex.lab = 1.0, font.lab = 3)
readline("press return")


#xy=cbind(x,y)
#opar <- par(bg = "white")
#plot(xy, type="p", ann=FALSE, pch=20, cex=.5)
#points(xy, pch=20) # , col="green") # pch=16
#lines(y, col = "green4", lty = "dotted")
#abline(h=110,col=gray(.8))
#abline(h=215,col=gray(.8))
#title(main = "3460 LD Results", col.main = "blue", cex.main = 1.2, font.main = 4)
#title(xlab = "From 2008-09-03 to 2009-05-08", col.lab = gray(.8), cex.lab = 1.0, font.lab = 3)
##axis(1, at=1:12, lab=month.abb, col.axis="blue")

which(result == max(result))
LD$date[result == max(result)]  
table(LD$Study)
barplot(table(LD$date)/length(LD$date)) 
readline("press return")

barplot(table(LD$Month)*100/length(LD$Month)) 
readline("press return")


hist(result,100,prob=T)     # proportions, not frequencies
lines(density(result),col='red') # Use SJ bandwidth, in red
readline("press return")

tmp=table(LD$Result,LD$Month)
old.digits = options("digits")
options(digits=3)             # only print 3 decimal places
prop.table(tmp,1)             # the rows sum to 1 now
		
#boxplot(scale(old),scale(new)) #make boxplot after scaling each 
#rug() # add ech observation
#levels(c("a","b","c"))

study=LD[[1]]
length(study)
split(result,study)
boxplot(split(result,study),horiz=T)

result.aov <- aov(result~study)
result.aov
summary(result.aov)
summary.lm(aov(result~study))

result.aov <- aov(result~study)
result.lm <- lm(result~study+date)
options(digit=3)
summary(result.lm)

