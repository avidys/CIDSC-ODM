library(XML)
f = system.file("odm1.3_fullAll_items_2013-01-30-094910395","sqnm.xml", package="XML")
doc=xmlParse(f)
xmlToDataFrame(nodes = xmlChildren(xmlRoot(doc)[["data"]]))

tryCatch( xmlTreeParse("<a><b></a>", asText = TRUE, error = NULL),
          +           XMLError = function(e) {
            +               cat("There was an error in the XML at line",
                                +                   e$line, "column", e$col, "\n",
                                +                   e$message, "\n")
            +           })

