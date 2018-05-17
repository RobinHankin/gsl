#include <gsl/gsl_poly.h>

void gsl_poly(const double *c, const int *len, double *x, const int *lenx, double *ans)
{
	int i;
	for(i = 0; i< *lenx ; i++){
		ans[i] = gsl_poly_eval(c, *len, x[i]);
	}
}  
