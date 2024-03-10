
n=1000000


x1=rexp(n, 2)# el dos es lamda de la distribución exponencial - el promedio es 1/lambda
x2=rexp(n, 2)
x3=rexp(n, 2)
x4=rexp(n, 2)


datos=data.frame(
  x1,
  x2,
  x3,
  x4
)


dmin=apply(datos, 1, min)
dmax=apply(datos, 1, max)


estimadores=data.frame(
teta1= (x1 + x2)/6 + (x3+x4)/3,
teta2= (x1 + 2*x2 + 3* x3 +4*x4)/5,
teta3=(x1 +x2 +x3+x4)/4,
teta4= (dmin + dmax)/2)


summary(estimadores)

boxplot(estimadores)
abline(h=0.5, col="red")

par(mfrow=c(2,2))
hist(estimadores$teta1, breaks=10, xlim = range(estimadores$teta1))
hist(estimadores$teta2, breaks=10, xlim = range(estimadores$teta2))
hist(estimadores$teta3, breaks=10, xlim = range(estimadores$teta3))
hist(estimadores$teta4, breaks=10, xlim = range(estimadores$teta4))
