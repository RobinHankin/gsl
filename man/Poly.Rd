\name{Poly}
\alias{Poly}
\alias{poly}
\alias{gsl_poly}
\title{Polynomials}
\description{
  Polynomial functions as per the Gnu Scientific Library, reference manual
  section 6.1.  These functions are defined in header
  file \code{gsl_poly.h}
}
\usage{
gsl_poly(c_gsl,x)
}
\arguments{
  \item{c_gsl}{Coefficients of the poynomial (\code{c} in the function
    definition and the \acronym{GSL} ref manual) starting at the constant term and
    ending in the highest power; see details section.  This argument is
    called \dQuote{\code{c_gsl}} (and not \dQuote{\code{c}}) to avoid
    confusion with \R function \code{c()}}
  \item{x}{input: real values}
}
\details{
  One must be careful to avoid off-by-one errors.  In C idiom, the
  function evaluates the polynomial
  \deqn{c[0]+c[1]x+c[2]x^2+\ldots+c[\mathrm{len}-1]x^{\mathrm{len}-1}}{c[0]+c[1]+...+c[len-1]x^(len-1)}
  where len is the second argument of \acronym{GSL} function
  \code{gsl_poly_eval()}.

  The \R idiom would be
  \deqn{c[1]+c[2]x+c[3]x^2+\ldots+c[\mathrm{len}]x^{\mathrm{len}-1}.}{c[1]+c[2]+...+c[len]x^(len-1).}

  This section is work-in-progress and more will be added when I have
  the time/need for the other functions here.  
  }
\references{\url{https://www.gnu.org/software/gsl/}}
\author{Robin K. S. Hankin}
\examples{
a <- matrix(1:4,2,2)
rownames(a) <- letters[1:2]
(jj <- gsl_poly(1:3,a))

jj-(1 + 2*a + 3*a^2)  #should be small
}
\keyword{array}
