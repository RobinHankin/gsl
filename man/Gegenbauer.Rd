\name{Gegenbauer}
\alias{Gegenbauer}
\alias{gegenbauer}
\alias{gegenpoly_1}
\alias{gegenpoly_2}
\alias{gegenpoly_3}
\alias{gegenpoly_n}
\alias{gegenpoly_array}
\title{Gegenbauer functions}
\description{
  Gegenbauer functions as per the Gnu Scientific Library reference manual
  section 7.20, and AMS-55, chapter 22.  These functions are
  declared in header file \code{gsl_sf_gegenbauer.h}
}
\usage{
gegenpoly_1(lambda, x, give=FALSE,strict=TRUE)
gegenpoly_2(lambda, x, give=FALSE,strict=TRUE)
gegenpoly_3(lambda, x, give=FALSE,strict=TRUE)
gegenpoly_n(n,lambda, x, give=FALSE,strict=TRUE)
gegenpoly_array(nmax,lambda, x, give=FALSE,strict=TRUE)
}
\arguments{
  \item{lambda,x}{input: real values}
  \item{n,nmax}{input: integer value}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=-1 ,to=1,len=300)
y <- gegenpoly_array(6,0.5,x)
matplot(x,t(y[-(1:2),]), xlim=c(-1,1.2),ylim=c(-0.5,1.5),
       type="l",xaxt="n",yaxt="n",bty="n",xlab="",ylab="",
       main="Figure 22.5, p777",col="black")
axis(1,pos=0)
axis(2,pos=0)


plot(x, gegenpoly_n(5,lambda=0.2, x,give=FALSE,strict=TRUE),
xlim=c(-1,1),ylim=c(-1.5,1.5),main="Figure 22.5, p777",
type="n",xaxt="n",yaxt="n",bty="n",xlab="",ylab="")
lines(x, gegenpoly_n(5,lambda=0.2, x,give=FALSE,strict=TRUE))
lines(x, gegenpoly_n(5,lambda=0.4, x,give=FALSE,strict=TRUE))
lines(x, gegenpoly_n(5,lambda=0.6, x,give=FALSE,strict=TRUE))
lines(x, gegenpoly_n(5,lambda=0.8, x,give=FALSE,strict=TRUE))
lines(x, gegenpoly_n(5,lambda=1.0, x,give=FALSE,strict=TRUE))
axis(1,pos=0)
axis(2,pos=0,las=1)




}
\keyword{array}
