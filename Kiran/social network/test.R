

  n = 20 
  a = 5.0
  x <- numeric()
  y <- numeric()
  theta <- numeric()
  for (k in 1:n){
    theta[k] = (k*2.0*pi)/n
    x[k] = a*cos(theta[k])
    y[k] = a*sin(theta[k]) 
  }
  x[n+1] = x[1]
  y[n+1] = y[1]
  


plot(x,y,type="l",col = "blue")






