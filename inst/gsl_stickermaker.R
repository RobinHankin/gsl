library("hexSticker")
library("gsl")


bmp(file="wrapper.bmp",bg="#7733FF")
par(mar=c(5,2,4,2)+0.1)
x <- seq(from=-pi,to=pi,len=400)
plot(x,cos(x),asp=1,type="l",lwd=10,axes=FALSE,xlab="",ylab="")

is.na(x[abs(cos(x))<0.15]) <- TRUE


points(x,-cos(x),asp=1,type="l",lwd=10)

segments(+pi,-1,+pi,+1,lwd=10)
segments(-pi,-1,-pi,+1,lwd=10)
dev.off()



sticker("wrapper.bmp", package="gsl", p_size=28, s_x=1, s_y=0.84,
s_width=0.9,asp=0.85, white_around_sticker=TRUE, h_fill="#7733FF",
h_color="#000000", filename="gsl.png")
