library(XML)
f <- file("odm1.3_fullAll_items_2013-01-30-094910395.xml/odm1.3_fullAll_items_2013-01-30-094910395.xml","r")
#f <- file("All_items_spss/All_items_ddl_spss.sps","r")
xml = read.spss(file="All_items_spss/All_items_data_spss.dat")
close(con)
xml

doc = xmlTreeParse("odm1.3_fullAll_items_2013-01-30-094910395.xml/odm1.3_fullAll_items_2013-01-30-094910395.xml", useInternal = TRUE)
top = xmlRoot(doc)
xmlName(top)
[1] "ArticleSet"
names(top) - child nodes of this root
[1]


html3 <- htmlTreeParse
("http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en", 
 useInternalNodes=
                         xpathSApply(html3, "//title", xmlValue)
                       [1] "Jeff Leek - Google Scholar Citations"
                       xpathSApply(html3, "//td[@id='col-citedby']", xmlValue)
 
                       
                       
                       
                       art = top[[ 1 ]] [[ "AuthorList" ]]
                       what we
                       
                       it to S.
                       doc <- xmlTreeParse("/tmp/as.S", getDTD = F)
                       So now we want to get at the contents of the data. We get the top node of the document using the xmlRoot()
                       function.
                       r <- xmlRoot(doc)