% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functioncollection_CustomColors.R
\name{CustomColors}
\alias{ColBlues}
\alias{ColDiffGeneric}
\alias{ColDiffTemp}
\alias{ColGreens}
\alias{ColNitr}
\alias{ColPhos}
\alias{ColPrec}
\alias{ColPurples}
\alias{ColQ}
\alias{ColReds}
\alias{ColTemp}
\alias{ColYOB}
\alias{CustomColors}
\title{Custom color ramp palettes}
\usage{
ColNitr(n)

ColPhos(n)

ColPrec(n)

ColTemp(n)

ColQ(n)

ColDiffTemp(n)

ColDiffGeneric(n)

ColBlues(n)

ColReds(n)

ColGreens(n)

ColYOB(n)

ColPurples(n)
}
\arguments{
\item{n}{Integer, number of colors to generate.}
}
\value{
All functions return vectors of length \code{n} with interpolated RGB color values in hexadecimal 
notation (see \code{\link{rgb}}).
}
\description{
Pre-defined color ramp palettes which are used in other \code{HYPEtools} functions.
}
\details{
These functions build on calls to \code{\link{colorRampPalette}}.
}

