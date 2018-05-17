\name{Qrng}
\alias{Qrng}
\alias{qrng}
\alias{qrng_alloc}
\alias{qrng_clone}
\alias{qrng_init}
\alias{qrng_name}
\alias{qrng_size}
\alias{qrng_get}
\title{Quasi-random sequences}
\description{

  Quasi-random sequences as per the Gnu Scientific Library, reference
  manual section 18.  These functions are declared in header file
  \code{gsl_qrng.h} 
}
\usage{
qrng_alloc(type = c("niederreiter_2", "sobol"), dim)
qrng_clone(q)
qrng_init(q)
qrng_name(q)
qrng_size(q)
qrng_get(q, n = 1)
}
\arguments{
  \item{type}{Type of sequence}
  \item{dim}{Dimension of sequence}
  \item{q}{Generator from \code{qrng_alloc} or \code{qrng_clone}}
  \item{n}{How many vectors to generate}
}
\details{
    These are wrappers for the quasi-random sequence
functions from the \acronym{GSL} \url{http://www.gnu.org/software/gsl} with
arguments corresponding to those from the library, with a few exceptions.
In particular:  I have used \code{dim} where the \acronym{GSL} uses just \code{d};
I have added the \code{n} argument to the \code{qrng_get} function, so that
a single call can generate \code{n} vectors; I have not provided \R
functions corresponding to \code{qrng_free} (because \R will automatically
free the generator when it is garbage collected) or \code{qrng_state} or
\code{qrng_memcpy} (because these don't make sense within \R.)
}
\value{
  \code{qrng_alloc}, \code{qrng_clone} and \code{qrng_init} return an external pointer
to the C structure representing the generator.  The internals of this structure
are not accessible from within \R.

  \code{qrng_name} returns a character vector giving the name of the generator.
  
  \code{qrng_size} returns an integer value giving the internal memory
usage of the generator.  

  \code{qrng_get} returns a matrix with \code{n} rows and \code{dim} columns.
Each row is a vector in the quasi-random sequence.
}
\references{ \url{http://www.gnu.org/software/gsl} }
\author{ Duncan Murdoch }
\examples{
q <- qrng_alloc(dim = 2)
qrng_name(q)
qrng_get(q, 10)
}

\keyword{ datagen }
\keyword{ distribution }
