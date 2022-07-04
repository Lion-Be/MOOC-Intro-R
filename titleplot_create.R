library(MASS)
par(bg=NA)
mu = c(5, 5)
sigma = matrix(c(4.5, -0.8, -0.8, 4.5), ncol=2)
set.seed = 1
x = mvrnorm(400, mu, sigma)
vec = c(rep(0, 200), rep(1, 200))
plot(x[vec==0,1], x[vec==0,2], col="white", cex=1, pch=19, type="p", 
     xlim=c(-1, 10), ylim=c(-1, 10), axes=F, xlab="", ylab="")
points(x[vec==1,1], x[vec==1,2], col="darkgray", cex=1, pch=19, type="p")
