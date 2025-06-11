x<-15
if (x < 10) {
  print("x is less than 10")
} else if (x >= 10 && x <= 20) {
  print("x is between 10 and 20")
} else {
  print("x is greater than 20")
}
x=3
if(x>3){
  y=10
} else{
  y=0
}
print(x+y)

for(i in 1:10)
  print(i)

x= c("a", "b", "c", "d")
for (i in 1:4) {
  print(x[i])
  
}
  for (i in seq_along(x)) {
    print(x[i])
    
  }
for (letter in x) {
  print(letter)
  
}

for (i in 1:4)print(x[i])

#for nested loops
x=matrix(1:6, 2,3)
x
for (i in seq_len(nrow(x))) {
 for (j in seq_len(ncol(x))) {
   
 }
    
}

#while loop

  
count=0
while (count<10) {
  print(count)
  count= count+1
  
}


z=5
while (z>=3 && z<=10) {
  print(z)
  coin=rbinom(1,1,0.5)
  if(coin==1){
    z=z+1
  }else{
    z=z-1
  }
  
}








  