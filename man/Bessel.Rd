\name{Bessel}
\alias{Bessel}
\alias{bessel}
\alias{bessel_J0}
\alias{bessel_J1}
\alias{bessel_Jn}
\alias{bessel_Jn_array}
\alias{bessel_Y0}
\alias{bessel_Y1}
\alias{bessel_Yn}
\alias{bessel_Yn_array}
\alias{bessel_I0}
\alias{bessel_I1}
\alias{bessel_In}
\alias{bessel_In_array}
\alias{bessel_I0_scaled}
\alias{bessel_I1_scaled}
\alias{bessel_In_scaled}
\alias{bessel_In_scaled_array}
\alias{bessel_K0}
\alias{bessel_K1}
\alias{bessel_Kn}
\alias{bessel_Kn_array}
\alias{bessel_K0_scaled}
\alias{bessel_K1_scaled}
\alias{bessel_Kn_scaled}
\alias{bessel_Kn_scaled_array}
\alias{bessel_j0}
\alias{bessel_j1}
\alias{bessel_j2}
\alias{bessel_jl}
\alias{bessel_jl_array}
\alias{bessel_jl_steed_array}
\alias{bessel_y0}
\alias{bessel_y1}
\alias{bessel_y2}
\alias{bessel_yl}
\alias{bessel_yl_array}
\alias{bessel_i0_scaled}
\alias{bessel_i1_scaled}
\alias{bessel_i2_scaled}
\alias{bessel_il_scaled}
\alias{bessel_il_scaled_array}
\alias{bessel_k0_scaled}
\alias{bessel_k1_scaled}
\alias{bessel_k2_scaled}
\alias{bessel_kl_scaled}
\alias{bessel_kl_scaled_array}
\alias{bessel_Jnu}
\alias{bessel_sequence_Jnu}
\alias{bessel_Ynu}
\alias{bessel_Inu}
\alias{bessel_Inu_scaled}
\alias{bessel_Knu}
\alias{bessel_lnKnu}
\alias{bessel_Knu_scaled}
\alias{bessel_zero_J0}
\alias{bessel_zero_J1}
\alias{bessel_zero_Jnu}
\title{Bessel functions}
\description{
  Bessel functions as per the Gnu Scientific Library, reference manual
  section 7.5 and AMS-55, chapters 9 and 10.  These functions are
  declared in header file \code{gsl_sf_bessel.h}
}
\usage{
bessel_J0(x, give=FALSE, strict=TRUE)
bessel_J1(x, give=FALSE, strict=TRUE)
bessel_Jn(n,x, give=FALSE, strict=TRUE)
bessel_Jn_array(nmin,nmax,x, give=FALSE, strict=TRUE)
bessel_Y0(x, give=FALSE, strict=TRUE)
bessel_Y1(x, give=FALSE, strict=TRUE)
bessel_Yn(n,x, give=FALSE, strict=TRUE)
bessel_Yn_array(nmin, nmax, x, give=FALSE, strict=TRUE)
bessel_I0(x, give=FALSE, strict=TRUE)
bessel_I1(x, give=FALSE, strict=TRUE)
bessel_In(n, x, give=FALSE, strict=TRUE)
bessel_In_array(nmin, nmax, x, give=FALSE, strict=TRUE)
bessel_I0_scaled(x, give=FALSE, strict=TRUE)
bessel_I1_scaled(x, give=FALSE, strict=TRUE)
bessel_In_scaled(n, x, give=FALSE, strict=TRUE)
bessel_In_scaled_array(nmin, nmax, x, give=FALSE, strict=TRUE)
bessel_K0(x, give=FALSE, strict=TRUE)
bessel_K1(x, give=FALSE, strict=TRUE)
bessel_Kn(n, x, give=FALSE, strict=TRUE)
bessel_Kn_array(nmin, nmax, x, give=FALSE, strict=TRUE)
bessel_K0_scaled(x, give=FALSE, strict=TRUE)
bessel_K1_scaled(x, give=FALSE, strict=TRUE)
bessel_Kn_scaled(n, x, give=FALSE, strict=TRUE)
bessel_Kn_scaled_array(nmin, nmax, x, give=FALSE, strict=TRUE)
bessel_j0(x, give=FALSE, strict=TRUE)
bessel_j1(x, give=FALSE, strict=TRUE)
bessel_j2(x, give=FALSE, strict=TRUE)
bessel_jl(l,x, give=FALSE, strict=TRUE)
bessel_jl_array(lmax,x, give=FALSE, strict=TRUE)
bessel_jl_steed_array(lmax, x, give=FALSE, strict=TRUE)
bessel_y0(x, give=FALSE, strict=TRUE)
bessel_y1(x, give=FALSE, strict=TRUE)
bessel_y2(x, give=FALSE, strict=TRUE)
bessel_yl(l, x, give=FALSE, strict=TRUE)
bessel_yl_array(lmax, x, give=FALSE, strict=TRUE)
bessel_i0_scaled(x, give=FALSE, strict=TRUE)
bessel_i1_scaled(x, give=FALSE, strict=TRUE)
bessel_i2_scaled(x, give=FALSE, strict=TRUE)
bessel_il_scaled(l, x, give=FALSE, strict=TRUE)
bessel_il_scaled_array(lmax, x, give=FALSE, strict=TRUE)
bessel_k0_scaled(x, give=FALSE, strict=TRUE)
bessel_k1_scaled(x, give=FALSE, strict=TRUE)
bessel_k2_scaled(x, give=FALSE, strict=TRUE)
bessel_kl_scaled(l,x, give=FALSE, strict=TRUE)
bessel_kl_scaled_array(lmax,x, give=FALSE, strict=TRUE)
bessel_Jnu(nu, x, give=FALSE, strict=TRUE)
bessel_sequence_Jnu(nu, v, mode=0, give=FALSE, strict=TRUE)
bessel_Ynu(nu, x, give=FALSE, strict=TRUE)
bessel_Inu(nu, x, give=FALSE, strict=TRUE)
bessel_Inu_scaled(nu, x, give=FALSE, strict=TRUE)
bessel_Knu(nu, x, give=FALSE, strict=TRUE)
bessel_lnKnu(nu, x, give=FALSE, strict=TRUE)
bessel_Knu_scaled(nu, x, give=FALSE, strict=TRUE)
bessel_zero_J0(s, give=FALSE, strict=TRUE)
bessel_zero_J1(s, give=FALSE, strict=TRUE)
bessel_zero_Jnu(nu, s, give=FALSE, strict=TRUE)
}
\arguments{
  \item{x,v,nu}{input: real valued}
  \item{n,nmin,nmax,lmax}{input: integer valued}
  \item{l,s}{input: integer valued}
  \item{mode}{Integer, calc mode}
  \item{give}{Boolean with \code{TRUE} meaning to return a list of three
    items: the value, an estimate of the error, and a status number}
  \item{strict}{strict or not}
}
\details{All as for the \acronym{GSL} reference manual section 7.5
}
\author{Robin K. S. Hankin}
\references{\url{http://www.gnu.org/software/gsl}}
\examples{

# Compare native R routine with GSL:
besselK(0.55,4) - bessel_Knu(4,0.55)  # should be small


x <- seq(from=0,to=15,len=1000)
plot(x,bessel_J0(x),xlim=c(0,16),ylim=c(-0.8,1.1),type="l",
           xaxt="n",yaxt="n",bty="n",xlab="",ylab="",
           main="Figure 9.1, p359")
jj.Y0 <- bessel_Y0(x)
jj.Y0[jj.Y0< -0.8] <- NA
lines(x,jj.Y0)
lines(x,bessel_J1(x),lty=2)
jj.Y1 <- bessel_Y1(x)
jj.Y1[jj.Y1< -0.8] <- NA
lines(x,jj.Y1,lty=2)
axis(1,pos=0,at=1:15,
     labels=c("","2","","4","","6","","8","","10","","12","","14","") )
axis(2,pos=0,at=seq(from=-8,to=10,by=2)/10,
labels=c("-.8","-.6","-.4","-.2","0",".2",".4",".6",".8","1.0"))
arrows(0,0,16,0,length=0.1,angle=10)
arrows(0,0,0,1.1,length=0.1,angle=10)
text(1.1, 0.83, expression(J[0]))
text(0.37, 0.3, expression(J[1]))
text(0.34,-0.3, expression(Y[0]))
text(1.7,-0.5, expression(Y[1]))
text(4.2, 0.43, expression(Y[1]))
text(7.2, 0.33, expression(J[0]))
text(8.6, 0.3, expression(J[0],paste("    ,")))
text(9.1, 0.3, expression(Y[0]))

x <- seq(from=0,to=13,len=100)
y <- t(bessel_jl_array(3,x))
y[y>0.6] <- NA
 matplot(x,y,col="black",type="l",xaxt="n",yaxt="n",bty="n",
         xlab="",ylab="",xlim=c(0,16),ylim=c(-0.3,0.75),
         main="Figure 10.1, p438")
axis(1,pos=0,at=2*(1:7))
arrows(0,0,15,0,length=0.1,angle=10)
arrows(0,0,0,0.65,length=0.1,angle=10)
axis(2,pos=0,las=1,at=seq(from=-3,to=6)/10,
         labels=c("-.3","-.2","-.1","0",".1",".2",".3",".4",".5",".6"))
text(0, 0.7, expression(J[n](x)))
text(15.5, 0, expression(x))
text(2.2,0.58,expression(n==0))
text(3.2,0.4,expression(n==1))
text(4.3,0.3,expression(n==2))
text(6.0,0.22,expression(n==3))



x <- seq(from=0 ,to=5,by=0.1)
cbind(x, bessel_J0(x),bessel_J1(x),bessel_Jn(2,x))      #table 9.1, p390
cbind(x, bessel_Y0(x),bessel_Y1(x),bessel_Yn(2,x))      #table 9.2, p391
t(bessel_Jn_array(3,9,x*2))                             #table 9.2, p398



 x <- seq(from=8,to=10,by=0.2)
 jj <- t(bessel_Jn(n=3:9,x=t(matrix(x,11,7))))
colnames(jj) <- paste("J",3:9,"(x)",sep="")
cbind(x,jj)                 #another part of table 9.2, p398


 x <- seq(from=8,to=10,by=0.2)
 jj <- t(bessel_Yn(n=3:9,x=t(matrix(x,11,7))))
colnames(jj) <- paste("J",3:9,"(x)",sep="")
cbind(x,jj)                 #part of table 9.2, p399

cbind(                       x,                         #table 9.8, p416
        exp(-x)*bessel_I0  (x),
        exp(-x)*bessel_I1  (x),
         x^(-2)*bessel_In(2,x)
)

cbind(                      x,                          #table 9.8, p417
        exp(x)*bessel_K0  (x),
        exp(x)*bessel_K1  (x),
         x^(2)*bessel_Kn(2,x)
)

cbind(x,                                                #table 10.1 , p457
    bessel_j0(x),
    bessel_j1(x),
    bessel_j2(x),
    bessel_y0(x),
    bessel_y1(x),
    bessel_y2(x)
)

 cbind(0:9,"x=1"=bessel_yl(l=0:9,x=1), "x=2"=bessel_yl(l=0:9,x=2), "x=5"=bessel_yl(l=0:9,x=5)) 
                                                        #table 10.5, p466, top
}
\keyword{array}
