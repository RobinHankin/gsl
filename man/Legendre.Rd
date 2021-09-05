\name{Legendre}
\alias{Legendre}
\alias{legendre}
\alias{legendre_P1}
\alias{legendre_P2}
\alias{legendre_P3}
\alias{legendre_Pl}
\alias{legendre_Pl_array}
\alias{legendre_Q0}
\alias{legendre_Q1}
\alias{legendre_Ql}
\alias{legendre_array_n}
\alias{legendre_array_index}
\alias{legendre_check_args}
\alias{legendre_array}
\alias{legendre_deriv_array}
\alias{legendre_deriv_alt_array}
\alias{legendre_deriv2_array}
\alias{legendre_deriv2_alt_array}
\alias{legendre_Plm}
\alias{legendre_sphPlm}
\alias{conicalP_half}
\alias{conicalP_mhalf}
\alias{conicalP_0}
\alias{conicalP_1}
\alias{conicalP_sph_reg}
\alias{conicalP_cyl_reg}
\alias{legendre_H3d_0}
\alias{legendre_H3d_1}
\alias{legendre_H3d}
\alias{legendre_H3d_array}
\alias{conical}
\alias{Conical}
\title{Legendre functions}
\description{
  Legendre functions as per the Gnu Scientific Library reference manual
  section 7.24, and AMS-55, chapter 8.  These functions are declared in
  header file \code{gsl_sf_legendre.h}
}
\usage{
legendre_P1(x, give=FALSE, strict=TRUE)
legendre_P2(x, give=FALSE, strict=TRUE)
legendre_P3(x, give=FALSE, strict=TRUE)
legendre_Pl(l, x, give=FALSE, strict=TRUE)
legendre_Pl_array(lmax, x, give=FALSE, strict=TRUE)
legendre_Q0(x, give=FALSE, strict=TRUE)
legendre_Q1(x, give=FALSE, strict=TRUE)
legendre_Ql(l, x, give=FALSE, strict=TRUE)
legendre_array_n(lmax)
legendre_array_index(l,m)
legendre_check_args(x,lmax,norm,csphase)
legendre_array(x, lmax, norm=1, csphase= -1)
legendre_deriv_array(x, lmax, norm=1, csphase= -1)
legendre_deriv_alt_array(x, lmax, norm=1, csphase= -1)
legendre_deriv2_array(x, lmax, norm=1, csphase= -1)
legendre_deriv2_alt_array(x, lmax, norm=1, csphase= -1)
legendre_Plm(l, m, x, give=FALSE, strict=TRUE)
legendre_sphPlm(l, m, x, give=FALSE, strict=TRUE)
conicalP_half(lambda, x, give=FALSE, strict=TRUE)  
conicalP_mhalf(lambda, x, give=FALSE, strict=TRUE)  
conicalP_0(lambda, x, give=FALSE, strict=TRUE)  
conicalP_1(lambda, x, give=FALSE, strict=TRUE)  
conicalP_sph_reg(l, lambda, x, give=FALSE, strict=TRUE)  
conicalP_cyl_reg(m, lambda, x, give=FALSE, strict=TRUE)
legendre_H3d_0(lambda, eta, give=FALSE, strict=TRUE)
legendre_H3d_1(lambda, eta, give=FALSE, strict=TRUE)
legendre_H3d(l, lambda, eta, give=FALSE, strict=TRUE)
legendre_H3d_array(lmax, lambda, eta, give=FALSE, strict=TRUE)
}
\arguments{
  \item{eta,lambda,x}{input: real values}
  \item{l,m,lmax}{input: integer values}
  \item{csphase,norm}{Options for use with \code{legendre_array()}}
  \item{give}{Boolean, with default \code{FALSE} meaning to
    return just the answers, and \code{TRUE} meaning to return a status
    vector as well}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if nonzero status is returned by the \acronym{GSL} function (\code{FALSE}
    means to return the value: use with caution)}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{
 theta <- seq(from=0,to=pi/2,len=100)
 plot(theta,legendre_P1(cos(theta)),type="l",ylim=c(-0.5,1), main="Figure 8.1, p338")
 abline(1,0)
 lines(theta,legendre_P2(cos(theta)),type="l")
 lines(theta,legendre_P3(cos(theta)),type="l")

x <- seq(from=0,to=1,len=600)
plot(x, legendre_Plm(3,1,x), type="l",lty=3,main="Figure 8.2, p338: note sign error")
lines(x,legendre_Plm(2,1,x), type="l",lty=2)
lines(x,legendre_Plm(1,1,x), type="l",lty=1)
abline(0,0)


plot(x,legendre_Ql(0,x),xlim=c(0,1), ylim=c(-1,1.5), type="l",lty=1,
main="Figure 8.4, p339")
lines(x,legendre_Ql(1,x),lty=2)
lines(x,legendre_Ql(2,x),lty=3)
lines(x,legendre_Ql(3,x),lty=4)
abline(0,0)

#table 8.1 of A&S:
t(legendre_Pl_array(10, seq(from=0,to=1,by=0.01))[1+c(2,3,9,10),])

#table 8.3:
f <- function(n){legendre_Ql(n, seq(from=0,to=1,by=0.01))}
sapply(c(0,1,2,3,9,10),f)


# Some checks for the legendre_array() series:

# P_6^1(0.3):
legendre_array(0.3,7)[7,2]         # MMA:  LegendreP[6,1,0.3]; note off-by-one issue

# d/dx  P_8^5(x) @ x=0.2:
legendre_deriv_array(0.2,8)[9,6]   # MMA: D[LegendreP[8,5,x],x] /. {x -> 0.2}


# alternative derivatives:
 legendre_deriv_alt_array(0.4,8)[9,6]  # D[LegendreP[8,5,Cos[x]],x] /. x -> ArcCos[0.4] 



}

\keyword{array}
