\name{Dilog}
\alias{Dilog}
\alias{dilog}
\alias{polylog}
\alias{complex_dilog}
\title{Dilog functions}
\description{
  Dilog functions as per the Gnu Scientific Library reference manual
  section 7.11.  These functions are declared in header file
  \code{gsl_sf_dilog.h}
}
\usage{
dilog(x, give=FALSE, strict=TRUE)
complex_dilog(r, theta, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{r,theta}{In \code{complex_dilog()}, input 
    values.  If \code{theta} takes its default value of
    \code{NULL}, interpret \code{r} as a complex-valued object.  If
    \code{theta} is non-null, interpret \code{r} as the Modulus,
    and \code{theta} as the argument, of the complex object passed to
    \code{gsl_sf_complex_dilog_e()}}
  \item{give}{Boolean, with default \code{FALSE} meaning to
    return just the answers, and \code{TRUE} meaning to return a status
    vector as well}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if nonzero status is returned by the \acronym{GSL} function (\code{FALSE}
    means to return the value: use with caution)}
}
\details{All functions as documented in the \acronym{GSL} reference manual section
  7.11.}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0, to=0.1,by=0.01)
cbind(x,"f(x)"=dilog(1-x))   #table 27.7, p1005

}
\keyword{array}
