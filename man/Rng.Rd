\name{Rng}
\alias{Rng}
\alias{rng}
\alias{rng_alloc}
\alias{rng_clone}
\alias{rng_max}
\alias{rng_min}
\alias{rng_name}
\alias{rng_set}
\alias{rng_get}
\alias{rng_uniform}
\alias{rng_uniform_int}
\alias{rng_uniform_pos}
\title{Random numbers generation}
\description{Random number generation with the Gnu Scientific Library,
  as per the reference manual section 17}
\usage{
rng_alloc(type)
rng_clone(r)
rng_name(r)
rng_max(r)
rng_min(r)
rng_set(r, seed)
rng_get(r, length)
rng_uniform(r, length)
rng_uniform_int(r, N, length)
rng_uniform_pos(r, length)
}
\arguments{
  \item{type}{In function \code{rng_alloc()}, type of random number generator.
    This argument is taken to be a character string which is matched to
    the names of the random number generators given in the \acronym{GSL} manual
    section 17.9, with the initial \dQuote{\code{gsl_rng_}} removed
    (for example, to use generator \code{gsl_rng_ranlux}, set
    \code{type} to \code{ranlux}).  Partial matching is used; a null
    string is interpreted as \code{mt19937}.}
  \item{r}{Instance of a random number generator.  Generate this using
    function \code{rng_alloc()}.}
  \item{seed}{Random number seed}
  \item{length}{Length of vector of random numbers to create}
  \item{N}{In function \code{rng_uniform_int()},  upper bound of
    uniform distribution}
}
\details{
	These are wrappers for the random number generator
functions from the \acronym{GSL} \url{http://www.gnu.org/software/gsl} with
arguments corresponding to those from the library.
Calling \code{rng_free} is not necessary as R performs garbage
collection automatically.

The functions that return random numbers (\code{rng_get},
\code{rng_uniform}, \code{rng_uniform_int}, \code{rng_uniform_pos})
take an extra argument that specifies the length of the vector of
random numbers to be returned.
}
\value{
  Function \code{rng_alloc()} returns an external pointer to a \acronym{GSL} random
  number generator.
}
\references{\url{http://www.gnu.org/software/gsl}}
\author{Max Bruche}
\examples{
r <- rng_alloc("cmrg")
rng_set(r, 100)
rng_uniform(r, 10)
}

\keyword{datagen}
\keyword{distribution}
