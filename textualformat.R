
dump()
dput
y = data.frame(a =1, b= "a")
dput(y)
y
structure(list(a =1, b="a"))
dput(y)
dput
dput(y, file="y.R")
new.y= dget("y.R")
new.y
x= "foo"
y=data.frame(a=1, b="a")
dump(c("x","y"), file ="data.R")
rm(x,y)
source("data.R")
y
x
