\name{Transport}
\alias{Transport}
\alias{transport}
\alias{transport_2}
\alias{transport_3}
\alias{transport_4}
\alias{transport_5}
\title{Transport functions}
\description{
  Transport functions as per the Gnu Scientific Library, reference manual 
  section 7.29.  These functions are defined in header file
  \code{gsl_sf_transport.h} 
}
\usage{
transport_2(x, give=FALSE, strict=TRUE)
transport_3(x, give=FALSE, strict=TRUE)
transport_4(x, give=FALSE, strict=TRUE)
transport_5(x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number.}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error.}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=2,by=0.01)
transport_2(x)
transport_3(x)   
}

\keyword{array}
