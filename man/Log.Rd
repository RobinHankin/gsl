\name{Log}
\alias{Log}
\alias{log}
\alias{gsl_sf_log}
\alias{log_abs}
\alias{complex_log}
\alias{log_1plusx}
\alias{log_1plusx_mx}
\title{Log functions}
\description{
Log functions as per the Gnu Scientific Library, reference manual
section 7.25 and AMS-55, chapter 4.  These functions are declared in
header file \code{gsl_sf_log.h}
}
\usage{
gsl_sf_log(x, give=FALSE, strict=TRUE)
log_abs(x, give=FALSE, strict=TRUE)
complex_log(zr, zi=NULL, r.and.i=TRUE, give=FALSE, strict=TRUE)
log_1plusx(x, give=FALSE, strict=TRUE)
log_1plusx_mx(x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{zr}{In \code{complex_log()}, the real part of the argument}
  \item{zi}{In \code{complex_log()}, the imaginary part of the
    argument.  If missing (ie takes the default value of \code{NULL}),
    interpret \code{zr} as complex, even if real}
  \item{r.and.i}{In \code{complex_log()}, Boolean variable with
    default value of \code{TRUE} meaning to return a complex variable as
    per the details section below; and \code{FALSE} meaning to return
    the values as advertised in the \acronym{GSL} manual}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0.1,to=2,by=0.01)
log(x)   #table 7.5 of Ab and St
}

\keyword{array}
