> install.packages("swirl")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/hakim/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/swirl_2.4.5.zip'
Content type 'application/zip' length 355166 bytes (346 KB)
downloaded 346 KB

package ‘swirl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\hakim\AppData\Local\Temp\Rtmpqq7quZ\downloaded_packages
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name
| as you did then. If you are new, call yourself something unique.

What shall I call you? datasciencecoursera

| Thanks, datasciencecoursera. Let's cover a couple of quick housekeeping items
| before we begin our first lesson. First of all, you should know that when you see
| '...', that means you should press Enter when you are done reading and ready to
| continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to select
| from a list, that means it's your turn to enter a response, then press Enter to
| continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 1

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc
| key. If you are already at the prompt, type bye() to exit and save your progress.
| When you exit properly, you'll see a short message letting you know you've done
| so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what
| you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!
  
  ...

| To begin, you must install a course. I can install a course for you from the
| internet, or I can send you to a web page
| (https://github.com/swirldev/swirl_courses) which will provide course options and
| directions for installing courses yourself. (If you are not connected to the
                                               | internet, type 0 to exit.)

1: R Programming: The basics of programming in R
2: Regression Models: The basics of regression modeling in R
3: Statistical Inference: The basics of statistical inference in R
4: Exploratory Data Analysis: The basics of exploring data in R
5: Don't install anything for me. I'll do it myself.

Selection: 1
|==========================================================================| 100%

| Course installed successfully!
  
  
  | Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!
  
  Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

1: Basic Building Blocks      2: Workspace and Files     
3: Sequences of Numbers       4: Vectors                 
5: Missing Values             6: Subsetting Vectors      
7: Matrices and Data Frames   8: Logic                   
9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 5

|                                                                          |   0%

| Missing values play an important role in statistics and data analysis. Often,
| missing values must not be ignored, but rather they should be carefully studied
| to see if there's an underlying pattern or cause for their missingness.

...

  |====                                                                      |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing' (in
| the statistical sense). In this lesson, we'll explore missing values further.

...

|=======                                                                   |  10%
| Any operation involving NA generally yields NA as the result. To illustrate,
| let's create a vector c(44, NA, 5, NA) and assign it to a variable x.

> x<- c(44, NA, 5, NA)

| You got it!

  |===========                                                               |  15%
| Now, let's multiply x by 3.

> x*3
[1] 132  NA  15  NA

| You are quite good my friend!
  
  |===============                                                           |  20%
| Notice that the elements of the resulting vector that correspond with the NA
| values in x are also NA.

...

|==================                                                        |  25%
| To make things a little more interesting, lets create a vector containing 1000
| draws from a standard normal distribution with y <- rnorm(1000).

> y<- rnorm(1000)

| You are amazing!
  
  |======================                                                    |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z<- rep(NA, 1000)

| Your dedication is inspiring!

  |==========================                                                |  35%
| Finally, let's select 100 elements at random from these 2000 values (combining y
                                                                       | and z) such that we don't know how many NAs we'll wind up with or what positions
| they'll occupy in our final vector -- my_data <- sample(c(y, z), 100).

> my_data<-sample(c(y,z),100)

| You are amazing!

  |==============================                                            |  40%
| Let's first ask the question of where our NAs are located in our data. The
| is.na() function tells us whether each element of a vector is NA. Call is.na() on
| my_data and assign the result to my_na.

> my_na<- is.na(my_data)

| You are doing so well!
  
  |=================================                                         |  45%
| Now, print my_na to see what you came up with.

> my_na
[1]  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE
[15] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE
[29] FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE
[43] FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE
[57] FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
[71] FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
[85] FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE
[99] FALSE  TRUE

| You nailed it! Good job!
  
  |=====================================                                     |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is NA. Likewise,
| everywhere you see a FALSE, you know the corresponding element of my_data is one of our
| random draws from the standard normal distribution.

...

|=========================================                                 |  55%
| In our previous discussion of logical operators, we introduced the `==` operator as a
| method of testing for equality between two objects. So, you might think the expression
| my_data == NA yields the same results as is.na(). Give it a try.

> my_data ==NA
[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
[30] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
[59] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
[88] NA NA NA NA NA NA NA NA NA NA NA NA NA

| Excellent work!
  
  |============================================                              |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but just a
| placeholder for a quantity that is not available. Therefore the logical expression is
| incomplete and R has no choice but to return a vector of the same length as my_data that
| contains all NAs.

...

|================================================                          |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious when using
| logical expressions anytime NAs might creep in, since a single NA value can derail the
| entire thing.

...

|====================================================                      |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a TRUE for every
| NA and FALSE for every numeric value, we can compute the total number of NAs in our data.

...

|========================================================                  |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as the number 1
| and FALSE as the number 0. Therefore, if we take the sum of a bunch of TRUEs and FALSEs, we
| get the total number of TRUEs.

...

|===========================================================               |  80%
| Let's give that a try here. Call the sum() function on my_na to count the total number of
| TRUEs in my_na, and thus the total number of NAs in my_data. Don't assign the result to a
| new variable.

> sum(my_na)
[1] 44

| Keep working like that and you'll get there!

  |===============================================================           |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince ourselves that
| everything 'adds up'. Print my_data to the console.

> my_data
[1]          NA -0.77016516          NA -0.48580914  1.41450781          NA          NA
[8]  0.25204921 -0.74317641 -1.53941738  0.25153696          NA -0.50606229          NA
[15]  0.84226653  0.87858404 -0.33376483  0.39460168          NA  1.22941696  0.40331483
[22]  0.37931910          NA          NA -1.10988065          NA -0.53424726          NA
[29] -0.01317753 -0.99064210          NA          NA  0.53872821 -0.81532216 -0.15085866
[36]  0.46435014  0.81940954          NA          NA  1.39162683          NA -0.27812637
[43]  0.37105969 -0.99196006          NA          NA  0.83673730 -0.72349229          NA
[50]          NA -0.63480958          NA  0.72377879          NA          NA          NA
[57]  1.85791824  0.70318973  1.47276194          NA -2.64982725          NA  0.20775291
[64]          NA          NA          NA          NA  0.80971867  0.97199706          NA
[71] -1.12133948          NA          NA          NA  1.09126575 -0.55798103 -0.38675222
[78]  0.37790175          NA  1.20523272          NA          NA          NA          NA
[85] -0.60462314  0.53906027          NA  0.08689574  1.11999247 -0.32350704          NA
[92]          NA -0.87018605  1.03426738          NA  0.50268882 -0.52517605 -0.25718423
[99] -0.18717133          NA

| All that hard work is paying off!
  
  |===================================================================       |  90%
| Now that we've got NAs down pat, let's look at a second type of missing value -- NaN, which
| stands for 'not a number'. To generate NaN, try dividing (using a forward slash) 0 by 0
| now.

> 0/0
[1] NaN

| You are quite good my friend!
  
  |======================================================================    |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens if you
| subtract Inf from Inf?

> inf-inf
Error: object 'inf' not found
> Inf-Inf
[1] NaN

| You got it right!

  |==========================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? ahakimsoil@cu.ac.bd
What is your assignment token? 3l5nkCrmkWTXMr7d
Grade submission succeeded!

| Keep working like that and you'll get there!
  
  | You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers    
 4: Vectors                    5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                      9: Functions               
10: lapply and sapply         11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 0

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: swirl()
Enter an item from the menu, or 0 to exit
Selection: 0

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did
| then. If you are new, call yourself something unique.

What shall I call you?