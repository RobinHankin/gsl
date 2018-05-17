/* An R wrapper for GSL's multimin family of functions for minimizing
 * functions.
 *
 * Written in 2007 by Andrew Clausen <clausen@econ.upenn.edu>
 */

#include <assert.h>

#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>
#include <Rdefines.h>

#include <gsl/gsl_multimin.h>

#include "vector.h"

const gsl_multimin_fdfminimizer_type *fdf_methods[5];
const gsl_multimin_fminimizer_type *f_methods[5];

static int initialized = 0;

static void init()
{
	if (initialized)
		return;
	initialized = 1;

	fdf_methods[0] = gsl_multimin_fdfminimizer_conjugate_fr;
	fdf_methods[1] = gsl_multimin_fdfminimizer_conjugate_pr;
	fdf_methods[2] = gsl_multimin_fdfminimizer_vector_bfgs;
	fdf_methods[3] = gsl_multimin_fdfminimizer_steepest_descent;
	fdf_methods[4] = NULL; 

	f_methods[0] = NULL;
	f_methods[1] = NULL;
	f_methods[2] = NULL;
	f_methods[3] = NULL;
	f_methods[4] = gsl_multimin_fminimizer_nmsimplex;
}

double f_wrapper(const gsl_vector *v, void *params)
{
	SEXP state = params;
	SEXP f_body = findVar(install("f"), state);
	SEXP rho = findVar(install("rho"), state);
	SEXP x = vector_R_from_gsl(v);

	PROTECT(x);
	defineVar(install("x"), x, rho);
	UNPROTECT(1);

	return REAL(eval(f_body, rho))[0];
}

void df_wrapper(const gsl_vector *v, void *params, gsl_vector *df)
{
	SEXP state = params;
	SEXP df_body = findVar(install("df"), state);
	SEXP rho = findVar(install("rho"), state);
	SEXP x = vector_R_from_gsl(v);

	PROTECT(x);
	defineVar(install("x"), x, rho);
	UNPROTECT(1);

	vector_assign_gsl_from_R(df, eval(df_body, rho));
}

void fdf_wrapper(const gsl_vector *v, void *params, double *f, gsl_vector *df)
{
	SEXP state = params;
	SEXP fdf_body = findVar(install("fdf"), state);
	SEXP rho = findVar(install("rho"), state);
	SEXP x = vector_R_from_gsl(v);
	SEXP result;

	PROTECT(x);
	defineVar(install("x"), x, rho);

	PROTECT(result = eval(fdf_body, rho));
	*f = REAL(findVar(install("f"), result))[0];
	vector_assign_gsl_from_R(df, findVar(install("df"), result));
	UNPROTECT(2);
}

void free_ptr(SEXP s)
{
	void *ptr = R_ExternalPtrAddr(s);
	free(ptr);
}

void free_fmin_ptr(SEXP s)
{
	gsl_multimin_fminimizer *gsl_state = R_ExternalPtrAddr(s);
	
/* following conditional suggested by Brian Ripley; under Windows, the
    call to free caused the package to fail R CMD check.  Omitting the
    free results in a slight memory leak; this is stated in
    Multimin.Rd
 */

#ifndef WIN32
	gsl_multimin_fminimizer_free(gsl_state);
#endif
	
}

SEXP multimin_f_new(SEXP state, SEXP x, SEXP method, SEXP step_size)
{
	SEXP ptr;
	gsl_multimin_fminimizer *gsl_state;
	const gsl_multimin_fminimizer_type *method_;
	gsl_multimin_function *f_;
	int n;

	init();

	assert(isNumeric(x));
	assert(isInteger(method));
	assert(isNumeric(step_size));

	n = LENGTH(x);
	assert(n > 0);

	assert(INTEGER(method)[0] < 6);
	method_ = f_methods[INTEGER(method)[0] - 1];
	assert(method_ != NULL);

	gsl_state = gsl_multimin_fminimizer_alloc(method_, n);
	assert(gsl_state != NULL);

	f_ = malloc(sizeof(gsl_multimin_function));
	assert(f_ != NULL);
	f_->f = f_wrapper;
	f_->n = n;
	f_->params = state;

	ptr = R_MakeExternalPtr(gsl_state, mkChar("gsl_state"), state);
	R_RegisterCFinalizer(ptr, free_fmin_ptr);
	setVar(install("gsl_state"), ptr, state);

	ptr = R_MakeExternalPtr(f_, mkChar("gsl_function"), state);
	R_RegisterCFinalizer(ptr, free_ptr);
	setVar(install("f_wrapper_ref"), ptr, state);

	gsl_multimin_fminimizer_set(gsl_state, f_, vector_gsl_from_R(x),
				    vector_gsl_from_R(step_size));
	return state;
}

SEXP multimin_fdf_new(SEXP state, SEXP x, SEXP method, SEXP step_size,
		      SEXP tol)
{
	SEXP ptr;
	gsl_multimin_fdfminimizer *gsl_state;
	const gsl_multimin_fdfminimizer_type *method_;
	gsl_multimin_function_fdf *f_;
	int n;

	init();

	assert(isNumeric(x));
	assert(isInteger(method));
	assert(isNumeric(step_size));
	assert(isNumeric(tol));
	assert(LENGTH(step_size) == 1);
	assert(LENGTH(tol) == 1);

	n = LENGTH(x);
	assert(n > 0);

	assert(INTEGER(method)[0] < 6);
	method_ = fdf_methods[INTEGER(method)[0] - 1];
	assert(method_ != NULL);

	gsl_state = gsl_multimin_fdfminimizer_alloc(method_, n);
	assert(gsl_state != NULL);

	f_ = malloc(sizeof(gsl_multimin_function_fdf));
	assert(f_ != NULL);
	f_->f = f_wrapper;
	f_->df = df_wrapper;
	f_->fdf = fdf_wrapper;
	f_->n = n;
	f_->params = state;

	ptr = R_MakeExternalPtr(gsl_state, mkChar("gsl_state"), state);
	R_RegisterCFinalizer(ptr, free_fmin_ptr);
	setVar(install("gsl_state"), ptr, state);

	ptr = R_MakeExternalPtr(f_, mkChar("gsl_function"), state);
	R_RegisterCFinalizer(ptr, free_ptr);
	setVar(install("f_wrapper_ref"), ptr, state);

	gsl_multimin_fdfminimizer_set(gsl_state, f_, vector_gsl_from_R(x),
				    REAL(step_size)[0], REAL(tol)[0]);
	return state;
}


SEXP multimin_f_iterate(SEXP state)
{
	gsl_multimin_fminimizer *gsl_state;
	SEXP result = NEW_INTEGER(1);

	PROTECT(result);
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	INTEGER(result)[0] = gsl_multimin_fminimizer_iterate(gsl_state);
	UNPROTECT(1);
	return result;
}

SEXP multimin_fdf_iterate(SEXP state)
{
	gsl_multimin_fdfminimizer *gsl_state;
	SEXP result = NEW_INTEGER(1);

	PROTECT(result);
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	INTEGER(result)[0] = gsl_multimin_fdfminimizer_iterate(gsl_state);
	UNPROTECT(1);
	return result;
}

SEXP multimin_restart(SEXP state)
{
	gsl_multimin_fdfminimizer *gsl_state;
	SEXP result = NEW_INTEGER(1);

	PROTECT(result);
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	INTEGER(result)[0] = gsl_multimin_fdfminimizer_restart(gsl_state);
	UNPROTECT(1);
	return result;
}

SEXP multimin_f_state_argmin(SEXP state)
{
	gsl_multimin_fminimizer *gsl_state;
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	return vector_R_from_gsl(gsl_state->x);
}

SEXP multimin_fdf_state_argmin(SEXP state)
{
	gsl_multimin_fdfminimizer *gsl_state;
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	return vector_R_from_gsl(gsl_state->x);
}

SEXP multimin_f_state_min(SEXP state)
{
	SEXP result = NEW_NUMERIC(1);
	PROTECT(result);
	gsl_multimin_fminimizer *gsl_state;
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	NUMERIC_POINTER(result)[0] = gsl_state->fval;
	UNPROTECT(1);
	return result;
}

SEXP multimin_fdf_state_min(SEXP state)
{
	SEXP result = NEW_NUMERIC(1);
	PROTECT(result);
	gsl_multimin_fdfminimizer *gsl_state;
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	NUMERIC_POINTER(result)[0] = gsl_state->f;
	UNPROTECT(1);
	return result;
}

SEXP multimin_fdf_state_grad(SEXP state)
{
	gsl_multimin_fdfminimizer *gsl_state;
	gsl_state = R_ExternalPtrAddr(findVar(install("gsl_state"), state));
	return vector_R_from_gsl(gsl_state->gradient);
}

