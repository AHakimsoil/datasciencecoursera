
x=Sys.time()
x
p=as.POSIXlt(x)
p
names(unclass(p))
1
p$sec
p$min
p$hour

datestring=c("January 10, 2012 10:40", "December 9, 2011 9:10")
x=strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

X=as.Date("2012-01-01")
y=strptime("9 Jan 2011 11:34:21", "%d %b %y %H:%M;%S")
x-y
x=as.POSIXlt(X)
x-y
x=as.Date("2012-03-01")
y=as.Date("2012-02-28")
x-y
x=as.POSIXct("2012-10-25 01:00:00")
y=as.POSIXct("2012-10-25 06:00:00", tz="GMT")
x-y
y-x
