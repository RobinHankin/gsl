\name{Fermi-Dirac}
\alias{Fermi_Dirac}
\alias{Fermi}
\alias{fermi_dirac}
\alias{fermi}
\alias{fermi_dirac_m1}
\alias{fermi_dirac_0}
\alias{fermi_dirac_1}
\alias{fermi_dirac_2}
\alias{fermi_dirac_int}
\alias{fermi_dirac_mhalf}
\alias{fermi_dirac_half}
\alias{fermi_dirac_3half}
\alias{fermi_dirac_inc_0}
\title{Fermi-Dirac functions}
\description{
  Fermi-Dirac functions as per the Gnu Scientific Library, reference
  manual section 7.18.  These functions are declared in header file
  \code{gsl_sf_fermi_dirac.h}
}
\usage{
fermi_dirac_m1(x, give=FALSE, strict=TRUE)
fermi_dirac_0(x, give=FALSE, strict=TRUE)
fermi_dirac_1(x, give=FALSE, strict=TRUE)
fermi_dirac_2(x, give=FALSE, strict=TRUE)
fermi_dirac_int(j, x, give=FALSE, strict=TRUE)
fermi_dirac_mhalf(x, give=FALSE, strict=TRUE)
fermi_dirac_half(x, give=FALSE, strict=TRUE)
fermi_dirac_3half(x, give=FALSE, strict=TRUE)
fermi_dirac_inc_0(x, b, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x,j,b}{input: real values}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{Boolean, with \code{TRUE} meaning to return \code{NaN}
    if status is an error}
}
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{

x <- seq(from=0,to=2,by=0.01)
fermi_dirac_m1(x)   #table 7.5 of Ab and St
}

\keyword{array}
