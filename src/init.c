#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .C calls */
extern void airy_Ai_deriv_e(void *, void *, void *, void *, void *, void *);
extern void airy_Ai_deriv_scaled_e(void *, void *, void *, void *, void *, void *);
extern void airy_Ai_e(void *, void *, void *, void *, void *, void *);
extern void airy_Ai_scaled_e(void *, void *, void *, void *, void *, void *);
extern void airy_Bi_deriv_e(void *, void *, void *, void *, void *, void *);
extern void airy_Bi_deriv_scaled_e(void *, void *, void *, void *, void *, void *);
extern void airy_Bi_e(void *, void *, void *, void *, void *, void *);
extern void airy_Bi_scaled_e(void *, void *, void *, void *, void *, void *);
extern void airy_zero_Ai_deriv_e(void *, void *, void *, void *, void *);
extern void airy_zero_Ai_e(void *, void *, void *, void *, void *);
extern void airy_zero_Bi_deriv_e(void *, void *, void *, void *, void *);
extern void airy_zero_Bi_e(void *, void *, void *, void *, void *);
extern void atanint_e(void *, void *, void *, void *, void *);
extern void bessel_I0_e(void *, void *, void *, void *, void *);
extern void bessel_i0_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_I0_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_I1_e(void *, void *, void *, void *, void *);
extern void bessel_i1_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_I1_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_i2_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_il_scaled_array_e(void *, void *, void *, void *, void *);
extern void bessel_il_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_In_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_In_e(void *, void *, void *, void *, void *, void *);
extern void bessel_In_scaled_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_In_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Inu_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Inu_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_j0_e(void *, void *, void *, void *, void *);
extern void bessel_J0_e(void *, void *, void *, void *, void *);
extern void bessel_j1_e(void *, void *, void *, void *, void *);
extern void bessel_J1_e(void *, void *, void *, void *, void *);
extern void bessel_j2_e(void *, void *, void *, void *, void *);
extern void bessel_jl_array_e(void *, void *, void *, void *, void *);
extern void bessel_jl_e(void *, void *, void *, void *, void *, void *);
extern void bessel_jl_steed_array_e(void *, void *, void *, void *, void *);
extern void bessel_Jn_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Jn_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Jnu_e(void *, void *, void *, void *, void *, void *);
extern void bessel_K0_e(void *, void *, void *, void *, void *);
extern void bessel_k0_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_K0_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_K1_e(void *, void *, void *, void *, void *);
extern void bessel_k1_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_K1_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_k2_scaled_e(void *, void *, void *, void *, void *);
extern void bessel_kl_scaled_array_e(void *, void *, void *, void *, void *);
extern void bessel_kl_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Kn_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Kn_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Kn_scaled_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Kn_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Knu_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Knu_scaled_e(void *, void *, void *, void *, void *, void *);
extern void bessel_lnKnu_e(void *, void *, void *, void *, void *, void *);
extern void bessel_sequence_Jnu_e(void *, void *, void *, void *, void *);
extern void bessel_y0_e(void *, void *, void *, void *, void *);
extern void bessel_Y0_e(void *, void *, void *, void *, void *);
extern void bessel_y1_e(void *, void *, void *, void *, void *);
extern void bessel_Y1_e(void *, void *, void *, void *, void *);
extern void bessel_y2_e(void *, void *, void *, void *, void *);
extern void bessel_yl_array_e(void *, void *, void *, void *, void *);
extern void bessel_yl_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Yn_array_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Yn_e(void *, void *, void *, void *, void *, void *);
extern void bessel_Ynu_e(void *, void *, void *, void *, void *, void *);
extern void bessel_zero_J0_e(void *, void *, void *, void *, void *);
extern void bessel_zero_J1_e(void *, void *, void *, void *, void *);
extern void bessel_zero_Jnu_e(void *, void *, void *, void *, void *, void *);
extern void beta_e(void *, void *, void *, void *, void *, void *);
extern void beta_inc_e(void *, void *, void *, void *, void *, void *, void *);
extern void Chi_e(void *, void *, void *, void *, void *);
extern void choose_e(void *, void *, void *, void *, void *, void *);
extern void Ci_e(void *, void *, void *, void *, void *);
extern void clausen_e(void *, void *, void *, void *, void *);
extern void complex_cos_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void complex_dilog_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void complex_log_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void complex_logsin_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void complex_sin_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void conicalP_0_e(void *, void *, void *, void *, void *, void *);
extern void conicalP_1_e(void *, void *, void *, void *, void *, void *);
extern void conicalP_cyl_reg_e(void *, void *, void *, void *, void *, void *, void *);
extern void conicalP_half_e(void *, void *, void *, void *, void *, void *);
extern void conicalP_mhalf_e(void *, void *, void *, void *, void *, void *);
extern void conicalP_sph_reg_e(void *, void *, void *, void *, void *, void *, void *);
extern void cos_e(void *, void *, void *, void *, void *);
extern void coulomb_CL(void *, void *, void *, void *, void *, void *);
extern void coulomb_CL_array(void *, void *, void *, void *, void *, void *);
extern void coulomb_wave_F_array(void *, void *, void *, void *, void *, void *, void *, void *);
extern void coulomb_wave_FG(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void coulomb_wave_FG_array(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void coulomb_wave_FGp_array(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void coulomb_wave_sphF_array(void *, void *, void *, void *, void *, void *, void *, void *);
extern void coupling_3j(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void coupling_6j(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void coupling_9j(void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void dawson(void *, void *, void *, void *, void *);
extern void debye_1(void *, void *, void *, void *, void *);
extern void debye_2(void *, void *, void *, void *, void *);
extern void debye_3(void *, void *, void *, void *, void *);
extern void debye_4(void *, void *, void *, void *, void *);
extern void dilog_e(void *, void *, void *, void *, void *);
extern void doublefact_e(void *, void *, void *, void *, void *);
extern void ellint_D_e(void *, void *, void *, void *, void *, void *, void *);
extern void ellint_E_e(void *, void *, void *, void *, void *, void *, void *);
extern void ellint_Ecomp_e(void *, void *, void *, void *, void *, void *);
extern void ellint_F_e(void *, void *, void *, void *, void *, void *, void *);
extern void ellint_Kcomp_e(void *, void *, void *, void *, void *, void *);
extern void ellint_P_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void ellint_RC_e(void *, void *, void *, void *, void *, void *, void *);
extern void ellint_RD_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void ellint_RF_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void ellint_RJ_e(void *, void *, void *, void *, void *, void *, void *, void *, void *);
extern void elljac_e(void *, void *, void *, void *, void *, void *, void *);
extern void erf_e(void *, void *, void *, void *, void *, void *);
extern void erf_Q_e(void *, void *, void *, void *, void *, void *);
extern void erf_Z_e(void *, void *, void *, void *, void *, void *);
extern void erfc_e(void *, void *, void *, void *, void *, void *);
extern void eta(void *, void *, void *, void *, void *);
extern void eta_int(void *, void *, void *, void *, void *);
extern void expint_3_e(void *, void *, void *, void *, void *);
extern void expint_E1_e(void *, void *, void *, void *, void *);
extern void expint_E2_e(void *, void *, void *, void *, void *);
extern void expint_Ei_e(void *, void *, void *, void *, void *);
extern void expint_En_e(void *, void *, void *, void *, void *, void *);
extern void fact_e(void *, void *, void *, void *, void *);
extern void fermi_dirac_0(void *, void *, void *, void *, void *);
extern void fermi_dirac_1(void *, void *, void *, void *, void *);
extern void fermi_dirac_2(void *, void *, void *, void *, void *);
extern void fermi_dirac_3half(void *, void *, void *, void *, void *);
extern void fermi_dirac_half(void *, void *, void *, void *, void *);
extern void fermi_dirac_inc_0(void *, void *, void *, void *, void *, void *);
extern void fermi_dirac_int(void *, void *, void *, void *, void *, void *);
extern void fermi_dirac_m1(void *, void *, void *, void *, void *);
extern void fermi_dirac_mhalf(void *, void *, void *, void *, void *);
extern void gamma_e(void *, void *, void *, void *, void *);
extern void gamma_inc_e(void *, void *, void *, void *, void *, void *);
extern void gamma_inc_P_e(void *, void *, void *, void *, void *, void *);
extern void gamma_inc_Q_e(void *, void *, void *, void *, void *, void *);
extern void gammainv_e(void *, void *, void *, void *, void *);
extern void gammastar_e(void *, void *, void *, void *, void *);
extern void gegenpoly_1_e(void *, void *, void *, void *, void *, void *);
extern void gegenpoly_2_e(void *, void *, void *, void *, void *, void *);
extern void gegenpoly_3_e(void *, void *, void *, void *, void *, void *);
extern void gegenpoly_array(void *, void *, void *, void *, void *, void *);
extern void gegenpoly_n_e(void *, void *, void *, void *, void *, void *, void *);
extern void gsl_poly(void *, void *, void *, void *, void *);
extern void hazard_e(void *, void *, void *, void *, void *, void *);
extern void hydrogenicR(void *, void *, void *, void *, void *, void *, void *, void *);
extern void hydrogenicR_1(void *, void *, void *, void *, void *, void *);
extern void hyperg_0F1_e(void *, void *, void *, void *, void *, void *);
extern void hyperg_1F1_e(void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_1F1_int_e(void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_2F0_e(void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_2F1_conj_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_2F1_conj_renorm_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_2F1_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_2F1_renorm_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_U_e(void *, void *, void *, void *, void *, void *, void *);
extern void hyperg_U_int_e(void *, void *, void *, void *, void *, void *, void *);
extern void hypot_e(void *, void *, void *, void *, void *, void *);
extern void hzeta(void *, void *, void *, void *, void *, void *);
extern void laguerre_1(void *, void *, void *, void *, void *, void *);
extern void laguerre_2(void *, void *, void *, void *, void *, void *);
extern void laguerre_3(void *, void *, void *, void *, void *, void *);
extern void laguerre_n(void *, void *, void *, void *, void *, void *, void *);
extern void lambert_W0(void *, void *, void *, void *, void *);
extern void lambert_Wm1(void *, void *, void *, void *, void *);
extern void legendre_array(void *, void *, void *, void *, void *, void *);
extern void legendre_array_index(void *, void *, void *);
extern void legendre_array_n(void *, void *);
extern void legendre_deriv_alt_array(void *, void *, void *, void *, void *, void *, void *);
extern void legendre_deriv_array(void *, void *, void *, void *, void *, void *, void *);
extern void legendre_deriv2_alt_array(void *, void *, void *, void *, void *, void *, void *, void *);
extern void legendre_deriv2_array(void *, void *, void *, void *, void *, void *, void *, void *);
extern void legendre_H3d_0_e(void *, void *, void *, void *, void *, void *);
extern void legendre_H3d_1_e(void *, void *, void *, void *, void *, void *);
extern void legendre_H3d_array(void *, void *, void *, void *, void *, void *);
extern void legendre_H3d_e(void *, void *, void *, void *, void *, void *, void *);
extern void legendre_P1_e(void *, void *, void *, void *, void *);
extern void legendre_P2_e(void *, void *, void *, void *, void *);
extern void legendre_P3_e(void *, void *, void *, void *, void *);
extern void legendre_Pl_array(void *, void *, void *, void *, void *);
extern void legendre_Pl_e(void *, void *, void *, void *, void *, void *);
extern void legendre_Plm_e(void *, void *, void *, void *, void *, void *, void *);
extern void legendre_Q0_e(void *, void *, void *, void *, void *);
extern void legendre_Q1_e(void *, void *, void *, void *, void *);
extern void legendre_Ql_e(void *, void *, void *, void *, void *, void *);
extern void legendre_sphPlm_e(void *, void *, void *, void *, void *, void *, void *);
extern void lnbeta_e(void *, void *, void *, void *, void *, void *);
extern void lnchoose_e(void *, void *, void *, void *, void *, void *);
extern void lncosh_e(void *, void *, void *, void *, void *);
extern void lndoublefact_e(void *, void *, void *, void *, void *);
extern void lnfact_e(void *, void *, void *, void *, void *);
extern void lngamma_complex_e(void *, void *, void *, void *, void *, void *, void *, void *);
extern void lngamma_e(void *, void *, void *, void *, void *);
extern void lngamma_sgn_e(void *, void *, void *, void *, void *, void *);
extern void lnpoch_e(void *, void *, void *, void *, void *, void *);
extern void lnpoch_sgn_e(void *, void *, void *, void *, void *, void *, void *);
extern void lnsinh_e(void *, void *, void *, void *, void *);
extern void log_1plusx_e(void *, void *, void *, void *, void *);
extern void log_1plusx_mx_e(void *, void *, void *, void *, void *);
extern void log_abs_e(void *, void *, void *, void *, void *);
extern void log_e(void *, void *, void *, void *, void *);
extern void log_erfc_e(void *, void *, void *, void *, void *, void *);
extern void poch_e(void *, void *, void *, void *, void *, void *);
extern void pochrel_e(void *, void *, void *, void *, void *, void *);
extern void pow_int(void *, void *, void *, void *, void *, void *);
extern void psi(void *, void *, void *, void *, void *);
extern void psi_1(void *, void *, void *, void *, void *);
extern void psi_1_int(void *, void *, void *, void *, void *);
extern void psi_1piy(void *, void *, void *, void *, void *);
extern void psi_int(void *, void *, void *, void *, void *);
extern void psi_n(void *, void *, void *, void *, void *, void *);
extern void Shi_e(void *, void *, void *, void *, void *);
extern void Si_e(void *, void *, void *, void *, void *);
extern void sin_e(void *, void *, void *, void *, void *);
extern void sinc_e(void *, void *, void *, void *, void *);
extern void synchrotron_1(void *, void *, void *, void *, void *);
extern void synchrotron_2(void *, void *, void *, void *, void *);
extern void taylorcoeff_e(void *, void *, void *, void *, void *, void *);
extern void transport_2(void *, void *, void *, void *, void *);
extern void transport_3(void *, void *, void *, void *, void *);
extern void transport_4(void *, void *, void *, void *, void *);
extern void transport_5(void *, void *, void *, void *, void *);
extern void zeta(void *, void *, void *, void *, void *);
extern void zeta_int(void *, void *, void *, void *, void *);
extern void zetam1(void *, void *, void *, void *, void *);
extern void zetam1_int(void *, void *, void *, void *, void *);

/* .Call calls */
extern SEXP get_n(SEXP, SEXP);
extern SEXP qrng_alloc(SEXP, SEXP);
extern SEXP qrng_clone(SEXP);
extern SEXP qrng_init(SEXP);
extern SEXP qrng_name(SEXP);
extern SEXP qrng_size(SEXP);
extern SEXP rng_alloc(SEXP);
extern SEXP rng_clone(SEXP);
extern SEXP rng_get(SEXP, SEXP);
extern SEXP rng_max(SEXP);
extern SEXP rng_min(SEXP);
extern SEXP rng_name(SEXP);
extern SEXP rng_set(SEXP, SEXP);
extern SEXP rng_uniform(SEXP, SEXP);
extern SEXP rng_uniform_int(SEXP, SEXP, SEXP);
extern SEXP rng_uniform_pos(SEXP, SEXP);

static const R_CMethodDef CEntries[] = {
    {"airy_Ai_deriv_e",           (DL_FUNC) &airy_Ai_deriv_e,            6},
    {"airy_Ai_deriv_scaled_e",    (DL_FUNC) &airy_Ai_deriv_scaled_e,     6},
    {"airy_Ai_e",                 (DL_FUNC) &airy_Ai_e,                  6},
    {"airy_Ai_scaled_e",          (DL_FUNC) &airy_Ai_scaled_e,           6},
    {"airy_Bi_deriv_e",           (DL_FUNC) &airy_Bi_deriv_e,            6},
    {"airy_Bi_deriv_scaled_e",    (DL_FUNC) &airy_Bi_deriv_scaled_e,     6},
    {"airy_Bi_e",                 (DL_FUNC) &airy_Bi_e,                  6},
    {"airy_Bi_scaled_e",          (DL_FUNC) &airy_Bi_scaled_e,           6},
    {"airy_zero_Ai_deriv_e",      (DL_FUNC) &airy_zero_Ai_deriv_e,       5},
    {"airy_zero_Ai_e",            (DL_FUNC) &airy_zero_Ai_e,             5},
    {"airy_zero_Bi_deriv_e",      (DL_FUNC) &airy_zero_Bi_deriv_e,       5},
    {"airy_zero_Bi_e",            (DL_FUNC) &airy_zero_Bi_e,             5},
    {"atanint_e",                 (DL_FUNC) &atanint_e,                  5},
    {"bessel_I0_e",               (DL_FUNC) &bessel_I0_e,                5},
    {"bessel_i0_scaled_e",        (DL_FUNC) &bessel_i0_scaled_e,         5},
    {"bessel_I0_scaled_e",        (DL_FUNC) &bessel_I0_scaled_e,         5},
    {"bessel_I1_e",               (DL_FUNC) &bessel_I1_e,                5},
    {"bessel_i1_scaled_e",        (DL_FUNC) &bessel_i1_scaled_e,         5},
    {"bessel_I1_scaled_e",        (DL_FUNC) &bessel_I1_scaled_e,         5},
    {"bessel_i2_scaled_e",        (DL_FUNC) &bessel_i2_scaled_e,         5},
    {"bessel_il_scaled_array_e",  (DL_FUNC) &bessel_il_scaled_array_e,   5},
    {"bessel_il_scaled_e",        (DL_FUNC) &bessel_il_scaled_e,         6},
    {"bessel_In_array_e",         (DL_FUNC) &bessel_In_array_e,          6},
    {"bessel_In_e",               (DL_FUNC) &bessel_In_e,                6},
    {"bessel_In_scaled_array_e",  (DL_FUNC) &bessel_In_scaled_array_e,   6},
    {"bessel_In_scaled_e",        (DL_FUNC) &bessel_In_scaled_e,         6},
    {"bessel_Inu_e",              (DL_FUNC) &bessel_Inu_e,               6},
    {"bessel_Inu_scaled_e",       (DL_FUNC) &bessel_Inu_scaled_e,        6},
    {"bessel_j0_e",               (DL_FUNC) &bessel_j0_e,                5},
    {"bessel_J0_e",               (DL_FUNC) &bessel_J0_e,                5},
    {"bessel_j1_e",               (DL_FUNC) &bessel_j1_e,                5},
    {"bessel_J1_e",               (DL_FUNC) &bessel_J1_e,                5},
    {"bessel_j2_e",               (DL_FUNC) &bessel_j2_e,                5},
    {"bessel_jl_array_e",         (DL_FUNC) &bessel_jl_array_e,          5},
    {"bessel_jl_e",               (DL_FUNC) &bessel_jl_e,                6},
    {"bessel_jl_steed_array_e",   (DL_FUNC) &bessel_jl_steed_array_e,    5},
    {"bessel_Jn_array_e",         (DL_FUNC) &bessel_Jn_array_e,          6},
    {"bessel_Jn_e",               (DL_FUNC) &bessel_Jn_e,                6},
    {"bessel_Jnu_e",              (DL_FUNC) &bessel_Jnu_e,               6},
    {"bessel_K0_e",               (DL_FUNC) &bessel_K0_e,                5},
    {"bessel_k0_scaled_e",        (DL_FUNC) &bessel_k0_scaled_e,         5},
    {"bessel_K0_scaled_e",        (DL_FUNC) &bessel_K0_scaled_e,         5},
    {"bessel_K1_e",               (DL_FUNC) &bessel_K1_e,                5},
    {"bessel_k1_scaled_e",        (DL_FUNC) &bessel_k1_scaled_e,         5},
    {"bessel_K1_scaled_e",        (DL_FUNC) &bessel_K1_scaled_e,         5},
    {"bessel_k2_scaled_e",        (DL_FUNC) &bessel_k2_scaled_e,         5},
    {"bessel_kl_scaled_array_e",  (DL_FUNC) &bessel_kl_scaled_array_e,   5},
    {"bessel_kl_scaled_e",        (DL_FUNC) &bessel_kl_scaled_e,         6},
    {"bessel_Kn_array_e",         (DL_FUNC) &bessel_Kn_array_e,          6},
    {"bessel_Kn_e",               (DL_FUNC) &bessel_Kn_e,                6},
    {"bessel_Kn_scaled_array_e",  (DL_FUNC) &bessel_Kn_scaled_array_e,   6},
    {"bessel_Kn_scaled_e",        (DL_FUNC) &bessel_Kn_scaled_e,         6},
    {"bessel_Knu_e",              (DL_FUNC) &bessel_Knu_e,               6},
    {"bessel_Knu_scaled_e",       (DL_FUNC) &bessel_Knu_scaled_e,        6},
    {"bessel_lnKnu_e",            (DL_FUNC) &bessel_lnKnu_e,             6},
    {"bessel_sequence_Jnu_e",     (DL_FUNC) &bessel_sequence_Jnu_e,      5},
    {"bessel_y0_e",               (DL_FUNC) &bessel_y0_e,                5},
    {"bessel_Y0_e",               (DL_FUNC) &bessel_Y0_e,                5},
    {"bessel_y1_e",               (DL_FUNC) &bessel_y1_e,                5},
    {"bessel_Y1_e",               (DL_FUNC) &bessel_Y1_e,                5},
    {"bessel_y2_e",               (DL_FUNC) &bessel_y2_e,                5},
    {"bessel_yl_array_e",         (DL_FUNC) &bessel_yl_array_e,          5},
    {"bessel_yl_e",               (DL_FUNC) &bessel_yl_e,                6},
    {"bessel_Yn_array_e",         (DL_FUNC) &bessel_Yn_array_e,          6},
    {"bessel_Yn_e",               (DL_FUNC) &bessel_Yn_e,                6},
    {"bessel_Ynu_e",              (DL_FUNC) &bessel_Ynu_e,               6},
    {"bessel_zero_J0_e",          (DL_FUNC) &bessel_zero_J0_e,           5},
    {"bessel_zero_J1_e",          (DL_FUNC) &bessel_zero_J1_e,           5},
    {"bessel_zero_Jnu_e",         (DL_FUNC) &bessel_zero_Jnu_e,          6},
    {"beta_e",                    (DL_FUNC) &beta_e,                     6},
    {"beta_inc_e",                (DL_FUNC) &beta_inc_e,                 7},
    {"Chi_e",                     (DL_FUNC) &Chi_e,                      5},
    {"choose_e",                  (DL_FUNC) &choose_e,                   6},
    {"Ci_e",                      (DL_FUNC) &Ci_e,                       5},
    {"clausen_e",                 (DL_FUNC) &clausen_e,                  5},
    {"complex_cos_e",             (DL_FUNC) &complex_cos_e,              8},
    {"complex_dilog_e",           (DL_FUNC) &complex_dilog_e,            8},
    {"complex_log_e",             (DL_FUNC) &complex_log_e,              8},
    {"complex_logsin_e",          (DL_FUNC) &complex_logsin_e,           8},
    {"complex_sin_e",             (DL_FUNC) &complex_sin_e,              8},
    {"conicalP_0_e",              (DL_FUNC) &conicalP_0_e,               6},
    {"conicalP_1_e",              (DL_FUNC) &conicalP_1_e,               6},
    {"conicalP_cyl_reg_e",        (DL_FUNC) &conicalP_cyl_reg_e,         7},
    {"conicalP_half_e",           (DL_FUNC) &conicalP_half_e,            6},
    {"conicalP_mhalf_e",          (DL_FUNC) &conicalP_mhalf_e,           6},
    {"conicalP_sph_reg_e",        (DL_FUNC) &conicalP_sph_reg_e,         7},
    {"cos_e",                     (DL_FUNC) &cos_e,                      5},
    {"coulomb_CL",                (DL_FUNC) &coulomb_CL,                 6},
    {"coulomb_CL_array",          (DL_FUNC) &coulomb_CL_array,           6},
    {"coulomb_wave_F_array",      (DL_FUNC) &coulomb_wave_F_array,       8},
    {"coulomb_wave_FG",           (DL_FUNC) &coulomb_wave_FG,           16},
    {"coulomb_wave_FG_array",     (DL_FUNC) &coulomb_wave_FG_array,     10},
    {"coulomb_wave_FGp_array",    (DL_FUNC) &coulomb_wave_FGp_array,    12},
    {"coulomb_wave_sphF_array",   (DL_FUNC) &coulomb_wave_sphF_array,    8},
    {"coupling_3j",               (DL_FUNC) &coupling_3j,               10},
    {"coupling_6j",               (DL_FUNC) &coupling_6j,               10},
    {"coupling_9j",               (DL_FUNC) &coupling_9j,               13},
    {"dawson",                    (DL_FUNC) &dawson,                     5},
    {"debye_1",                   (DL_FUNC) &debye_1,                    5},
    {"debye_2",                   (DL_FUNC) &debye_2,                    5},
    {"debye_3",                   (DL_FUNC) &debye_3,                    5},
    {"debye_4",                   (DL_FUNC) &debye_4,                    5},
    {"dilog_e",                   (DL_FUNC) &dilog_e,                    5},
    {"doublefact_e",              (DL_FUNC) &doublefact_e,               5},
    {"ellint_D_e",                (DL_FUNC) &ellint_D_e,                 7},
    {"ellint_E_e",                (DL_FUNC) &ellint_E_e,                 7},
    {"ellint_Ecomp_e",            (DL_FUNC) &ellint_Ecomp_e,             6},
    {"ellint_F_e",                (DL_FUNC) &ellint_F_e,                 7},
    {"ellint_Kcomp_e",            (DL_FUNC) &ellint_Kcomp_e,             6},
    {"ellint_P_e",                (DL_FUNC) &ellint_P_e,                 8},
    {"ellint_RC_e",               (DL_FUNC) &ellint_RC_e,                7},
    {"ellint_RD_e",               (DL_FUNC) &ellint_RD_e,                8},
    {"ellint_RF_e",               (DL_FUNC) &ellint_RF_e,                8},
    {"ellint_RJ_e",               (DL_FUNC) &ellint_RJ_e,                9},
    {"elljac_e",                  (DL_FUNC) &elljac_e,                   7},
    {"erf_e",                     (DL_FUNC) &erf_e,                      6},
    {"erf_Q_e",                   (DL_FUNC) &erf_Q_e,                    6},
    {"erf_Z_e",                   (DL_FUNC) &erf_Z_e,                    6},
    {"erfc_e",                    (DL_FUNC) &erfc_e,                     6},
    {"eta",                       (DL_FUNC) &eta,                        5},
    {"eta_int",                   (DL_FUNC) &eta_int,                    5},
    {"expint_3_e",                (DL_FUNC) &expint_3_e,                 5},
    {"expint_E1_e",               (DL_FUNC) &expint_E1_e,                5},
    {"expint_E2_e",               (DL_FUNC) &expint_E2_e,                5},
    {"expint_Ei_e",               (DL_FUNC) &expint_Ei_e,                5},
    {"expint_En_e",               (DL_FUNC) &expint_En_e,                6},
    {"fact_e",                    (DL_FUNC) &fact_e,                     5},
    {"fermi_dirac_0",             (DL_FUNC) &fermi_dirac_0,              5},
    {"fermi_dirac_1",             (DL_FUNC) &fermi_dirac_1,              5},
    {"fermi_dirac_2",             (DL_FUNC) &fermi_dirac_2,              5},
    {"fermi_dirac_3half",         (DL_FUNC) &fermi_dirac_3half,          5},
    {"fermi_dirac_half",          (DL_FUNC) &fermi_dirac_half,           5},
    {"fermi_dirac_inc_0",         (DL_FUNC) &fermi_dirac_inc_0,          6},
    {"fermi_dirac_int",           (DL_FUNC) &fermi_dirac_int,            6},
    {"fermi_dirac_m1",            (DL_FUNC) &fermi_dirac_m1,             5},
    {"fermi_dirac_mhalf",         (DL_FUNC) &fermi_dirac_mhalf,          5},
    {"gamma_e",                   (DL_FUNC) &gamma_e,                    5},
    {"gamma_inc_e",               (DL_FUNC) &gamma_inc_e,                6},
    {"gamma_inc_P_e",             (DL_FUNC) &gamma_inc_P_e,              6},
    {"gamma_inc_Q_e",             (DL_FUNC) &gamma_inc_Q_e,              6},
    {"gammainv_e",                (DL_FUNC) &gammainv_e,                 5},
    {"gammastar_e",               (DL_FUNC) &gammastar_e,                5},
    {"gegenpoly_1_e",             (DL_FUNC) &gegenpoly_1_e,              6},
    {"gegenpoly_2_e",             (DL_FUNC) &gegenpoly_2_e,              6},
    {"gegenpoly_3_e",             (DL_FUNC) &gegenpoly_3_e,              6},
    {"gegenpoly_array",           (DL_FUNC) &gegenpoly_array,            6},
    {"gegenpoly_n_e",             (DL_FUNC) &gegenpoly_n_e,              7},
    {"gsl_poly",                  (DL_FUNC) &gsl_poly,                   5},
    {"hazard_e",                  (DL_FUNC) &hazard_e,                   6},
    {"hydrogenicR",               (DL_FUNC) &hydrogenicR,                8},
    {"hydrogenicR_1",             (DL_FUNC) &hydrogenicR_1,              6},
    {"hyperg_0F1_e",              (DL_FUNC) &hyperg_0F1_e,               6},
    {"hyperg_1F1_e",              (DL_FUNC) &hyperg_1F1_e,               7},
    {"hyperg_1F1_int_e",          (DL_FUNC) &hyperg_1F1_int_e,           7},
    {"hyperg_2F0_e",              (DL_FUNC) &hyperg_2F0_e,               7},
    {"hyperg_2F1_conj_e",         (DL_FUNC) &hyperg_2F1_conj_e,          8},
    {"hyperg_2F1_conj_renorm_e",  (DL_FUNC) &hyperg_2F1_conj_renorm_e,   8},
    {"hyperg_2F1_e",              (DL_FUNC) &hyperg_2F1_e,               8},
    {"hyperg_2F1_renorm_e",       (DL_FUNC) &hyperg_2F1_renorm_e,        8},
    {"hyperg_U_e",                (DL_FUNC) &hyperg_U_e,                 7},
    {"hyperg_U_int_e",            (DL_FUNC) &hyperg_U_int_e,             7},
    {"hypot_e",                   (DL_FUNC) &hypot_e,                    6},
    {"hzeta",                     (DL_FUNC) &hzeta,                      6},
    {"laguerre_1",                (DL_FUNC) &laguerre_1,                 6},
    {"laguerre_2",                (DL_FUNC) &laguerre_2,                 6},
    {"laguerre_3",                (DL_FUNC) &laguerre_3,                 6},
    {"laguerre_n",                (DL_FUNC) &laguerre_n,                 7},
    {"lambert_W0",                (DL_FUNC) &lambert_W0,                 5},
    {"lambert_Wm1",               (DL_FUNC) &lambert_Wm1,                5},
    {"legendre_array",            (DL_FUNC) &legendre_array,             6},
    {"legendre_array_index",      (DL_FUNC) &legendre_array_index,       3},
    {"legendre_array_n",          (DL_FUNC) &legendre_array_n,           2},
    {"legendre_deriv_alt_array",  (DL_FUNC) &legendre_deriv_alt_array,   7},
    {"legendre_deriv_array",      (DL_FUNC) &legendre_deriv_array,       7},
    {"legendre_deriv2_alt_array", (DL_FUNC) &legendre_deriv2_alt_array,  8},
    {"legendre_deriv2_array",     (DL_FUNC) &legendre_deriv2_array,      8},
    {"legendre_H3d_0_e",          (DL_FUNC) &legendre_H3d_0_e,           6},
    {"legendre_H3d_1_e",          (DL_FUNC) &legendre_H3d_1_e,           6},
    {"legendre_H3d_array",        (DL_FUNC) &legendre_H3d_array,         6},
    {"legendre_H3d_e",            (DL_FUNC) &legendre_H3d_e,             7},
    {"legendre_P1_e",             (DL_FUNC) &legendre_P1_e,              5},
    {"legendre_P2_e",             (DL_FUNC) &legendre_P2_e,              5},
    {"legendre_P3_e",             (DL_FUNC) &legendre_P3_e,              5},
    {"legendre_Pl_array",         (DL_FUNC) &legendre_Pl_array,          5},
    {"legendre_Pl_e",             (DL_FUNC) &legendre_Pl_e,              6},
    {"legendre_Plm_e",            (DL_FUNC) &legendre_Plm_e,             7},
    {"legendre_Q0_e",             (DL_FUNC) &legendre_Q0_e,              5},
    {"legendre_Q1_e",             (DL_FUNC) &legendre_Q1_e,              5},
    {"legendre_Ql_e",             (DL_FUNC) &legendre_Ql_e,              6},
    {"legendre_sphPlm_e",         (DL_FUNC) &legendre_sphPlm_e,          7},
    {"lnbeta_e",                  (DL_FUNC) &lnbeta_e,                   6},
    {"lnchoose_e",                (DL_FUNC) &lnchoose_e,                 6},
    {"lncosh_e",                  (DL_FUNC) &lncosh_e,                   5},
    {"lndoublefact_e",            (DL_FUNC) &lndoublefact_e,             5},
    {"lnfact_e",                  (DL_FUNC) &lnfact_e,                   5},
    {"lngamma_complex_e",         (DL_FUNC) &lngamma_complex_e,          8},
    {"lngamma_e",                 (DL_FUNC) &lngamma_e,                  5},
    {"lngamma_sgn_e",             (DL_FUNC) &lngamma_sgn_e,              6},
    {"lnpoch_e",                  (DL_FUNC) &lnpoch_e,                   6},
    {"lnpoch_sgn_e",              (DL_FUNC) &lnpoch_sgn_e,               7},
    {"lnsinh_e",                  (DL_FUNC) &lnsinh_e,                   5},
    {"log_1plusx_e",              (DL_FUNC) &log_1plusx_e,               5},
    {"log_1plusx_mx_e",           (DL_FUNC) &log_1plusx_mx_e,            5},
    {"log_abs_e",                 (DL_FUNC) &log_abs_e,                  5},
    {"log_e",                     (DL_FUNC) &log_e,                      5},
    {"log_erfc_e",                (DL_FUNC) &log_erfc_e,                 6},
    {"poch_e",                    (DL_FUNC) &poch_e,                     6},
    {"pochrel_e",                 (DL_FUNC) &pochrel_e,                  6},
    {"pow_int",                   (DL_FUNC) &pow_int,                    6},
    {"psi",                       (DL_FUNC) &psi,                        5},
    {"psi_1",                     (DL_FUNC) &psi_1,                      5},
    {"psi_1_int",                 (DL_FUNC) &psi_1_int,                  5},
    {"psi_1piy",                  (DL_FUNC) &psi_1piy,                   5},
    {"psi_int",                   (DL_FUNC) &psi_int,                    5},
    {"psi_n",                     (DL_FUNC) &psi_n,                      6},
    {"Shi_e",                     (DL_FUNC) &Shi_e,                      5},
    {"Si_e",                      (DL_FUNC) &Si_e,                       5},
    {"sin_e",                     (DL_FUNC) &sin_e,                      5},
    {"sinc_e",                    (DL_FUNC) &sinc_e,                     5},
    {"synchrotron_1",             (DL_FUNC) &synchrotron_1,              5},
    {"synchrotron_2",             (DL_FUNC) &synchrotron_2,              5},
    {"taylorcoeff_e",             (DL_FUNC) &taylorcoeff_e,              6},
    {"transport_2",               (DL_FUNC) &transport_2,                5},
    {"transport_3",               (DL_FUNC) &transport_3,                5},
    {"transport_4",               (DL_FUNC) &transport_4,                5},
    {"transport_5",               (DL_FUNC) &transport_5,                5},
    {"zeta",                      (DL_FUNC) &zeta,                       5},
    {"zeta_int",                  (DL_FUNC) &zeta_int,                   5},
    {"zetam1",                    (DL_FUNC) &zetam1,                     5},
    {"zetam1_int",                (DL_FUNC) &zetam1_int,                 5},
    {NULL, NULL, 0}
};

static const R_CallMethodDef CallEntries[] = {
    {"get_n",           (DL_FUNC) &get_n,           2},
    {"qrng_alloc",      (DL_FUNC) &qrng_alloc,      2},
    {"qrng_clone",      (DL_FUNC) &qrng_clone,      1},
    {"qrng_init",       (DL_FUNC) &qrng_init,       1},
    {"qrng_name",       (DL_FUNC) &qrng_name,       1},
    {"qrng_size",       (DL_FUNC) &qrng_size,       1},
    {"rng_alloc",       (DL_FUNC) &rng_alloc,       1},
    {"rng_clone",       (DL_FUNC) &rng_clone,       1},
    {"rng_get",         (DL_FUNC) &rng_get,         2},
    {"rng_max",         (DL_FUNC) &rng_max,         1},
    {"rng_min",         (DL_FUNC) &rng_min,         1},
    {"rng_name",        (DL_FUNC) &rng_name,        1},
    {"rng_set",         (DL_FUNC) &rng_set,         2},
    {"rng_uniform",     (DL_FUNC) &rng_uniform,     2},
    {"rng_uniform_int", (DL_FUNC) &rng_uniform_int, 3},
    {"rng_uniform_pos", (DL_FUNC) &rng_uniform_pos, 2},
    {NULL, NULL, 0}
};

void R_init_gsl(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
