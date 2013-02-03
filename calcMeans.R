
rm(list=ls(all=TRUE))

library(lattice,4);library(xtable);library(quantreg);library(Hmisc)
require(datasets); require(grDevices); require(graphics); require(stats)

#replicate(n, lm(actual~raw2, data=t, subset=ID == n))
#reg=function(n) lm(actual~raw2, data=t, subset=ID == n)
#f=function(n)replicate(n,reg(n)$coefficients)

lm2 <- function(x) {
  lm(actual~raw2, data=t, subset=ID == x)
}

lmAll <- function() {
  #v=seq(0,33)
  for (i in c(1:3)) {
    v[i]=lm(actual~raw2, data=t, subset=ID == i)
  }
}


setwd("/home/jm/workspace_topcoders/HMS2/R")

vfs <- read.table("/home/jm/workspace_topcoders/HMS2/VFs.txt", header=FALSE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

MN4 <- read.table("/home/jm/workspace_topcoders/HMS2/means_4N.txt", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
MN5 <- read.table("/home/jm/workspace_topcoders/HMS2/means_5N.txt", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

ma <- read.table("/home/jm/workspace_topcoders/HMS2/means_a.txt", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

t <- read.table("/home/jm/workspace_topcoders/HMS2/glm2.txt", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)

#i=vector(length=34);
#r=vector(length=34);
d1 <- data.frame(r=0:33,i=0:33,c=0:33)
for (x in seq(0,33)) { 
   y=x+1
   c = lm(actual~raw1, data=t, subset=ID == x)$coefficients;
   #print (c)
   d1[y,"i"]= c[1];
   d1[y,"c"] = c[[2]];
}
#for (x in 0:33) { r[x]=paste("V",x,sep="") }

d2 <- data.frame(r=0:33,i=0:33,c=0:33)
for (x in seq(0,33)) { 
  y=x+1
  c = lm(actual~raw2, data=t, subset=ID == x)$coefficients;
  #print (c)
  d2[y,"i"]= c[1];
  d2[y,"c"] = c[[2]];
}

d3 <- data.frame(r=0:33,i=0:33,c=0:33)
for (x in seq(0,33)) { 
  y=x+1
  c = lm(actual~raw3, data=t, subset=ID == x)$coefficients;
  #print (c)
  d3[y,"i"]= c[1];
  d3[y,"c"] = c[[2]];
}

da <- data.frame(r=0:33,i=0:33,c=0:33)
for (x in seq(0,33)) { 
  y=x+1
  c = lm(actual~raw4, data=t, subset=ID == x)$coefficients;
  #print (c)
  da[y,"i"]= c[1];
  da[y,"c"] = c[[2]];
}

print(paste("Today is", date()))
names(t)
print (c("Number of points:",length(unique(t$ID))),quote=F)

#for (i in c(0,1,2,3)) {
#  v <- lm(actual~raw2, data=t, subset=ID == i)
#  print (v$coefficients, quote=FALSE)
#}


# mean and sd for normal spots ( -2 to 1 ) by spot

m1=sapply(split(subset(t$raw1,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),mean)
m2=sapply(split(subset(t$raw2,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),mean)
m3=sapply(split(subset(t$raw3,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),mean)
sd1=sapply(split(subset(t$raw1,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),sd)
sd2=sapply(split(subset(t$raw2,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),sd)
sd3=sapply(split(subset(t$raw3,t$actual > -3 && t$actual < 2),subset(t$ID,t$actual > -3 && t$actual < 2)),sd)

write.table(cbind(d1$i,d1$c,d2$i,d2$c,d3$i,d3$c,da$i,da$c,m1,m2,m3,sd1,sd2,sd3),file="/home/jm/workspace_topcoders/HMS2/msd.txt",quote=FALSE, sep=",",eol = "},\n{")

m1
m2
m3

# cor(t[c("actual","ID","raw2")], use="complete.obs")

#sd1=sapply(split(t$raw1,t$ID),sd)
#sd2=sapply(split(t$raw2,t$ID),sd)
#sd3=sapply(split(t$raw3,t$ID),sd)
#sd1=sapply(split(subset(t$raw1,t$actual==0),subset(t$ID,t$actual==0)),sd)
#sd2=sapply(split(subset(t$raw2,t$actual==0),subset(t$ID,t$actual==0)),sd)
#sd3=sapply(split(subset(t$raw3,t$actual==0),subset(t$ID,t$actual==0)),sd)

d2=(subset(t$raw2, t$case=="M17LE")-m2)/sd*10
d2
subset(t$actual, t$case=="M17LE")



numSummary(t[,"raw2"], statistics=c("mean", "sd", "quantiles"), quantiles=c(0,.25,.5,.75,1))

cor(t[c("actual","ID","raw1")], use="complete.obs")
cor(t[c("actual","ID","raw2")], use="complete.obs")
cor(t[c("actual","raw1")], use="complete.obs")

GLM.1 <- glm(actual ~ ID+raw2, family=gaussian(identity), data=t)
summary(GLM.1)

plot(t$raw1, type="h")

xyplot(actual ~ raw1, pch=16,
 auto.key=list(border=TRUE), par.settings = 
  simpleTheme(pch=16), scales=list(x=list(relation='same'), 
  y=list(relation='same')),
 data=t)

library(car) 
scatterplot(raw2~actual, reg.line=lm,smooth=TRUE,boxplots='xy',  span=0.5,data=t)

for (i in seq(0,33)) scatterplot(raw1~actual, main=i, reg.line=lm, smooth=TRUE, labels=FALSE, boxplots='xy', span=0.5, data=subset(t,t$ID == i))
     
scatterplot(actual~raw2, reg.line=lm, smooth=TRUE, labels=FALSE, boxplots='xy', span=0.5, data=t)
plot(raw2~actual,data=t,subset=ID==13)
abline(lm(t$raw2~t$actual))

pairs(~actual+raw2+ID,data=t, main="Simple Scatterplot Matrix")

library(lattice)
splom(t[actual~raw2], groups=ID, data=t,      panel=panel.superpose)

boxplot(actual~raw2,data=t)

hist(subset(t,t$ID == 7)$raw1,right=FALSE)
hist(t$actual,type=density,breaks=seq(-50,10))
densityplot(t$actual,breaks=seq(-30,10))
plot(t$actual)

abreaks2=c(-25,-9)
t$acut3=cut(t$actual,abreaks2)
table(t$acut3)

thick = t$raw1
breaks = seq(0,700,by=10) # (1.5, 5.5, by=0.5) 
thick.cut = cut(thick, breaks, right=FALSE) 
thick.freq = table(thick.cut)
thick.relfreq = thick.freq / nrow(t)

attach(t)
t$cat[actual >= -9] <- "NORMAL"
t$cat[actual >= -25 & actual < -9] <- "LOW"
t$cat[actual < -25] <- "BAD"
detach(t)

aa = subset(t,select=c("actual","raw2","ID"))
fit <- princomp(aa, cor=TRUE)
summary(fit) # print variance accounted for 
loadings(fit) # pc loadings 
plot(fit,type="lines") # scree plot 
fit$scores # the principal components
biplot(fit)


hist
#sapply(split(t$raw2,t$ID),lm(actual~raw2, data=t, subset=ID == 7))
#bar <- function(n, raw) replicate(n, lm(actual~raw2, data=t, subset=ID == n))
#mapply(lm,formula=actual~raw2,data=t, subset=ID==c(1,2,3))


#lm(actual~raw2, data=subset(t,t$ID == 7))
#anova(id7)
#plot(id7)
#id7$coefficients["raw2"]
