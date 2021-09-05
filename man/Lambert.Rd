\name{Lambert}
\alias{Lambert}
\alias{lambert}
\alias{lambert_W0}
\alias{lambert_Wm1}
\alias{Lambert_W0}
\alias{Lambert_Wm1}
\title{Lambert's W function}
\description{
  Lambert's W function as per the Gnu Scientific Library reference manual
  section 7.23.  These functions are declared in header file
  \code{gsl_sf_lambert.h} 
}
\usage{
lambert_W0(x, give=FALSE, strict=TRUE)
lambert_Wm1(x, give=FALSE,strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
    \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{https://www.gnu.org/software/gsl/}}  
\author{Robin K. S. Hankin}
\examples{
a <- runif(6)
L <- lambert_W0(a)
print(L*exp(L) - a)
}
\keyword{array}
