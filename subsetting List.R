#subsetting Lists
x=list(foo=1:4, bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x= list(foo=1:4, bar=0.6, baz="hello")
x[c(1,3)]
name="foo"
x[[name]] ##computed index for name
x$name ##element "name" doesnot exit!
x$foo

#subsetting Nested Elements of a List

x = list(a=list(10, 12, 14), b =c(3.14, 2.28))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]
x[[2]][[1]]

x[[c(1,2)]]
x[[c(2,1)]]

#subsetting matrics

x=matrix(1:6, 2,3)
x
x[1,2]
x[2,1]

#indices can be missing
x[1, ]
x[ , 2]

x[1,3]
x[1,2]
x[1,2, drop=FALSE]


x=matrix(1:6, 2,3)
x
x[1, ]
x[1, , drop=FALSE]
