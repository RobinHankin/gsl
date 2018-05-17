\name{Expint}
\alias{Expint}
\alias{expint}
\alias{expint_E1}
\alias{expint_E2}
\alias{expint_En}
\alias{expint_Ei}
\alias{Shi}
\alias{Chi}
\alias{expint_3}
\alias{Si}
\alias{Ci}
\alias{atanint}
\title{exponential functions}
\description{
  Expint functions as per the Gnu Scientific Library, reference manual
  section 7.17 and AMS-55, chapter 5.  These functions are declared in
  header file \code{gsl_sf_expint.h}.
}
\usage{
expint_E1(x, give=FALSE, strict=TRUE)
expint_E2(x, give=FALSE, strict=TRUE)
expint_En(n, x, give=FALSE, strict=TRUE)
expint_Ei(x, give=FALSE, strict=TRUE)
Shi(x, give=FALSE, strict=TRUE)
Chi(x, give=FALSE, strict=TRUE)
expint_3(x, give=FALSE, strict=TRUE)
Si(x, give=FALSE, strict=TRUE)
Ci(x, give=FALSE, strict=TRUE)
atanint(x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{n}{input: integer values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\note{

  Function \code{expint_En()} requires \acronym{GSL} version 1.8 or later.
  
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{
x <- seq(from=0.5, to=1, by=0.01)
cbind(x,Si(x),Ci(x),expint_Ei(x),expint_E1(x))  #table 5.1 of AS, p239

x <- seq(from=0, to=12, len=100)
plot(x,Ci(x),col="black",type="l",xaxt="n",yaxt="n",bty="n",
         xlab="",ylab="",main="Figure 5.6, p232",
         xlim=c(0,12),ylim=c(-1,2.0))
lines(x,Si(x))
axis(1,pos=0)
axis(2,pos=0)
 abline(h=pi/2,lty=2)


# Table 5.4, page 245:
 xvec <- seq(from=0,by=0.01,len=20)
 nvec <- c(2,3,4,10,20)
 x <- kronecker(xvec,t(rep(1,5)))
 n <- kronecker(t(nvec),rep(1,20))
 ans <- cbind(x=xvec,expint_En(n,x))
 rownames(ans) <- rep(" ",length(xvec))
 colnames(ans) <- c("x",paste("n=",nvec,sep=""))
 class(ans) <- "I do not understand the first column"

 ans

}
\keyword{array}
