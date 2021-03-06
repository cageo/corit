% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AvgToBin.R
\name{AvgToBin}
\alias{AvgToBin}
\title{Average a vector into bins}
\usage{
AvgToBin(x, y, N = NULL, breaks = pretty(x, N), bFill = FALSE)
}
\arguments{
\item{x}{vector of x values}

\item{y}{vector of y values, same length as x}

\item{N}{Number of breaks (or NULL if breaks are supplied)}

\item{breaks}{vector of breaks (optional, instead if N)}

\item{bFill}{if TRUE  fill empty bins using linear interpolation from the neighbours to the center of the bin}
}
\value{
list(breaks,centers,avg,nobs)
Returns the breaks, centers, the averaged values and nobs, the number of observations averages
}
\description{
Averages y into bins according to the positon of a in the breaks
Either give N=number of breaks, or N+1 breaks
Breaks are defined as x>breaks[i], and x<=breaks[i+1]
if fill=T, fill empty bins using linear interpolation from the neighbours to the center of the bin
could be considerably speeded up by using cut ?cut
}
\author{
Thomas Laepple
}
