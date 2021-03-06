% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functioncollection_import.R
\name{ReadGeoClass}
\alias{ReadGeoClass}
\title{Read a 'GeoClass.txt' File}
\usage{
ReadGeoClass(filename = "GeoClass.txt", headrow)
}
\arguments{
\item{filename}{Path to and file name of the GeoClass file to import. Windows users: Note that 
Paths are separated by '/', not '\\'.}

\item{headrow}{Row number with header information. HYPE allows an unlimited number of comment rows above the actual file content, 
and the last comment row usually contains some header information. See Details.}
}
\value{
\code{ReadGeoClass} returns a data frame with added attribute 'comment'.
}
\description{
This is a convenience wrapper function to import a GeoClass file as data frame into R. GeoClass files contain definitions
of SLC (\bold{S}oil and \bold{L}and use \bold{C}lass) classes.
}
\details{
\code{ReadGeoClass} is a convenience wrapper function of \code{\link{read.table}}, with treatment of leading 
comment rows and a column header. Comment rows are imported as strings in \code{attribute} 'comment'. HYPE column headers are 
converted during import to  eliminate invalid characters (e.g. '-') and saved to \code{attribute} 'header'.
}
\examples{
\dontrun{ReadGeoClass("Geoclass.txt")}

}

