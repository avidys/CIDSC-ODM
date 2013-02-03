# parseODM
# (C) Jean Maupas, Clinovo 2013
# free for academic use
# input: ODM files
# output: several datasets as per documentation

checkFile <- function( fileName ) {
  
}


treeApply <- function(x, func, post=NULL, pre=NULL, ...) {
  ans <- NULL
  
  value <- func(x)
  
  if(length(value))
    ans <- list(value=value)
  
  # If there are any children, do a recursive apply on those also.
  # If the result is non-null
  if( length(x[["children"]]) > 0 ) {
    tmp <- lapply(x[["children"]], treeApply, func, ...)
    if(length(tmp) > 0)
      ans$children - tmp
  }
  
  # invoke the post-processing of children hook.
  if(length(post)) {
    post(x)
  }
  
  invisible(ans)
}

generateTree <- function(){}
foo <-  function(x) {
  label <- ifelse(length(x$value), x$value, ifelse(length(x$name), x$name,"doc"))
  if(length(x[["children"]])==0) {
    cat("\\Tr{",label,"}%\n",sep="")
  } else {
    cat("\\pstree{\\Tr{",label,"}}{%\n",sep="")
  }
}
}


post <- function(x) if(length(x$children) > 0) cat("}\n")
treeApply(x, foo, post= post)

sourceDir <- function(path, trace = TRUE, ...) {
  for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
    if(trace) cat(nm,":")           
    source(file.path(path, nm), ...)
    if(trace) cat("\n")
  }
}


isODM <- function( ODMfile1="" ){
  percent <- round(x * 100, digits = 1)
  result <- paste(percent, "%", sep = "")
  return(result)
}

parseODM <- function( ODMfile1="" ) {
  library(XML)
  
  # choose file and test if exists
  if (ODMfile1 == "") 
      ODMfile1 <- file.choose()
#  else 
#      try { open(ODMfile1) }

  currentdir <- getwd()
  setwd(dirname(ODMfile1))
  
  # parsing
  ODM = xmlRoot(xmlTreeParse(ODMfile1))
  MD <- ODM[["Study"]][["MetaDataVersion"]]
  
  IDefnodes <- MD[names(xmlChildren(MD)) == "ItemDef"]
  CLnodes <- MD[names(xmlChildren(MD)) == "CodeList"]
  N1 <- vector()
  D1 <- vector()
  U1 <- vector()
  C1 <- vector()
  OID1 <- vector()
  for (m in 1: length(IDefnodes) ) {
    Inode <- IDefnodes[[m]]
    Name <- xmlAttrs(Inode)["Name"]
    OID <- xmlAttrs(Inode)["OID"]
    DataType <- xmlAttrs(Inode)["DataType"]
    UMLS <- ""
    Alias <- Inode[names(xmlChildren(Inode)) == "Alias"]
    if (length(Alias) > 0) {
      for (k in 1: length(Alias) ) {
        Context <- xmlAttrs(Alias[[k]])["Context"]
        if (grepl("^UMLS", Context)) {
          UMLS <- paste(UMLS, xmlAttrs(Alias[[k]])["Name"], " ", sep="")
        }
      }
      UMLS <- sub(" $","",UMLS)
      UMLS <- paste(sort(unlist(strsplit(UMLS, " "))), collapse= " ")
    }
    CodeListRef <- Inode[["CodeListRef"]]
    if (is.null(CodeListRef)) { CodeList <- "" }
    else {
      CodeListOID <- xmlAttrs(CodeListRef)["CodeListOID"]
      CodeList <- CodeListOID 
      for (k in 1: length(CLnodes) ) {
        Cnode <- CLnodes[[k]]
        if (CodeListOID == xmlAttrs(Cnode)["OID"]) {
          CLI <- xmlChildren(Cnode)
          for (l in 1: length(CLI) ) {
            CodedValue <- xmlAttrs(CLI[[l]])["CodedValue"]
            label <- xmlValue(CLI[[l]][["Decode"]][["TranslatedText"]])
            CodeList <- paste(CodeList, ",", CodedValue,"=", label, sep="") 
          }
        }
      }         
    }
    N1[m] <- Name
    OID1 [m] <- OID
    D1[m] <- DataType
    U1[m] <- UMLS
    C1[m] <- CodeList
    # cat(Name, DataType, UMLS, CodeList, "\n", sep="|" )
  }
  
  cat("ODMfile1=", basename(ODMfile1), 
      "  items: ", length(N1), "\n", sep="")
  
  setwd(currentDir)
  
}
  