# Definición del número de intentos para cada prueba
n_intentos1000 <- 1000
n_intentos10000 <- 10000
n_intentos100000 <- 100000
n_intentos1000000 <- 1000000

# Definición de la función de prueba
prueba <- function(intentos) {
  # Generación de números aleatorios para coordenadas x e y
  assign("x", runif(intentos, min = 0, max = 1), envir = .GlobalEnv)
  assign("y", runif(intentos, min = 0, max = 1), envir = .GlobalEnv)
  
  # Comprobación de si los puntos caen dentro del círculo unitario centrado en (0.5, 0.5)
  resultado <- (x - 0.5)^2 + (y - 0.5)^2 < 0.25
  
  # Conteo de intentos correctos (dentro del círculo)
  n_intentos_correctos <- sum(resultado)
  
  # Estimación de pi usando el número de intentos correctos
  pi <- (n_intentos_correctos / intentos) * 4
  
  # Impresión del valor estimado de pi
  print(pi)
}

# Ejecución de la función de prueba para diferentes números de intentos
prueba(n_intentos1000)
prueba(n_intentos10000)
prueba(n_intentos100000)
prueba(n_intentos1000000)

