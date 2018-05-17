\name{Synchrotron}
\alias{Synchrotron}
\alias{synchrotron}
\alias{synchrotron_1}
\alias{synchrotron_2}
\title{Synchrotron functions}
\description{
  Synchrotron functions as per the Gnu Scientific Library, reference
  section 7.29.  These functions are declared in header file
  \code{gsl_sf_synchrotron.h}
}
\usage{
synchrotron_1(x, give=FALSE, strict=TRUE)
synchrotron_2(x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=2,by=0.01)
synchrotron_1(x)
synchrotron_2(x)   
}

\keyword{array}
