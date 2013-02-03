### If you want to source() a bunch of files, something like
### the following may be useful:
# sourceDir <- function(path, trace = TRUE, ...) {
#    for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
#       if(trace) cat(nm,":")           
#       source(file.path(path, nm), ...)
#       if(trace) cat("\n")
#    }
# }
#
# this is the preparation part of the analysis: data reading and data preparation
#
rm(list=ls(all=TRUE))

library(lattice);library(xtable);library(quantreg);library(Hmisc)
require(datasets); require(grDevices); require(graphics); require(stats)
#dir <- "I:\\Dept BioPharm\\CDM\\GDML"
#CC <- read.table(paste(dir,"mean_Tprofile-CC.txt",sep="/"),header=T)

# Work directory depending on the environment

wd <- "H:\\EclipseWS\\Python\\py7\\HL7parser\\R\\"
if (R.version$os=="linux-gnu") wd <- "/home/jm/eclipseWS3.3/py7/HL7parser/R/"

setwd(wd)
getwd()

wd <- "H:\\EclipseWS\\Python\\py7\\HL7parser\\results\\"
if (R.version$os=="linux-gnu") wd <- "/home/jm/eclipseWS3.3/py7/HL7parser/results/"

#A <- read.csv (paste(wd,"AllData.txt",sep=""), header = FALSE, sep = "|") # , quote="\"", dec=".", fill = TRUE, comment.char=""
#T <- read.csv (paste(wd,parameterName,".CSV",sep=""), header = TRUE, sep = ",")
#TS <- read.csv (paste(wd,parameterName,"_SUBJECT.CSV",sep=""), header = FALSE, sep = ",")
#TSS <- read.csv (paste(wd,parameterName,"_STUDY_SUBJECT.CSV",sep=""), header = FALSE, sep = ",")

#types <- lapply(types, as.name)  ## list of variable names 
#A=get("LD"))

#for (x in 1:32) { cat(x," ") }
#name the columns
colNames=vector(length=32); # rep("",32); 
for (x in 1:32) { colNames[x]=paste("V",x,sep="") }
cNames=c("Study","Subject","Birthday","Gender","Visit","ParameterClass","ClassName","Date","ParameterName","Result","Units","RangeLow","RangeHigh","RangesText","Flag")
cols=c(5,7,8,9,10,13,15,16,24,26,27,28,29,30,31)
for (x in 1:length(cNames)) { colNames[cols[x]]=cNames[x] }

# format of each column
cl=rep("NULL",32)

# read the file global files( all results)
A <- read.table ( paste(wd,"AllData.txt",sep=""), sep = "|", header = FALSE, 
		      col.names = colNames, colClasses="character", quote="", 
 			fill=TRUE, allowEscapes=TRUE) # colClasses=cl nrows=20, 

# remove null studies
TotalFileLength <- length(A$Date)
A <- subset(A, Study != "")

# remove time sampling is received

B <- subset(A, select=cNames)
B <- subset(B, ParameterName != "TIME URINE RECEIVED" )
B <- subset(B, ParameterName != "TIME SERUM RECEIVED" )

TUR <- subset(A,ParameterName == "TIME URINE RECEIVED", select=c(Study,Subject,Birthday,Gender,Date))
TSR <- subset(A,ParameterName == "TIME SERUM RECEIVED", select=c(Study,Subject,Birthday,Gender,Date))

B$Study=factor(B$Study)
B$Volonteer=B$Subject
B$Month=factor(paste(substr(B$Date,1,4),"-",substr(B$Date,5,6),sep=""))
B$Date=as.Date(B[,8],format="%Y%m%d%H%M")
B$Birthday=as.Date(B[,3],format="%Y%m%d")
B$AgeQuant=round(as.double(B$Date-B$Birthday)/365.25)
B$Age=as.integer(trunc(as.double(B$Date-B$Birthday)/365.25))
B$ClassName=factor(B$ClassName)
B$ParameterName=B$ParameterName
B$Units=B$Units
B$Flag=factor(B$Flag)
B$Gender=factor(B$Gender)
B$Subject=paste(B$Study,"-",B$Subject,sep="")

TUR$Study=factor(TUR$Study)
TUR$Volonteer=TUR$Subject
TUR$Month=factor(paste(substr(TUR$Date,1,4),"-",substr(TUR$Date,5,6),sep=""))
TUR$Date=as.Date(TUR[,5],format="%Y%m%d%H%M")
TUR$Birthday=as.Date(TUR[,3],format="%Y%m%d")
TUR$AgeQuant=round(as.double(TUR$Date-TUR$Birthday)/365.25)
TUR$Age=as.integer(trunc(as.double(TUR$Date-TUR$Birthday)/365.25))
TUR$Gender=factor(TUR$Gender)
TUR$Subject=paste(TUR$Study,"-",TUR$Subject,sep="")

TSR$Study=factor(TSR$Study)
TSR$Volonteer=TSR$Subject
TSR$Month=factor(paste(substr(TSR$Date,1,4),"-",substr(TSR$Date,5,6),sep=""))
TSR$Date=as.Date(TSR[,5],format="%Y%m%d%H%M")
TSR$Birthday=as.Date(TSR[,3],format="%Y%m%d")
TSR$AgeQuant=round(as.double(TSR$Date-TSR$Birthday)/365.25)
TSR$Age=as.integer(trunc(as.double(TSR$Date-TSR$Birthday)/365.25))
TSR$Gender=factor(TSR$Gender)
TSR$Subject=paste(TSR$Study,"-",TSR$Subject,sep="")

B$flag <- factor((B$Flag!="N"),labels=c("Normal","Abnormal"))

label(B$Subject) <- "Subject ID"
label(B$Study) <- "Study ID"
label(B$Gender) <- "Gender"
label(B$Birthday) <- "Birthday"
label(B$Date) <- "Sampling Date"

label(B$Flag) <- "Result Flag Normal/Abnormal"

#Visit=factor(A[,10]) 
#ParameterClass=factor(A[,13]) 
#ParameterName=factor(A[,24])
#Result=A[,26]
#Units=factor(A[,27])
#RangeLow=A[,28]
#RangeHigh=A[,29]
#RangesText=A[,30]

rm(A)

E=subset(B,B$Study != "")
#length(D$Study[D$Study!=""])

# calculate age, delays

# parameter by month

# remove parameter not standard : < 1000

#number.present <- rowSums( myMatrix != -999 )
#good.rows      <- which( number.present >= 6 )
#myMatrix.sub   <- myMatrix[ good.rows, ]

f=factor(B$ParameterName,exclude=names(which(table(B$ParameterName) < 50)))
#length(na.omit(f))
C=B[which(!is.na(f)),]

# remove incomplete studies
f=factor(C$Study,exclude=names(which(table(C$Study) < 1000)))
#length(na.omit(f))
D=C[which(!is.na(f)),]

#E=subset(D,D$Gender != "U")[,1])

# select classes
c("CHEMISTRY","HEMATOLOGY","URINALYSIS")

#install.packages("SASxport",dependencies=TRUE)
library(SASxport)

#http://cran.r-project.org/web/packages/SASxport/SASxport.pdf
## add a format specifier (not used by R)
#attr(temp$x, 'SASformat') <- 'date7.'
## add a variable label (not used by R)
#attr(temp$y, 'label') <- 'character variable'
# create a SAS XPORT file
#write.xport( B, file="B.dat" )
# list the contents of the file
#lookup.xport("B.dat")
## reload the data
#B.abc <- read.xport("B.dat")

#contents(B)
#contents(TSR)
#contents(TUR)
