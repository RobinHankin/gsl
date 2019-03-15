#include <gsl/gsl_rng.h>
#include <gsl/gsl_randist.h>

#include <R.h>
#include <Rdefines.h>

static void rng_cleanup(SEXP r) {
	gsl_rng_free((gsl_rng*)EXTPTR_PTR(r));
}

gsl_rng* get_rng_from_sexp(SEXP rng) {
	gsl_rng* gen = NULL;
	if (TYPEOF(rng) != EXTPTRSXP || !(gen = (gsl_rng*)EXTPTR_PTR(rng))) {
		error("not a random number generator");
	}
	/* if gen is NULL here, this will probably cause a segfault */
	return gen;
}

SEXP rng_alloc(SEXP type) {
	const gsl_rng_type * T = NULL;
	SEXP result;

	switch(asInteger(type)) {
		case 0:
			T = gsl_rng_mt19937;
			break;
		case 1:
			T = gsl_rng_ranlxs0;
			break;
		case 2:
			T = gsl_rng_ranlxs1;
			break;
		case 3:
			T = gsl_rng_ranlxs2;
			break;
		case 4:
			T = gsl_rng_ranlxd1;
			break;
		case 5:
			T = gsl_rng_ranlxd2;
			break;
		case 6:
			T = gsl_rng_ranlux;
			break;
		case 7:
			T = gsl_rng_ranlux389;
			break;
		case 8:
			T = gsl_rng_cmrg;
			break;
		case 9:
			T = gsl_rng_mrg;
			break;
		case 10:
			T = gsl_rng_taus;
			break;
		case 11:
			T = gsl_rng_taus2;
			break;
		case 12:
			T = gsl_rng_gfsr4;
			break;
		case 13:
			T = gsl_rng_minstd;
			break;
		default:
			error("unknown random number generator type");
	};
	result = R_MakeExternalPtr(gsl_rng_alloc(T), R_NilValue, R_NilValue) ;
	R_RegisterCFinalizer(result, rng_cleanup);

	return result;

}

SEXP rng_set(SEXP r, SEXP sseed) {
	unsigned long int seed;
	gsl_rng* gen;

	gen = get_rng_from_sexp(r);

	PROTECT(sseed = AS_NUMERIC(sseed));
	seed = *(NUMERIC_POINTER(sseed));
	UNPROTECT(1);
	
	gsl_rng_set(gen, seed);

	return sseed;
}

SEXP rng_clone(SEXP r) {
	SEXP result;
	gsl_rng* gen;

	gen = get_rng_from_sexp(r);
	
	result = R_MakeExternalPtr(gsl_rng_clone(gen),
				   PROTECT(duplicate(EXTPTR_TAG(r))), R_NilValue);
	UNPROTECT(1);
	R_RegisterCFinalizer(result, rng_cleanup);

	return result;
}

SEXP rng_name(SEXP r) {
	gsl_rng* gen;

	gen = get_rng_from_sexp(r);
	
	return mkString(gsl_rng_name(gen));
}

SEXP rng_min(SEXP r) {
	SEXP result;
	gsl_rng* gen;

	gen = get_rng_from_sexp(r);
	
	PROTECT(result = NEW_NUMERIC(1));
	NUMERIC_POINTER(result)[0] = gsl_rng_min(gen);
	UNPROTECT(1);

	return result;
}

SEXP rng_max(SEXP r) {
	SEXP result;
	gsl_rng* gen;
	gen = get_rng_from_sexp(r);

	PROTECT(result = NEW_NUMERIC(1));
	NUMERIC_POINTER(result)[0] = gsl_rng_max(gen);
	UNPROTECT(1);

	return result;
}

SEXP rng_get(SEXP r, SEXP slength) {
	SEXP result;
	gsl_rng* gen;
	int length, i;

	/* parse args */
	gen = get_rng_from_sexp(r);
	PROTECT(slength = AS_NUMERIC(slength));
	length = (int)*(NUMERIC_POINTER(slength));
	UNPROTECT(1);

	/* get draws */
	PROTECT(result = NEW_NUMERIC(length));
	for(i = 0; i<length; i++) {
		NUMERIC_POINTER(result)[i] = gsl_rng_get(gen);
	}
	UNPROTECT(1);

	return result;
}

SEXP rng_uniform(SEXP r, SEXP slength) {
	SEXP result;
	int length, i;
	gsl_rng* gen;

	/* parse args */
	gen = get_rng_from_sexp(r);
	PROTECT(slength = AS_NUMERIC(slength));
	length = (int)*(NUMERIC_POINTER(slength));
	UNPROTECT(1);

	/* get draws */
	PROTECT(result = NEW_NUMERIC(length));
	for(i = 0; i<length; i++) {
		NUMERIC_POINTER(result)[i] = gsl_rng_uniform(gen);
	}
	UNPROTECT(1);

	return result;
}

SEXP rng_uniform_pos(SEXP r, SEXP slength) {
	SEXP result;
	gsl_rng* gen;
	int length, i;

	/* parse args */
	gen = get_rng_from_sexp(r);
	PROTECT(slength = AS_NUMERIC(slength));
	length = (int)*(NUMERIC_POINTER(slength));
	UNPROTECT(1);

	/* get draws */
	PROTECT(result = NEW_NUMERIC(length));
	for(i = 0; i<length; i++) {
		NUMERIC_POINTER(result)[i] = gsl_rng_uniform_pos(gen);
	}
	UNPROTECT(1);

	return result;
}

SEXP rng_uniform_int(SEXP r, SEXP sN, SEXP slength) {
	SEXP result;
	int length, i;
	unsigned long int N;
	gsl_rng* gen;

	/* parse args */
	gen = get_rng_from_sexp(r);
	PROTECT(slength = AS_NUMERIC(slength));
	length = (int)*(NUMERIC_POINTER(slength));
	PROTECT(sN = AS_NUMERIC(sN));
	N = (unsigned long int)*(NUMERIC_POINTER(sN));
	UNPROTECT(2);

	/* get draws */
	PROTECT(result = NEW_NUMERIC(length));
	for(i = 0; i<length; i++) {
		NUMERIC_POINTER(result)[i] = gsl_rng_uniform_int(gen, N);
	}
	UNPROTECT(1);

	return result;
}
