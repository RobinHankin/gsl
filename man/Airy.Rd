\name{Airy}
\alias{Airy}
\alias{airy}
\alias{airy_Ai}
\alias{airy_Bi}
\alias{airy_Bi_e}
\alias{airy_Ai_scaled}
\alias{airy_Ai_scaled_e}
\alias{airy_Bi_scaled}
\alias{airy_Bi_scaled_e}
\alias{airy_Ai_deriv}
\alias{airy_Ai_deriv_e}
\alias{airy_Bi_deriv}
\alias{airy_Bi_deriv_e}
\alias{airy_Ai_deriv_scaled}
\alias{airy_Ai_deriv_scaled_e}
\alias{airy_Bi_deriv_scaled}
\alias{airy_Bi_deriv_scaled_e}
\alias{airy_zero_Ai}
\alias{airy_zero_Ai_e}
\alias{airy_zero_Bi}
\alias{airy_zero_Bi_e}
\alias{airy_zero_Ai_deriv}
\alias{airy_zero_Ai_deriv_e}
\alias{airy_zero_Bi_deriv}
\alias{airy_zero_Bi_deriv_e}
\title{Airy functions}
\description{
  Airy functions as per the Gnu Scientific Library, reference manual
  section 7.4 and AMS-55, section 10.4.  These functions are declared
  in header file \code{gsl_sf_airy.h}
  }
\usage{
airy_Ai(x, mode=0, give=FALSE, strict=TRUE)
airy_Ai_scaled(x, mode=0, give=FALSE, strict=TRUE)
airy_Ai(x, mode=0, give=FALSE, strict=TRUE)
airy_Bi_scaled(x, mode=0, give=FALSE, strict=TRUE)
airy_Ai_deriv(x, mode=0, give=FALSE, strict=TRUE)
airy_Bi_deriv(x, mode=0, give=FALSE, strict=TRUE)
airy_Ai_deriv_scaled(x, mode=0, give=FALSE, strict=TRUE)
airy_Bi_deriv_scaled(x, mode=0, give=FALSE, strict=TRUE)
airy_zero_Ai(n, give=FALSE, strict=TRUE)
airy_zero_Bi(n, give=FALSE, strict=TRUE)
airy_zero_Ai_deriv(n, give=FALSE, strict=TRUE)
airy_zero_Bi_deriv(n, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{n}{input: integer values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{mode}{input: mode.  For \code{GSL_PREC_DOUBLE},
    \code{GSL_PREC_SINGLE}, \code{GSL_PREC_APPROX} use \code{0,1,2}
    respectively}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\details{
  The zero functions return a status of \code{GSL_EDOM} and a value of
  \code{NA} for \eqn{n\leq 0}{n <= 0}.

  An example is given in the package vignette.
  }
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=1,by=0.01)

f <- function(x){
cbind(x=x, Ai= airy_Ai(x), Aidash= airy_Ai_deriv(x),
Bi=airy_Ai(x),Bidash=airy_Bi_deriv(x))
}

f(x)  #table 10.11, p475
f(-x) #table 10.11, p476


x <- 1:10  #table 10.13, p478
cbind(x,
 airy_zero_Ai(x), airy_Ai_deriv(airy_zero_Ai(x)),
 airy_zero_Ai_deriv(x), airy_Ai(airy_zero_Ai_deriv(x)),
 airy_zero_Bi(x), airy_Bi_deriv(airy_zero_Bi(x)),

 airy_zero_Bi_deriv(x), airy_Bi(airy_zero_Bi_deriv(x))
 )


# Verify 10.4.4 and 10.4.5, p446:
3^(-2/3)/gamma(2/3)   - airy_Ai(0)
3^(-1/3) / gamma(1/3) + airy_Ai_deriv(0) 
3^(-1/6) / gamma(2/3) - airy_Bi(0)
3^(1/6) / gamma(1/3)  - airy_Bi_deriv(0)
#  All should be small


}
