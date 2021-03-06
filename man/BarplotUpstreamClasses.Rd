% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_BarplotUpstreamClasses.R
\name{BarplotUpstreamClasses}
\alias{BarplotUpstreamClasses}
\title{Bar plots of upstream-averaged classes of HYPE sub-basins}
\usage{
BarplotUpstreamClasses(x, type = NULL, desc = NULL, xlab = NULL,
  ylab = "Area fraction (\%)", ylim = c(0, max(x[, -1] * 150)),
  class.names = NULL, names.arg = rep("", ncol(x) - 1), cex.axis = 1,
  cex.names = 0.9, col = NULL, legend.text = NULL, legend.pos = "left",
  pars = list(mar = c(1.5, 3, 0.5, 0.5) + 0.1, mgp = c(1.5, 0.3, 0), tcl = NA,
  xaxs = "i"))
}
\arguments{
\item{x}{Data frame, containing column-wise class group fractions with SUBIDs in first column. Typically a result 
from \code{\link{UpstreamGroupSLCClasses}}. Column names of class group fractions _must_ end with \code{_x}, with x giving the
class group ID, see details.}

\item{type}{Character string keyword for use with \code{desc}. Type of class groups, either \code{"landuse"}, 
\code{"soil"}, or \code{"crop"}, can be abbreviated.}

\item{desc}{List for use with \code{type}. Class description labels imported from a 'description.txt' file, for bar labeling.
See \code{\link{ReadDescription}} for formatting details.}

\item{xlab}{Character string, x-axis label, with defaults for standard groups land use, soil, and crops.}

\item{ylab}{Character string, y-axis label.}

\item{ylim}{Numeric, two element vector with limits for the y-axis. Defaults to values which give ample space for bar labels.}

\item{class.names}{Character vector of class group names, with same length as number of class group fractions in \code{x}. 
Specification of bar labels, alternative to arguments \code{type} and \code{desc}, in particular for cases where a non-standard
grouping was used for \code{x}.}

\item{names.arg}{Character vector, see \code{\link{barplot}}. Defaults to no labeling below bars (text labels within plot through 
arguments above).}

\item{cex.axis}{Numeric, character expansion factor for axis annotation and labels.}

\item{cex.names}{Numeric, character expansion factor for class group labels.}

\item{col}{Colors for bars. Defaults to pre-defined color (use vector of same length as number of SUBIDs if multiple catchments).}

\item{legend.text}{Character, if provided, a legend will be plotted. Defaults to none if one sub-basin is plotted, and SUBIDs 
if several sub-basins are plotted. Set to \code{NA} to prevent legend plotting in any case.}

\item{legend.pos}{Character keyword for legend positioning, most likely \code{"left"} or \code{"right"}. For details, see 
\code{\link{legend}}.}

\item{pars}{List of tagged values which are passed to \code{\link{par}}.}
}
\value{
The function returns bar midpoints, see description in \code{\link{barplot}}.
}
\description{
Function to plot upstream-averaged landscape property classes of one or several sub-basins as bar plots, e.g. 
land use or soils.
}
\details{
\code{BarplotUpstreamClasses} is a wrapper for \code{\link{barplot}}, with vertical labels plotted over the class group bars. 
Most arguments have sensible defaults, but can be adapted for fine-tuning if necessary.

Column names of \code{x} are used to link class groups to class IDs in \code{desc}. HYPE has no formal 
requirements on how class IDs are numbered and when one of the standard groups land use, soil, or crop are provided in \code{x}, 
there might be missing class IDs. Class names in \code{desc} are matched against column name endings \code{'_x'} in \code{x}. 
If manual names are provided in \code{class.names}, the column name endings must be a consecutive sequence from 1 to number of elements 
in \code{class.names}.
}
\examples{
\dontrun{res <- UpstreamGroupSLCClasses(subid = 21, gd = mygeodata, gcl = mygeoclass, bd = mybranchdata, type = "soil")}
\dontrun{BarplotUpstreamClasses(x = res, type = "s", desc = mydescription)}

}
\seealso{
\code{\link{UpstreamGroupSLCClasses}}
\code{\link{barplot}}
}

