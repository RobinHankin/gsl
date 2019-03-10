\name{gsl-package}
\alias{gsl-package}
\alias{gsl}
\alias{GSL}
\docType{package}
\title{
  Wrappers for the Gnu Scientific Library
}
\description{
\packageDescription{gsl}
}
\details{
The DESCRIPTION file:
\packageDESCRIPTION{gsl}
\packageIndices{gsl}

 The function naming scheme directly copies the \acronym{GSL} manual except that
  leading \code{gsl_sf_} and, if present, the trailing \code{_e} is
  stripped: thus \code{gsl_sf_Airy_Ai_e} goes to \R function
  \code{airy_Ai()}; however, some functions retain the prefix to avoid
  conflicts (viz \code{gsl_sf_sin()}, \code{gsl_sf_cos()},
  \code{gsl_sf_gamma()}, \code{gsl_sf_ choose()}, \code{gsl_sf_beta()}).

  \R\ function arguments have the same names as in the \acronym{GSL} reference 
  manual, except for the quasirandom functions documented in the
  \code{Qrng} manpage.

  The package is organized into units corresponding to \acronym{GSL} header files;
  the \code{.c}, \code{.R}, and \code{.Rd} filenames match the \acronym{GSL} header
  filenames, except that the \code{.Rd} files are capitalized.  Functions
  appear in all files in the same order as the \acronym{GSL} reference manual, which
  precludes the use of the tidying method given in section 3.1 of R-exts.
  Error forms of \acronym{GSL} functions (\code{_e} versions) are used if available.

  In general, documentation is limited to: (a), a pointer to the \acronym{GSL}
  reference book, which would in any case dominate any docs here; and (b),
  re-productions of some tables and figures in Abramowitz and Stegun
  (June 1964).
}
\author{
\packageAuthor{gsl}

Maintainer: \packageMaintainer{gsl}
}

\references{
  \itemize{
    \item M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of
      mathematical functions}.  New York: Dover
    \item M. Galassi et al. 2007. \emph{GNU Scientific Library}.
    Reference Manual edition 1.10, for \acronym{GSL} version 1.10; 10 September 2007
    \item R. K. S. Hankin 2006.  \emph{Introducing gsl, a wrapper for
      the Gnu Scientific Library}.  Rnews 6(4):24-26
  }      
}
\keyword{ package }
\examples{
airy_Ai(1:5)
}
