% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stat_km_compute.R
\name{h_surv_fit}
\alias{h_surv_fit}
\title{Helper for Common Kaplan-Meier Computations}
\usage{
h_surv_fit(data)
}
\arguments{
\item{data}{(\code{data.frame})\cr with \code{time} and \code{status} numeric columns.}
}
\value{
The \code{\link[survival:survfit]{survival::survfit()}} result as basis of
the Kaplan-Meier estimate.
}
\description{
Helper for Common Kaplan-Meier Computations
}
\keyword{internal}
