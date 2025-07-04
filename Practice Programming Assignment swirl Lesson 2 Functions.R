library(swirl)
swirl()
swirl()

| Welcome to swirl! Please sign in. If you've
| been here before, use the same name as you
| did then. If you are new, call yourself
| something unique.

What shall I call you? datasciencecoursera

| Would you like to continue with one of these
| lessons?

1: R Programming Functions
2: No. Let me start something new.

Selection: 1



| The last R expression to be evaluated in a
| function will become the return value of
| that function. We want this function to take
| one argument, x, and return x without
| modifying it. Delete the pound sign so that
| x is returned without any modification. Make
| sure to save your script before you type
| submit().

> submit()

| Sourcing your script...


| Almost! Try again.

| Make sure to delete the pound sign so the
| last expression in the function is just x.

> delete.response()
Error in delete.response() : 
  argument "termobj" is missing, with no default
> submit()

| Sourcing your script...

Error in delete.response() : 
  argument "termobj" is missing, with no default

| You got it!

  |======                              |  16%
| Now that you've created your first function
| let's test it! Type: boring_function('My
| first function!'). If your function works,
| it should just return the string: 'My first
| function!'

> boring_function("my first function")
[1] "my first function"

| That's not the answer I was looking for, but
| try again. Or, type info() for more options.

| Test boring_function by typing:
  | boring_function('My first function!')

> boring_function('My first function!')
[1] "My first function!"

| All that practice is paying off!
  
  |=======                             |  18%
| Congratulations on writing your first
| function. By writing functions, you can gain
| serious insight into how R works. As John
| Chambers, the creator of R once said:
  | 
  | To understand computations in R, two slogans
| are helpful: 1. Everything that exists is an
| object. 2. Everything that happens is a
| function call.

...

|=======                             |  20%
| If you want to see the source code for any
| function, just type the function name
| without any arguments or parentheses. Let's
| try this out with the function you just
| created. Type: boring_function to view its
| source code.

> boring_function()
Error in boring_function() : argument "x" is missing, with no default
> boring_function()
Error in boring_function() : argument "x" is missing, with no default
> boring_function
function(x) {
  x
}
<bytecode: 0x000001d0b87afae8>

| All that practice is paying off!

  |========                            |  22%
| Time to make a more useful function! We're
| going to replicate the functionality of the
| mean() function by creating a function
| called: my_mean(). Remember that to
| calculate the average of all of the numbers
| in a vector you find the sum of all the
| numbers in the vector, and then divide that
| sum by the number of numbers in the vector.

...

|=========                           |  24%
| Make sure to save your script before you
| type submit().

> my_mean <- function(my_vector) {
  +   sum(my_vector)/length(my_vector)
  +   # Write your code here!
    +   # Remember: the last expression evaluated will be returned! 
    + 
    + }
> submit()

| Sourcing your script...


| All that practice is paying off!
  
  |==========                          |  27%
| Now test out your my_mean() function by
| finding the mean of the vector c(4, 5, 10).

> my_mean(c(4,5,6))
[1] 5

| Almost! Try again. Or, type info() for more
| options.

| Run the command my_mean(c(4, 5, 10)) to test
| out your new function.

> my_mean(c(4,5,10))
[1] 6.333333

| Nice work!
  
  |==========                          |  29%
| Next, let's try writing a function with
| default arguments. You can set default
| values for a function's arguments, and this
| can be useful if you think someone who uses
| your function will set a certain argument to
| the same value most of the time.

...

|===========                         |  31%
| Make sure to save your script before you
| type submit().

> remainder <- function(num, divisor=2) {
  +   num%%divisor
  +   # Write your code here!
    +   # Remember: the last expression evaluated will be returned! 
    + }
> submit()

| Sourcing your script...


| You are doing so well!
  
  |============                        |  33%
| Let's do some testing of the remainder
| function. Run remainder(5) and see what
| happens.

> remainder(5)
[1] 1

| All that practice is paying off!

  |============                        |  35%
| Let's take a moment to examine what just
| happened. You provided one argument to the
| function, and R matched that argument to
| 'num' since 'num' is the first argument. The
| default value for 'divisor' is 2, so the
| function used the default value you
| provided.

...

|=============                       |  37%
| Now let's test the remainder function by
| providing two arguments. Type: remainder(11,
| 5) and let's see what happens.

> remainder(11,5)
[1] 1

| Excellent work!
  
  |==============                      |  39%
| Once again, the arguments have been matched
| appropriately.

...

|===============                     |  41%
| You can also explicitly specify arguments in
| a function. When you explicitly designate
| argument values by name, the ordering of the
| arguments becomes unimportant. You can try
| this out by typing: remainder(divisor = 11,
                                | num = 5).

> remainder(divisor =11, num=5)
[1] 5

| Excellent work!
  
  |===============                     |  43%
| As you can see, there is a significant
| difference between remainder(11, 5) and
| remainder(divisor = 11, num = 5)!
  
  ...

|================                    |  45%
| R can also partially match arguments. Try
| typing remainder(4, div = 2) to see this
| feature in action.

> remainder(4, div=2)
[1] 0

| That's correct!

  |=================                   |  47%
| A word of warning: in general you want to
| make your code as easy to understand as
| possible. Switching around the orders of
| arguments by specifying their names or only
| using partial argument names can be
| confusing, so use these features with
| caution!

...

  |==================                  |  49%
| With all of this talk about arguments, you
| may be wondering if there is a way you can
| see a function's arguments (besides looking
                              | at the documentation). Thankfully, you can
| use the args() function! Type:
  | args(remainder) to examine the arguments for
| the remainder function.

> args(remainder)
function (num, divisor = 2) 
  NULL

| Keep up the great work!
  
  |==================                  |  51%
| You may not realize it but I just tricked
| you into doing something pretty interesting!
  | args() is a function, remainder() is a
| function, yet remainder was an argument for
| args(). Yes it's true: you can pass
| functions as arguments! This is a very
| powerful concept. Let's write a script to
| see how it works.

...

|===================                 |  53%
| Make sure to save your script before you
| type submit().

> evaluate <- function(func, dat){
  +   func(dat)
  +   # Write your code here!
    +   # Remember: the last expression evaluated will be returned! 
    + }
> submit()

| Sourcing your script...


| You are quite good my friend!
  
  |====================                |  55%
| Let's take your new evaluate() function for
| a spin! Use evaluate to find the standard
| deviation of the vector c(1.4, 3.6, 7.9,
| 8.8).

> evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
[1] 3.514138

| You are amazing!

  |=====================               |  57%
| The idea of passing functions as arguments
| to other functions is an important and
| fundamental concept in programming.

...

  |=====================               |  59%
| You may be surprised to learn that you can
| pass a function as an argument without first
| defining the passed function. Functions that
| are not named are appropriately known as
| anonymous functions.

...

  |======================              |  61%
| Let's use the evaluate function to explore
| how anonymous functions work. For the first
| argument of the evaluate function we're
| going to write a tiny function that fits on
| one line. In the second argument we'll pass
| some data to the tiny anonymous function in
| the first argument.

...

|=======================             |  63%
| Type the following command and then we'll
| discuss how it works:
| evaluate(function(x){x+1}, 6)

> evaluate(fucntion(x){x+1},6)
Error: unexpected '{' in "evaluate(fucntion(x){"
> evaluate(function(x){x+1}, 6)
[1] 7

| You're the best!
    
    |========================            |  65%
  | The first argument is a tiny anonymous
  | function that takes one argument `x` and
  | returns `x+1`. We passed the number 6 into
  | this function so the entire expression
  | evaluates to 7.
  
  ...
  
  |========================            |  67%
  | Try using evaluate() along with an anonymous
  | function to return the first element of the
  | vector c(8, 4, 0). Your anonymous function
  | should only take one argument which should
  | be a variable `x`.
  
  > evaluate(function(x){x[1]}, c(8, 4, 0))
  [1] 8
  
  | Your dedication is inspiring!
    
    |=========================           |  69%
  | Now try using evaluate() along with an
  | anonymous function to return the last
  | element of the vector c(8, 4, 0). Your
  | anonymous function should only take one
  | argument which should be a variable `x`.
  
  > evaluate(function(x){x[-1]}, c(8, 4, 0))
  [1] 4 0
  
  | Excellent work!
    
    |==========================          |  71%
  | For the rest of the course we're going to
| use the paste() function frequently. Type
| ?paste so we can take a look at the
| documentation for the paste function.

> ?paste

| You got it!

  |==========================          |  73%
| As you can see the first argument of paste()
| is `...` which is referred to as an ellipsis
| or simply dot-dot-dot. The ellipsis allows
| an indefinite number of arguments to be
| passed into a function. In the case of
| paste() any number of strings can be passed
| as arguments and paste() will return all of
| the strings combined into one string.

...

  |===========================         |  76%
| Just to see how paste() works, type paste("Programming", "is", "fun!")

> paste("Programming", "is", "fun!")
[1] "Programming is fun!"

| You're the best!
    
    |============================        |  78%
  | Time to write our own modified version of paste().
  
  ...
  
  |=============================       |  80%
  | Make sure to save your script before you type submit().
  
  > telegram <- function(...){
    +   paste("START",...,"STOP", sep ="")
    +   
      + }
  > submit()
  
  | Sourcing your script...
  
  
  | Not exactly. Give it another go.
  
  | Remember that arguments can come after ...
  
  > telegram <- function(...){
    +   paste("START",...,"STOP", sep =" ")
    +   
      + }
  > submit()
  
  | Sourcing your script...
  
  
  | That's correct!

  |=============================       |  82%
| Now let's test out your telegram function. Use your new telegram function
  | passing in whatever arguments you wish!
    
    > telegram("I", "am", "hakim")
  [1] "START I am hakim STOP"
  
  | Keep working like that and you'll get there!

  |==============================      |  84%
| Make sure to save your script before you type submit().

> 
> submit()

| Sourcing your script...


| You nailed it! Good job!

  |===============================     |  86%
| Time to use your mad_libs function. Make sure to name the place, adjective,
| and noun arguments in order for your function to work.

> mad_libs(place = Dhaka, adjustive = "kind", noun = "Azizul")
Error: object 'Dhaka' not found
> mad_libs(place = "Dhaka", adjustive = "kind", noun = "Azizul")
[1] "News from Dhaka today where  students took to the streets in protest of the new Azizul being installed on campus."

| You are really on a roll!

  |================================    |  88%
| We're coming to the end of this lesson, but there's still one more idea you
| should be made aware of.

...

  |================================    |  90%
| You're familiar with adding, subtracting, multiplying, and dividing numbers
  | in R. To do this you use the +, -, *, and / symbols. These symbols are
  | called binary operators because they take two inputs, an input from the left
  | and an input from the right.
  
  ...
  
  |=================================   |  92%
  | In R you can define your own binary operators. In the next script I'll show
| you how.

...

  |==================================  |  94%
| Make sure to save your script before you type submit().

> "%p%" <- function(){
+   paste(left, right, sep = " ")
+   # Remember to add arguments!
+   
+ }
> submit()

| Sourcing your script...


| You're close...I can feel it! Try it again.
  
  | Remember: 'Hello' %p% 'student!' is how you use the binary operator.
  
  > submit()
  
  | Sourcing your script...
  
  
  | That's not the answer I was looking for, but try again.

| Remember: 'Hello' %p% 'student!' is how you use the binary operator.

> "%p%" <- function(left, right){ # Remember to add arguments!
+   paste(left, right, sep = " ")
+ }
> submit()

| Sourcing your script...


| You nailed it! Good job!

  |=================================== |  96%
| You made your own binary operator! Let's test it out. Paste together the
  | strings: 'I', 'love', 'R!' using your new binary operator.
  
  > "I" %p% "love" %p% "R!"
  [1] "I love R!"
  
  | Great job!
    
    |=================================== |  98%
  | We've come to the end of our lesson! Go out there and write some great
| functions!

...

  |====================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? ahakimsoil@cu.ac.bd
What is your assignment token? DqdghZpaYEqDvOAM
Grade submission succeeded!

| That's the answer I was looking for.
  
  | You've reached the end of this lesson! Returning to the main menu...

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

Selection: 0

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 0

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same
  | name as you did then. If you are new, call yourself something unique.
  
  What shall I call you? 