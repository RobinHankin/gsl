\name{Error}
\alias{error}
\alias{Error}
\alias{Error function}
\alias{erf}
\alias{erfc}
\alias{log_erfc}
\alias{log_erf_Z}
\alias{erf_Q}
\alias{hazard}
\title{Error functions}
\description{
  Error functions as per the Gnu Scientific Library, reference manual
  section 7.15 and AMS-55, chapter 7.  Thes functions are declared
  in header file \code{gsl_sf_error.h}
}
\usage{
erf(x, mode=0, give=FALSE, strict=TRUE)
erfc(x, mode=0, give=FALSE, strict=TRUE)
log_erfc(x, mode=0, give=FALSE, strict=TRUE)
log_erf_Z(x, mode=0, give=FALSE, strict=TRUE)
erf_Q(x, mode=0, give=FALSE, strict=TRUE)
hazard(x, mode=0, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{mode}{input: mode.  For \code{GSL_PREC_DOUBLE} ,
    \code{GSL_PREC_SINGLE}, \code{GSL_PREC_APPROX} use \code{0,1,2}
    respectively}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\details{
  The zero functions return a status of \code{GSL_EDOM} and a value of
  \code{NA} for \eqn{n\leq 0}{n\leq 0}
  }
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{


erf(0.745) # Example 1, page 304

}
\keyword{array}
