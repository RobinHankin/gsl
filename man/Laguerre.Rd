\name{Laguerre}
\alias{Laguerre}
\alias{laguerre}
\alias{laguerre_1}
\alias{laguerre_2}
\alias{laguerre_3}
\alias{laguerre_n}
\title{Laguerre functions}
\description{
  Laguerre functions as per the Gnu Scientific Library reference manual
  section 7.22.  These functions are declared in header file
  \code{gsl_sf_laguerre.h} 
}
\usage{
laguerre_1(a, x, give=FALSE, strict=TRUE)
laguerre_2(a, x, give=FALSE, strict=TRUE)
laguerre_3(a, x, give=FALSE, strict=TRUE)
laguerre_n(n, a, x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{a,x}{input: real values}
  \item{n}{input: integer values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=6,len=100)
plot(x,laguerre_n(2,0,x),xlim=c(0,6),ylim=c(-2,3),
          type="l",xaxt="n",yaxt="n",bty="n",xlab="",ylab="",
          main="Figure 22.9, p780")

lines(x,laguerre_n(3,0,x))
lines(x,laguerre_n(4,0,x))
lines(x,laguerre_n(5,0,x))
axis(1,pos=0)
axis(2,pos=0)

  }
\keyword{array}
