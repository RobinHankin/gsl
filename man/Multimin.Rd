\name{multimin}
\alias{Multimin}
\alias{multimin}
\alias{multimin.init}
\alias{multimin.iterate}
\alias{multimin.restart}
\alias{multimin.fminimizer.size}
\title{Function minimization} 
\description{

  \emph{These functions have been removed from the package temporarily,
    pending a permanent fix.}
  
  Function minimization using the Gnu Scientific Library, reference
  manual section 35.  These functions are declared in header file
  \code{gsl_multimin.h}
  
  Several algorithms for finding (local) minima of functions in one or
  more variables are provided.  All of the algorithms operate locally,
  in the sense that they maintain a best guess and require the function
  to be continuous.  Apart from the Nelder-Mead algorithm, these
  algorithms also use a derivative.
}
\usage{
multimin(..., prec=0.0001)
multimin.init(x, f, df=NA, fdf=NA, method=NA, step.size=NA, tol=NA)
multimin.iterate(state)
multimin.restart(state)
multimin.fminimizer.size(state)
}
\arguments{
  \item{...}{In function \code{multimin()}, the argument list passed to
    \code{multimin.init()}}
  \item{x}{A starting point.  These algorithms are faster with better
    initial guesses}
  \item{f}{The function to minimize.  This function must take a single
    \code{numeric} vector as input, and output a \code{numeric} scalar}
  \item{df}{The derivative of \code{f}.  This is required for all algorithms
    except Nelder-Mead}
  \item{fdf}{A function that evaluates \code{f} and \code{df} simultaneously.
    This is optional, and is only useful if simultaneous evaluation is faster}
  \item{method}{The algorithm to use, which is one of
    \dQuote{\code{conjugate-fr}}, \dQuote{\code{conjugate-pr}},
    \dQuote{\code{bfgs}}, \dQuote{\code{steepest-descent}} and
    \dQuote{\code{nm}}}
  \item{step.size}{This step size guides the algorithm to pick a good
    distance between points in its search}
  \item{tol}{This parameter is relevant for gradient-based methods.  It
    controls how much the gradient should flatten out in each line
    search.  More specifically, let \eqn{u(t) = f(x + st)} be the
    function restricted to the search ray.  Then a point \eqn{t} is
    tolerable if \eqn{u'(t) < tol u'(0)}.  Higher values give more lax
    linesearches.  This parameter trades-off searching intensively in
    the outer loop (finding search directions) versus the inner loop
    (finding a good point in a particular direction)}
  \item{prec}{The stopping-rule precision parameter.  For the derivative-based
    methods, a solution is good enough if the norm of the gradient is smaller
    than \code{prec}.  For the non-derivative-based methods, a solution is good
    enough if the norm of successive solutions is smaller than \code{prec}}
  \item{state}{This stores all information relating to the progress of
    the optimization problem}
}
\details{
  There are two ways to call \code{multimin}.  The simple way is to
  merely call \code{multimin} directly.  A more complicated way is to
  call \code{multimin.init} first, and then repeatedly call
  \code{multimin.iterate} until the guess gets good enough.  In
  addition, \code{multimin.restart} can be used with the second approach
  to discard accumulated information (such as curvature information) if
  that information turns out to be unhelpful.  This is roughly
  equivalent to calling \code{multimin.init} by setting the starting
  point to be the current best guess.

  All of the derivative-based methods consist of iterations that pick a
  descent direction, and conduct a line search for a better point along
  the ray in that direction from the current point.  The Fletcher-Reeves
  and Polak-Ribiere conjugate gradient algorithms maintain a a vector
  that summarizes the curvature at that point.  These are useful for
  high-dimensional problems (eg: more than 100 dimensions) because they
  don't use matrices which become expensive to keep track of.  The
  Broyden-Fletcher-Goldfarb-Shanno is better for low-dimensional
  problems, since it maintains an approximation of the Hessian of the
  function as well, which gives better curvature information.  The
  steepest-descent algorithm is a naive algorithm that does not use any
  curvature information.  The Nelder-Mead algorithm which does not use
  derivatives.
}
\value{All of these functions return a state variable, which consists
of the following items:
  \item{internal.state}{Bureaucratic stuff for communicating with \acronym{GSL}}
  \item{x}{The current best guess of the optimal solution}
  \item{f}{The value of the function at the best guess}
  \item{df}{The derivative of the function at the best guess}
  \item{is.fdf}{TRUE if the algorithm is using a derivative}
  \item{code}{The \acronym{GSL} return code from the last iteration}
}
\references{\url{http://www.gnu.org/software/gsl}}
\seealso{
  \code{optim} and \code{nlm} are the standard optimization functions in
  R.

  \code{deriv} and \code{D} are the standard symbolic differentation
  functions in R.  \code{Ryacas} provides more extensive differentiation
  support using Yet Another Computer Algebra System.

  \code{numericDeriv} is the standard numerical differentation function
  in R.  \acronym{GSL} can also do numerical differentiation, but no-one has
  written an R interface yet.

  \code{multimin} requires the objective function to have a single
  (vector) argument. \code{unlist} and \code{relist} are useful for
  converting between more convenient forms.

}
\author{Andrew Clausen \email{clausen@econ.upenn.edu}}
\note{The source code for the functions documented here conditionalizes
  on \code{WIN32}; under windows there is a slight memory leak.}
\examples{
# The Rosenbrock function:
\donttest{
x0 <- c(-1.2, 1)
f <- function(x) (1 - x[1])^2 + 100 * (x[2] - x[1]^2)^2
df <- function(x) c(-2*(1 - x[1]) + 100 * 2 * (x[2] - x[1]^2) * (-2*x[1]),
                    100 * 2 * (x[2] - x[1]^2))

# The simple way to call multimin.
state <- multimin(x0, f, df)
print(state$x)

# The fine-control way to call multimin.
state <- multimin.init(x0, f, df, method="conjugate-fr")
for (i in 1:200)
	state <- multimin.iterate(state)
print(state$x)
}
}
\keyword{array}
