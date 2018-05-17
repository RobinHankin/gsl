\name{Coupling}
\alias{Coupling}
\alias{coupling}
\alias{coupling_3j}
\alias{coupling_6j}
\alias{coupling_9j}
\title{Coupling functions}
\description{
  Coupling functions as per the Gnu Scientific Library, reference manual
  section 7.8.  These functions are declared in header file
  \code{gsl_sf_coupling.h}
}
\usage{
coupling_3j(two_ja, two_jb, two_jc, two_ma, two_mb, two_mc, give=FALSE, strict=TRUE)
coupling_6j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf, give=FALSE, strict=TRUE)
coupling_9j(two_ja, two_jb, two_jc, two_jd, two_je, two_jf,
      two_jg, two_jh, two_ji, give=FALSE, strict=TRUE)
}
\arguments{
  \item{two_ja, two_jb, two_jc, two_jd, two_je, two_jf, two_jg, two_jh,
    two_ji, two_ma, two_mb, two_mc}{Arguments as per the \acronym{GSL} manual}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\examples{
coupling_3j(1,2,3,4,5,6)
coupling_6j(1,2,3,4,5,6)
coupling_9j(1,2,3,4,5,6,7,8,9)
}
\keyword{array}
