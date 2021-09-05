\name{Powint}
\alias{pow_int}
\alias{Pow_int}
\alias{powint}
\title{Power functions}
\description{
  Power functions as per the Gnu Scientific Library reference manual
  section 7.27.  These functions are declared in the header file
  \code{gsl_sf_pow_int.h} 
}
\usage{
pow_int(x, n, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{n}{input: integer  values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{
pow_int(pi/2,1:10)   
}

\keyword{array}
