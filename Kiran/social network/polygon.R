



n = 20
polygon<-function(n){
  a = 5.0
  x <- numeric()
  y <- numeric()
  theta <- numeric()
  for (k in 1:n){
    theta[k] = (2.0*k*pi)/n
    x[k] = a*cos(theta[k])
    y[k] = a*sin(theta[k])
  }
  x[n+1] = x[1]
  y[n+1] = y[1]
  pol_data = cbind(x,y)
  
  return(pol_data)}

connecter<- function(n){
  A = polygon(n)
  xdata <- numeric()
  ydata <- numeric()
  x = A[,1]
  y = A[,2]
  
  r = 1
  for(k in 1:n){
        for(l in 1:n){
                   xdata[r] = x[k]
                   ydata[r] = y[k]
                   r = r+1
                   xdata[r] = x[l]
                   ydata[r] = y[l]
                   r = r+1}
                          }
  B = cbind(xdata,ydata)
  return(B)}


P = polygon(n)  
Q = connecter(n)
#jpeg("network.jpeg")
plot(Q[,1],Q[,2],type="l",col = "blue")
#dev.off()






