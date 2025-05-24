
file()
gzfile
bzfile
url()
str(file)
function(description ="",open= "",blocking= TRUE,
         encoding = getOption("encoding"))
  
#"r" read only
#"w"writing
#"a"appending
#"rb", "wb", "ab"reading, writing, and appending in binary mode()

con =file("foo.txt", "r")  
data =read.csv(con)
close(con)
data = read.csv("foo.txt")

con =gzfile("words.gz")
x=readLine(con, 10)
x
con=url("http://www.jhsph.edu", "r")
x=readLines(con)
head(x)



