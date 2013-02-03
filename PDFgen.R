# TODO: Add comment
# 
# Author: jm
###############################################################################
# odfWeave(file, dest, workDir = odfTmpDir(), control = odfWeaveControl())


workdir <- "I:\\Dept BioPharm\\CDM\\GDML\\LD_EXTRACT.CSV"
workdir <- "H:\\EclipseWS\\Python\\py7\\HL7parser\\results\\LD_STUDY_SUBJECT_T_EXTRACT.CSV"
workdir <- "I:\\Dept BioPharm\\CDM\\GDML\\LD_EXTRACT.CSV"
workdir <- "/home/jm/eclipseWS3.3/py7/HL7parser/results"

for (x in dir(workdir,pattern='LD.CSV$')){
	file=paste(workdir,'/',x,sep='')
	PDFfile=paste(workdir,'/',sub('.CSV$','.PDF',x))
	cat(file,"->",PDFfile,"\n")
	A <- read.csv (file,header=T)
	units=A[1,"units"]
	date <- as.Date(A[,"date"],format="\"%Y%m%d%H%M\"")
	#d <- read.table(paste(workdir,'/',x,sep=''), header=TRUE) # sep="\t",
 
	pdf(PDFfile,sep='')
	plot(A$result, date,
			type="l",
			xlab="Dates",
			ylab=units,
			main=x)
	dev.off()
}

