add2 =function(x, y){
  x+y
}
add2(3,5)
avobe10 = function(x){
  use =x>10
  x(use)
}
above= function(x,n){
  use= x>n
  x[use]
}
x=1:20
above(x,12)
above= function(x,n=10){
  use= x>n
  x[use]
}
x=1:20
above(x)

colummean= function(y, removeNA =TRUE){
  nc=ncol(y)
  means= numeric(nc)
  for (i in 1:nc){
    means[i]= mean(y[, 1], na.rm=removeNA)
    }
  means
}

colummean(airquality)













