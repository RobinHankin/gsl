\name{gsl-deprecated}
\title{gsl-deprecated}
\alias{gsl-deprecated}
\alias{legendre_Plm_array}
\alias{legendre_Plm_deriv_array}
\alias{legendre_sphPlm_array}
\alias{legendre_sphPlm_deriv_array}
\alias{legendre_array_size}
\alias{deprecated_legendre}
\description{
  Deprecated Legendre functions as per the Gnu Scientific Library reference manual
  section 7.24.
}
\usage{
legendre_Plm_array(...)
legendre_Plm_deriv_array(...)
legendre_sphPlm_array(...)
legendre_sphPlm_deriv_array(...)
legendre_array_size(...)
deprecated_legendre(...)
}
\arguments{
  \item{...}{(ignored)}
}
\note{

  As of GSL-2.1, functions

  \itemize{
    \item\code{gsl_sf_legendre_Plm_array}
    \item\code{gsl_sf_legendre_Plm_deriv_array}
    \item\code{gsl_sf_legendre_sphPlm_array}
    \item\code{gsl_sf_legendre_sphPlm_deriv_array}
    \item\code{gsl_sf_legendre_array_size}
  }

are deprecated.  This functionality is now provided in GSL by the
\code{gsl_sf_legendre_array} suite of functions; in R, use one of:

\itemize{
\item\code{legendre_array()}
\item\code{legendre_deriv_array()}
\item\code{legendre_deriv_alt_array()}
\item\code{legendre_deriv2_array()}
\item\code{legendre_deriv2_alt_array()}.
  }

  These are documented under \code{?Legendre}.
}

  
\references{\url{http://www.gnu.org/software/gsl}}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Legendre}}}
\keyword{array}
