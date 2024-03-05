n_intentos1000<-1000
n_intentos10000<-10000
n_intentos100000<-100000
n_intentos1000000<-1000000


prueba<-function(intentos){
  assign("x",runif(intentos, min=0, max=1), envir = .GlobalEnv)
  assign("y",runif(intentos, min=0, max=1), envir = .GlobalEnv)
  resultado<-(x-0.5)^2 + (y-0.5)^2<0.25
  
  n_intentos_correctos=sum(resultado)
  
  pi=(n_intentos_correctos/intentos)*4
  print(pi)
}

prueba(n_intentos1000)
prueba(n_intentos10000)
prueba(n_intentos100000)
prueba(n_intentos1000000)

