\name{Debye}
\alias{Debye}
\alias{debye}
\alias{debye_1}
\alias{debye_2}
\alias{debye_3}
\alias{debye_4}
\title{Debye functions}
\description{
  Debye functions as per the Gnu Scientific Library, section 7.10 of the
  reference manual.  These functions are declared in header file
  \code{gsl_sf_debye.h}
}
\usage{
debye_1(x, give=FALSE, strict=TRUE)
debye_2(x, give=FALSE, strict=TRUE)
debye_3(x, give=FALSE, strict=TRUE)
debye_4(x, give=FALSE, strict=TRUE)
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

x <- seq(from=0,to=10,by=0.1)
cbind(x,debye_1(x),debye_2(x),debye_3(x),debye_4(x))  #table 27.1
}

\keyword{array}
