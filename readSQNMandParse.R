# read SQNM ODM

# f <- file(fileName,"r")
# f <- file("All_items_spss/All_items_ddl_spss.sps","r")
# doc = xmlTreeParse("odm1.3_fullAll_items_2013-01-30-094910395.xml/odm1.3_fullAll_items_2013-01-30-094910395.xml", useInternal = TRUE)
# f <- file("odm1.3_fullAll_items_2013-01-30-094910395.xml/odm1.3_fullAll_items_2013-01-30-094910395.xml","r")

#source("parseODM.R")

library(XML)

fileName <- "./odm1.3_fullAll_items_2013-01-30-094910395.xml/odm1.3_fullAll_items_2013-01-30-094910395.xml"

getwd()
print(fileName)
#parseODM(fileName)

# parsing
ODM = xmlRoot(xmlTreeParse(fileName))
#MD <- ODM[["Study"]][["MetaDataVersion"]]

names(ODM)
nodes <- xmlChildren(ODM)
studyNodes <- ODM[names(nodes) == "Study"]
adminNodes <- ODM[names(nodes) == "AdminData"]
defNodes <- ODM[names(nodes) == "ReferenceData"]   
clinNodes <- ODM[names(nodes) == "ClinicalData"]
assocNodes <- ODM[names(nodes) == "Association"]
sigNodes <- ODM[names(nodes) == "ds:Signature"]

cat("ODM: base=", basename(fileName), 
    "  items: ", length(N1), "\n", sep="")

IDefnodes <- MD[names(xmlChildren(MD)) == "ItemDef"]
CLnodes <- MD[names(xmlChildren(MD)) == "CodeList"]
