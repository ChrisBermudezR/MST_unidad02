#Teorema del límite central

poblacion = rep(c(0.,1),each=500 )


MuestraAleatoria= function(n){
  m=sample(poblacion, n, replace=TRUE)
  return(m)
}
MuestraAleatoria(20)  





grafico<-function(n){
M=500
y=matrix(MuestraAleatoria(n*M), ncol=n)

pgorro= function(x){
  sum(x)/n
}
phat5=apply(y, 1, pgorro)
hist(phat5)}

par(mfrow=c(2,2))
grafico(5) 
grafico(10)
grafico(15)
grafico(20)
grafico(30)
grafico(50)
grafico(60)
grafico(100)
grafico(200)
grafico(500)
