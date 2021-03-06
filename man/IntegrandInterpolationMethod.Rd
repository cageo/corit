% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IntegrandInterpolationMethod.R
\name{IntegrandInterpolationMethod}
\alias{IntegrandInterpolationMethod}
\title{IntegrandInterpolationMethod}
\usage{
IntegrandInterpolationMethod(X, fc, tn, appliedFilter = c("gauss", "runmean",
  "lowpass"), k = 5)
}
\arguments{
\item{X}{time series (zoo-object)}

\item{fc}{cut-off frequency}

\item{tn}{output vector (time) of the filtered data}

\item{appliedFilter}{time domain filter (gauss, runmean, lowpass)}

\item{k}{scaling factor to define the sharpness of the lowpass}
}
\value{
filtered time series (zoo-object)
}
\description{
integrand interpolation of the filter integral during filtering irregular time series at regular positions
}
\examples{
timser.irreg <- zoo(rnorm(100), order.by=sort(runif(100,min=1,max=1000)))
timser.irregSmooth <- IntegrandInterpolationMethod(X=timser.irreg, fc=1/50, tn=seq(from=10,to=1000,by=10), appliedFilter="lowpass", k=5)
plot(timser.irreg,type="l",col="black")
lines(timser.irregSmooth,col="limegreen",lwd=3)
}
