library(xtable)

wd <- "/home/jm/eclipseWS3.3/py7/HL7parser/analysis/"
wd <- "H:\\EclipseWS\\Python\\py7\\HL7parser\\analysis\\"

fileIn="LaboratoryTestsforANDA.Rnw"
fileOut="LaboratoryTestsforANDA.tex"
wdRun <- paste(wd,"odfWeaveRun",sep="")

fIn <- paste(wd,fileIn,sep="")
fOut <- paste(wd,fileOut,sep="")
print(c(fIn,fOut))

options(device.ask.default=FALSE)
Sweave(fIn)
tools::texi2dvi(fOut, pdf=TRUE)
Stangle(fOut)
source("LaboratoryTestsforANDA.R")

