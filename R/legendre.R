"legendre_P1" <- function(x, give=FALSE, strict=TRUE){
  attr <- attributes(x)
  x.vec <- as.vector(x)
  jj <- .C("legendre_P1_e",
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr
  
  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }
}

"legendre_P2" <- function(x, give=FALSE, strict=TRUE){
  attr <- attributes(x)
  x.vec <- as.vector(x)
  jj <- .C("legendre_P2_e",
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }
}

"legendre_P3" <- function(x, give=FALSE, strict=TRUE){
  attr <- attributes(x)
  x.vec <- as.vector(x)
  jj <- .C("legendre_P3_e",
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr


  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }
}

"legendre_Pl" <- function(l, x, give=FALSE, strict=TRUE){
  jj <- process.args(l,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("legendre_Pl_e",
           as.integer(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}
  
"legendre_Pl_array" <- function(lmax, x, give=FALSE, strict=TRUE){
  if(length(lmax)>1){stop("lmax should be of length 1")}
  attr <- attributes(x)
  lmax.single <- lmax
  x.vec <- as.vector(x)
  x.out <- rep(x.vec,(lmax+1))
  jj <- .C("legendre_Pl_array",
           as.integer(lmax.single),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.out),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  dim(val) <- c(lmax.single+1 , length(x.vec))
  status <- jj$status
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,status=status))
  } else {
    return(val)
  }  
}  

"legendre_Q0" <- function(x, give=FALSE, strict=TRUE){
  attr <- attributes(x)
  x.vec <- as.vector(x)
  jj <- .C("legendre_Q0_e",
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

    if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
} 


"legendre_Q1" <- function(x, give=FALSE, strict=TRUE){
  attr <- attributes(x)
  x.vec <- as.vector(x)
  jj <- .C("legendre_Q1_e",
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}  

"legendre_Ql" <- function(l, x, give=FALSE, strict=TRUE){
  jj <- process.args(l,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("legendre_Ql_e",
           as.integer(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}  

## put legendre_array_n() and legendre_array_index() first [even
## though they appear in the manual later] for ease of
## understanding */

"legendre_array_n" <- function(lmax){
    stopifnot(length(lmax)==1)
    ans <- 1L
    jj <- .C("legendre_array_n",
             as.integer(lmax),
             as.integer(ans),
             PACKAGE="gsl"
           )

    return(jj[[2]])
}

"legendre_array_index" <- function(l,m){
    stopifnot(length(l)==1)
    stopifnot(length(m)==1)
    ans <- 1L

    jj <- .C("legendre_array_index",
             as.integer(l),
             as.integer(m),
             as.integer(ans),
             PACKAGE = "gsl"
             )

    return(jj[[3]])
}

legendre_check_args <- function(x,lmax,norm,csphase){

    stopifnot(length(x)==1)  # avoids misunderstandings re vectorization
    stopifnot(length(lmax)==1)
    stopifnot(lmax>=0)  # lmax=0 is OK
    stopifnot(length(norm)==1)
    stopifnot(norm %in% 1:4)
    stopifnot(length(csphase)==1)
    stopifnot(csphase %in% c(-1,1))

    return(TRUE)
}

"legendre_array" <- function(x, lmax, norm=1, csphase= -1){  # canonical use: legendre_array(0.4,5)
    ## note re-ordering of arguments

    ignore <- legendre_check_args(x,lmax,norm,csphase)
    n <- legendre_array_n(lmax)

    jj <- .C("legendre_array",
             as.double(x),
             as.integer(lmax),
             as.integer(norm-1),  # NB off-by-one error; norm=1 -> none, norm=1 -> Schmidt-semi, etc
             as.double(csphase),
             result_array = double(n),  # scratch space
             out=double((lmax+1)*(lmax+1))  # also off-by-one; need 0,1,2,...,lmax
             )
    return(matrix(jj$out,lmax+1,lmax+1))
}

"legendre_deriv_array" <- function(x, lmax, norm=1, csphase= -1){ 

    ignore <- legendre_check_args(x,lmax,norm,csphase)
    n <- legendre_array_n(lmax)
    
    jj <- .C("legendre_deriv_array",
             as.double(x),
             as.integer(lmax),
             as.integer(norm-1), 
             as.double(csphase),
             result_array       = double(n),
             result_deriv_array = double(n),  
             out=double((lmax+1)*(lmax+1))  
             )
    return(matrix(jj$out,lmax+1,lmax+1))
}
         
"legendre_deriv_alt_array" <- function(x, lmax, norm=1, csphase= -1){ 

    ignore <- legendre_check_args(x,lmax,norm,csphase)
    n <- legendre_array_n(lmax)
    
    jj <- .C("legendre_deriv_alt_array",
             as.double(x),
             as.integer(lmax),
             as.integer(norm-1),  
             as.double(csphase),
             result_array       = double(n), 
             result_deriv_array = double(n), 
             out=double((lmax+1)*(lmax+1))  
             )
    return(matrix(jj$out,lmax+1,lmax+1))
}
         
"legendre_deriv2_array" <- function(x, lmax, norm=1, csphase= -1){

    ignore <- legendre_check_args(x,lmax,norm,csphase)
    n <- legendre_array_n(lmax)
    
    jj <- .C("legendre_deriv2_array",
             as.double(x),
             as.integer(lmax),
             as.integer(norm-1),  
             as.double(csphase),
             result_array        = double(n),  
             result_deriv_array  = double(n),  
             result_deriv2_array = double(n),  
             out=double((lmax+1)*(lmax+1))  
             )
    return(matrix(jj$out,lmax+1,lmax+1))
}

"legendre_deriv2_alt_array" <- function(x, lmax, norm=1, csphase= -1){

    ignore <- legendre_check_args(x,lmax,norm,csphase)
    n <- legendre_array_n(lmax)
    jj <- .C("legendre_deriv2_alt_array",
             as.double(x),
             as.integer(lmax),
             as.integer(norm-1),  
             as.double(csphase),
             result_array        = double(n),  
             result_deriv_array  = double(n),  
             result_deriv2_array = double(n),  
             out=double((lmax+1)*(lmax+1))  
             )
    return(matrix(jj$out,lmax+1,lmax+1))
}

"legendre_Plm" <- function(l, m, x, give=FALSE, strict=TRUE){
  jj <- process.args(l,m,x)
  l.vec <- jj$arg1
  m.vec <- jj$arg2
  x.vec <- jj$arg3
  attr <- jj$attr

  jj <- .C("legendre_Plm_e",
           as.integer(l.vec),
           as.integer(m.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

    if(strict){
    val <- strictify(val,status)
  }


  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}  

deprecated_legendre <- function(...){
    .Deprecated(new = "legendre_array",
                msg = "As of version 2.1, the GSL library has deprecated the following functions:
		gsl_sf_legendre_Plm_array
		gsl_sf_legendre_Plm_deriv_array
     		gsl_sf_legendre_sphPlm_array
     		gsl_sf_legendre_sphPlm_deriv_array
     		gsl_sf_legendre_array_size

 The functionality is provided in GSL by the gsl_sf_legendre_array suite of functions; in R, use one of:
                legendre_array()
                legendre_deriv_array()
                legendre_deriv_alt_array()
                legendre_deriv2_array()
                legendre_deriv2_altarray()
" )
}	

"legendre_Plm_array"          <- deprecated_legendre
"legendre_Plm_deriv_array"    <- deprecated_legendre
"legendre_sphPlm_array"       <- deprecated_legendre
"legendre_sphPlm_deriv_array" <- deprecated_legendre
"legendre_array_size"         <- deprecated_legendre

"legendre_sphPlm" <- function(l, m, x, give=FALSE, strict=TRUE){
  jj <- process.args(l,m,x)
  l.vec <- jj$arg1
  m.vec <- jj$arg2
  x.vec <- jj$arg3
  attr <- jj$attr

  jj <- .C("legendre_sphPlm_e",
           as.integer(l.vec),
           as.integer(m.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

# "legendre_sphPlm_array" <- function(lmax, m, x, give=FALSE, strict=TRUE){
#   if(length(lmax)>1){stop("lmax should be of length 1")}
#   if(length(m)>1){stop("m should be of length 1")}
#   lmax.single <- lmax
#   m.single <- m
#   x.vec <- as.vector(x)
#   x.out <- rep(x.vec,(lmax.single - m.single +1))
#   jj <- .C("legendre_sphPlm_array",
#            as.integer(lmax.single),
#            as.integer(m.single),
#            as.double(x.vec),
#            as.integer(length(x.vec)),
#            val=as.double(x.out),
#            status=as.integer(x.vec),
#            PACKAGE="gsl"
#            )
#   val <- jj$val
#   dim(val) <- c(lmax.single-m.single+1 , length(x.vec))
#   status <- jj$status
#   attributes(status) <- attributes(x)
# 
#   if(strict){
#     val <- strictify(val,status)
#   }
#   
#   if(give){
#     return(list(val=val,status=status))
#   } else {
#     return(val)
#   }  
# }  

"conicalP_half" <- function(lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("conicalP_half_e",
           as.double(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"conicalP_mhalf" <- function(lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("conicalP_mhalf_e",
           as.double(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"conicalP_0" <- function(lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("conicalP_0_e",
           as.double(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"conicalP_1" <- function(lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,x)
  l.vec <- jj$arg1
  x.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("conicalP_1_e",
           as.double(l.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"conicalP_sph_reg" <- function(l, lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(l, lambda,x)
  l.vec <- jj$arg1
  lam.vec <- jj$arg2
  x.vec <- jj$arg3
  attr <- jj$attr

  jj <- .C("conicalP_sph_reg_e",
           as.integer(l.vec),
           as.double(lam.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"conicalP_cyl_reg" <- function(m, lambda, x, give=FALSE, strict=TRUE){
  jj <- process.args(m,lambda,x)
  m.vec <- jj$arg1
  lam.vec <- jj$arg2
  x.vec <- jj$arg3
  attr <- jj$attr

  jj <- .C("conicalP_cyl_reg_e",
           as.integer(m.vec),
           as.double(lam.vec),
           as.double(x.vec),
           as.integer(length(x.vec)),
           val=as.double(x.vec),
           err=as.double(x.vec),
           status=as.integer(x.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"legendre_H3d_0" <- function(lambda, eta, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,eta)
  lam.vec <- jj$arg1
  eta.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("legendre_H3d_0_e",
           as.double(lam.vec),
           as.double(eta.vec),
           as.integer(length(lam.vec)),
           val=as.double(lam.vec),
           err=as.double(lam.vec),
           status=as.integer(lam.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"legendre_H3d_1" <- function(lambda, eta, give=FALSE, strict=TRUE){
  jj <- process.args(lambda,eta)
  lam.vec <- jj$arg1
  eta.vec <- jj$arg2
  attr <- jj$attr

  jj <- .C("legendre_H3d_1_e",
           as.double(lam.vec),
           as.double(eta.vec),
           as.integer(length(lam.vec)),
           val=as.double(lam.vec),
           err=as.double(lam.vec),
           status=as.integer(lam.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"legendre_H3d" <- function(l, lambda, eta, give=FALSE, strict=TRUE){
  jj <- process.args(l, lambda, eta)
  l.vec <- jj$arg1
  lam.vec <- jj$arg2
  eta.vec <- jj$arg3
  attr <- jj$attr

  jj <- .C("legendre_H3d_e",
           as.integer(l.vec),
           as.double(lam.vec),
           as.double(eta.vec),
           as.integer(length(lam.vec)),
           val=as.double(lam.vec),
           err=as.double(lam.vec),
           status=as.integer(lam.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  err <- jj$err
  status <- jj$status
  attributes(val) <- attr
  attributes(err) <- attr  
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }

  if(give){
    return(list(val=val,err=err,status=status))
  } else {
    return(val)
  }  
}

"legendre_H3d_array" <- function(lmax, lambda, eta, give=FALSE, strict=TRUE){
  if(length(lmax)>1){stop("lmax should be of length 1")}
  lmax.single <- lmax

  jj <- process.args(lambda,eta)
  lam.vec <- jj$arg1
  eta.vec <- jj$arg2
  attr <- jj$attr
  lam.out <- rep(lam.vec,(lmax+1))
  jj <- .C("legendre_H3d_array",
           as.integer(lmax.single),
           as.double(lam.vec),
           as.double(eta.vec),
           as.integer(length(lam.vec)),
           val=as.double(lam.out),
           status=as.integer(lam.vec),
           PACKAGE="gsl"
           )
  val <- jj$val
  dim(val) <- c(lmax.single+1 , length(lam.vec))
  status <- jj$status
  attributes(status) <- attr

  if(strict){
    val <- strictify(val,status)
  }
  
  if(give){
    return(list(val=val,status=status))
  } else {
    return(val)
  }  
}  
