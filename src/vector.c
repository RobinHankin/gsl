/* Conversion between GSL vectors and R vectors.
 *
 * Written in 2007 by Andrew Clausen <clausen@econ.upenn.edu>
 */

#include <assert.h>

#include "vector.h"

#include <Rdefines.h>

gsl_vector *vector_gsl_from_R(SEXP x)
{
	int i, n;
	gsl_vector *result;
	double *x_;

	assert(isNumeric(x));
	x_ = REAL(x);
	n = LENGTH(x);
	result = gsl_vector_alloc(n);
	assert(result != NULL);
	for (i = 0; i < n; i++)
		gsl_vector_set(result, i, x_[i]);
	return result;
}

SEXP vector_R_from_gsl(const gsl_vector *x)
{
	SEXP result;
	double *x_;
	int i;
	int n = x->size;

	PROTECT(result = NEW_NUMERIC(n));
	x_ = NUMERIC_POINTER(result);
	for (i = 0; i < n; i++)
		x_[i] = gsl_vector_get(x, i);
	UNPROTECT(1);
	return result;
}

void vector_assign_gsl_from_R(gsl_vector *x, SEXP y)
{
	double *y_ = NUMERIC_POINTER(y);
	int i;
	int n = x->size;

	assert(LENGTH(y) == n);
	for (i = 0; i < n; i++)
		gsl_vector_set(x, i, y_[i]);
}
