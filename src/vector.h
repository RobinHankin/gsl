/* Conversion between GSL vectors and R vectors.
 *
 * Written in 2007 by Andrew Clausen <clausen@econ.upenn.edu>
 */

#ifndef RGSL_VECTOR_H
#define RGSL_VECTOR_H

#include <R.h>
#include <Rinternals.h>

#include <gsl/gsl_vector.h>

extern gsl_vector *vector_gsl_from_R(SEXP x);
extern SEXP vector_R_from_gsl(const gsl_vector *x);
extern void vector_assign_gsl_from_R(gsl_vector *x, SEXP y);

#endif

