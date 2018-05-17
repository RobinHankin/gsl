\name{Zeta}
\alias{Zeta}
\alias{zeta_int}
\alias{zeta}
\alias{zetam1_int}
\alias{zetam1}
\alias{hzeta}
\alias{eta_int}
\alias{eta}
\title{Zeta functions}
\description{
  Zeta functions as per the Gnu Scientific Library 7.31 and AMS-55,
  section 23.2.  These functions are declared in header file
  \code{gsl_sf_zeta.h} 
}
\usage{
zeta_int(n, give=FALSE, strict=TRUE)
zeta(s, give=FALSE, strict=TRUE)
zetam1_int(n, give=FALSE, strict=TRUE)
zetam1(s, give=FALSE, strict=TRUE)
hzeta(s, q, give=FALSE, strict=TRUE)
eta_int(n, give=FALSE, strict=TRUE)
eta(s, give=FALSE, strict=TRUE)

}
\arguments{
  \item{n}{input: integer values}
  \item{s,q}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number.}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error.}
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{

n <- 1:10
cbind(n,zeta(n),eta(n))   #table 23.3, p 811


zeta_int(1:5)
zeta(c(pi,pi*2))
zetam1_int(1:5)
zetam1(c(pi,pi*2))
hzeta(1.1,1.2)
eta_int(1:5)
eta(c(pi,pi*2))

}

\keyword{array}
