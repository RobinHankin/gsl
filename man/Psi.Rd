\name{Psi}
\alias{Psi}
\alias{psi_int}
\alias{psi}
\alias{psi_1piy}
\alias{psi_1_int}
\alias{psi_1}
\alias{psi_n}
\title{Psi (digamma) functions}
\description{
  Psi (digamma) functions as per the Gnu Scientific Library, reference
  manual section 7.27.  These functions are declared in header file
  \code{gsl_sf_psi.h} 
}
\usage{
psi_int(n, give=FALSE, strict=TRUE)
psi(x, give=FALSE, strict=TRUE)
psi_1piy(y, give=FALSE, strict=TRUE)
psi_1_int(n, give=FALSE, strict=TRUE)
psi_1(x, give=FALSE, strict=TRUE)
psi_n(m, x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{m,n}{input: integer values}
  \item{x,y}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with default \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=1.2,to=1.25,by=0.005)
cbind(x,psi(x),psi_1(x))
#tabe 6.1, p267, bottom bit

psi_int(1:6)
psi(pi+(1:6))
psi_1piy(pi+(1:6))
psi_1_int(1:6)
psi_n(m=5,x=c(1.123,1.6523))

}

\keyword{array}
