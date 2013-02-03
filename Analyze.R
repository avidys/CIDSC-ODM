#parameterName="LD"
#source("Prepare.R")

# Methods
# 0. data source: GDML : 52 batches over a year period, studies (drug)
# 1. data transfer process
# 2. data pooling
# 3. data preparation
# 4. QC: others studies
# Results

# from 20080506051135 to 20090604024034
#Total number of lines read in HL7 input files 503481
#Total number of lines in study files 278252: lines in AllData.txt, pipe separated
# 1. All tests over a 1 year period
#     numbers of test, repartition per month
# 2. All tests: influence of drug, subject, period, study, visit (study period) on raw result: 
#        outcome: what can explain abnormal values, % of abnormal value, tranformation (shift), trand analysis (curve)
# 3. which are the useless tests: always normal? outliers?



date <- as.Date(Date,format="\"%Y%m%d%H%M%S\"")
Month <- paste(substr(Date,2,5),"-",substr(Date,6,7),sep="")
flag <- factor((Flag!="N"),labels=c("Normal","Abnormal"))


# plot all pchs
#plot(1:25, cex=2, pch=c(1:25), xlab="pch", main="pch Summary (plot char)")

dateMin=min(date)
dateMax=max(date)
dateMinMax=paste(as.character(dateMin),"-",as.character(dateMax),sep=" ")

print(paste("Today is", date()))

print (c("Number of studies:",length(unique(Study))),quote=F)
print (c("Number of subjects:",length(unique(Subject))),quote=F)
#print (c("Number of subjectsxstudies:",length(unique(LD[,""]))),quote=F)
cat("Dates:", dateMinMax, "\n")


