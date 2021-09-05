\name{Hyperg}
\alias{Hyperg}
\alias{hyperg}
\alias{hyperg_0F1}
\alias{hyperg_1F1_int}
\alias{hyperg_1F1}
\alias{hyperg_U_int}
\alias{hyperg_U}
\alias{hyperg_2F1}
\alias{hyperg_2F1_conj}
\alias{hyperg_2F1_renorm}
\alias{hyperg_2F1_conj_renorm}
\alias{hyperg_2F0}
\title{Hypergeometric functions}
\description{
  Hypergeometric functions as per the Gnu Scientific Library reference manual
  section 7.21 and AMS-55, chapters 13 and 15.  These functions are
  declared in header file \code{gsl_sf_hyperg.h}
}
\usage{
hyperg_0F1(c, x, give=FALSE, strict=TRUE)
hyperg_1F1_int(m, n, x, give=FALSE, strict=TRUE)
hyperg_1F1(a, b, x, give=FALSE, strict=TRUE)
hyperg_U_int(m, n, x, give=FALSE, strict=TRUE)
hyperg_U(a, b, x, give=FALSE, strict=TRUE)
hyperg_2F1(a, b, c, x, give=FALSE, strict=TRUE)
hyperg_2F1_conj(aR, aI, c, x, give=FALSE, strict=TRUE)
hyperg_2F1_renorm(a, b, c, x, give=FALSE, strict=TRUE)
hyperg_2F1_conj_renorm(aR, aI, c, x, give=FALSE, strict=TRUE)
hyperg_2F0(a, b, x, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x}{input: real values}
  \item{a,b,c}{input: real values}
  \item{m,n}{input: integer values}
  \item{aR,aI}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number.}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\note{
  \dQuote{The circle of convergence of the Gauss hypergeometric series
    is the unit circle \eqn{|z|=1}{|z|=1}} (AMS, page 556).

  There is a known issue in \code{hyperg_2F1()} in GSL-2.6,
  \url{https://savannah.gnu.org/bugs/?54998} and the package returns the
  erroneous value given by GSL.
 
  }
\examples{

hyperg_0F1(0.1,0.55)

hyperg_1F1_int(2,3,0.555)
hyperg_1F1(2.12312,3.12313,0.555)
hyperg_U_int(2, 3, 0.555)
hyperg_U(2.234, 3.234, 0.555)
}

\keyword{array}
