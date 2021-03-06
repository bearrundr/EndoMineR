% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CleanUp.R
\name{Extractor}
\alias{Extractor}
\title{Extracts the columns from the raw report}
\usage{
Extractor(inputString, delim)
}
\arguments{
\item{inputString}{the column to extract from}

\item{delim}{the vector of words that will be used as the boundaries to
extract against}
}
\description{
This is the main extractor for the Endoscopy and Histology report.
This depends on the user creating a list of words or characters that
act as the words that should be split against. The list is then fed to the
Extractor in a loop so that it acts as the beginning and the end of the
regex used to split the text. Whatever has been specified in the list
is used as a column header. Column headers don't tolerate special characters
like : or ? and / and don't allow numbers as the start character so these
have to be dealt with in the text before processing
}
\examples{
# As column names cant start with a number, one of the dividing
# words has to be converted
# A list of dividing words (which will also act as column names)
# is then constructed
mywords<-c("Hospital Number","Patient Name:","DOB:","General Practitioner:",
"Date received:","Clinical Details:","Macroscopic description:",
"Histology:","Diagnosis:")
Mypath2<-Extractor(PathDataFrameFinaL$PathReportWhole,mywords)

}
\keyword{Extraction}
