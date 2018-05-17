\name{Gamma}
\alias{Gamma}
\alias{gamma}
\alias{gsl_sf_gamma}
\alias{lngamma}
\alias{lngamma_sgn}
\alias{gammastar}
\alias{gammainv}
\alias{lngamma_complex}
\alias{taylorcoeff}
\alias{fact}
\alias{doublefact}
\alias{lnfact}
\alias{lndoublefact}
\alias{gsl_sf_choose}
\alias{lnchoose}
\alias{poch}
\alias{lnpoch}
\alias{lnpoch_sgn}
\alias{pochrel}
\alias{gamma_inc_Q}
\alias{gamma_inc_P}
\alias{gamma_inc}
\alias{gsl_sf_beta}
\alias{lnbeta}
\alias{beta_inc}
\title{gamma functions}
\description{
 Gamma functions as per the Gnu Scientific Library reference manual
 section 7.19.  These functions are declared in header file
 \code{gsl_sf_gamma.h} 
}
\usage{
gsl_sf_gamma(x,give=FALSE,strict=TRUE)
lngamma(x,give=FALSE,strict=TRUE)
lngamma_sgn(x,give=FALSE,strict=TRUE)
gammastar(x,give=FALSE,strict=TRUE)
gammainv(x,give=FALSE,strict=TRUE)
lngamma_complex(zr, zi=NULL, r.and.i=TRUE, give=FALSE, strict=TRUE)
taylorcoeff(n,x,give=FALSE,strict=TRUE)
fact(n,give=FALSE,strict=TRUE)
doublefact(n,give=FALSE,strict=TRUE)
lnfact(n,give=FALSE,strict=TRUE)
lndoublefact(n,give=FALSE,strict=TRUE)
gsl_sf_choose(n,m,give=FALSE,strict=TRUE)
lnchoose(n,m,give=FALSE,strict=TRUE)
poch(a,x,give=FALSE,strict=TRUE)
lnpoch(a,x,give=FALSE,strict=TRUE)
lnpoch_sgn(a,x,give=FALSE,strict=TRUE)
pochrel(a,x,give=FALSE,strict=TRUE)
gamma_inc_Q(a,x,give=FALSE,strict=TRUE)
gamma_inc_P(a,x,give=FALSE,strict=TRUE)
gamma_inc(a,x,give=FALSE,strict=TRUE)
gsl_sf_beta(a,b,give=FALSE,strict=TRUE)
lnbeta(a,b,give=FALSE,strict=TRUE)
beta_inc(a,b,x,give=FALSE,strict=TRUE)
}
\arguments{
  \item{x,a,b}{input: real values}
  \item{m,n}{input: integer value}
  \item{zr}{In \code{gamma_complex()}, the real part of the argument}
  \item{zi}{In \code{gamma_complex()}, the imaginary part of the
    argument.  If missing (ie takes the default value of \code{NULL}),
    interpret \code{zr} as complex, even if real}
  \item{r.and.i}{In \code{gamma_complex()}, Boolean variable with
    default value of \code{TRUE} meaning to return a complex variable as
    per the details section below; and \code{FALSE} meaning to return
    the values as advertised in the \acronym{GSL} manual}
    \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\details{

  All functions as documented in the \acronym{GSL} reference manual section 7.19.

  Note that \code{gamma_inc_P()} gives the area of the left tail of the
  gamma distribution so, for example, \code{gamma_inc_P(1.8, 5) =
  pgamma(5, 1.8)} to numerical accuracy.

}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{
gsl_sf_gamma(3)

lngamma_complex(1+seq(from=0,to=5,by=0.1)*1i)  #table 6.7, p 277 (LH col)
                                               #note 2pi phase diff


jj <- expand.grid(1:10,2:5)
x <- taylorcoeff(jj$Var1,jj$Var2)
dim(x) <- c(10,4)
x    #table 23.5, p818


jj <- expand.grid(36:50,9:13)
x <- gsl_sf_choose(jj$Var1,jj$Var2)
dim(x) <- c(15,5)
x     #table 24.1, p829  (bottom bit)

gamma_inc(1.2,1.3)
beta(1.2, 1.3)
lnbeta(1.2,1.55)
beta_inc(1.2,1.4,1.6)

gamma_inc_P(1.8, 5) - pgamma(5, 1.8)  # should be small

}
\keyword{array}
