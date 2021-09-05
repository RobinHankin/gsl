\name{Trig}
\alias{Trig}
\alias{trig}
\alias{gsl_sf_sin}
\alias{gsl_sf_cos}
\alias{hypot}
\alias{sinc}
\alias{complex_sin}
\alias{complex_cos}
\alias{complex_logsin}
\alias{lnsinh}
\alias{lncosh}
\title{Trig functions}
\description{
  Trig functions as per the Gnu Scientific Library, reference manual
  section 7.30.  These functions are declared in header file
  \code{gsl_sf_trig.h} 
}
\usage{
gsl_sf_sin(x, give=FALSE, strict=TRUE)
gsl_sf_cos(x, give=FALSE, strict=TRUE)
hypot(x, y, give=FALSE, strict=TRUE)
sinc(x, give=FALSE, strict=TRUE)
complex_sin(zr, zi=NULL, r.and.i=TRUE, give=FALSE, strict=TRUE)
complex_cos(zr, zi=NULL, r.and.i=TRUE, give=FALSE, strict=TRUE)
lnsinh(x, give=FALSE, strict=TRUE)
lncosh(x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x,y}{input: real values}
  \item{zr}{In \code{gamma_complex()}, the real part of the argument}
  \item{zi}{In \code{complex_sin()} et seq, the imaginary part of the
    argument.  If missing (ie takes the default value of \code{NULL}),
    interpret \code{zr} as complex, even if real}
  \item{r.and.i}{In \code{complex_sin()} et seq, Boolean variable with
    default value of \code{TRUE} meaning to return a complex variable as
    per the details section below; and \code{FALSE} meaning to return
    the values as advertised in the \acronym{GSL} manual}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=2,by=0.01)
gsl_sf_sin(x)   #table xx of Ab and St
gsl_sf_cos(x)   #table xx of Ab and St

f <- function(x){abs(sin(x+1)-sin(x)*cos(1)-cos(x)*sin(1))}
g <-
function(x){abs(gsl_sf_sin(x+1)-gsl_sf_sin(x)*gsl_sf_cos(1)-gsl_sf_cos(x)*gsl_sf_sin(1))}

f(100000:100010)
g(100000:100010)


}


\keyword{array}
