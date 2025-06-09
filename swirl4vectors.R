install.packages("swirl")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/hakim/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/swirl_2.4.5.zip'
Content type 'application/zip' length 355686 bytes (347 KB)
downloaded 347 KB

package ‘swirl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\hakim\AppData\Local\Temp\Rtmp4M6IWy\downloaded_packages
> packageVersion("swirl")
[1] ‘2.4.5’
> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before,
| use the same name as you did then. If you are new, call
| yourself something unique.

What shall I call you? datasciencecoursera

| Thanks, datasciencecoursera. Let's cover a couple of quick
| housekeeping items before we begin our first lesson. First of
| all, you should know that when you see '...', that means you
| should press Enter when you are done reading and ready to
| continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are
| asked to select from a list, that means it's your turn to enter
| a response, then press Enter to continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 1

| You can exit swirl and return to the R prompt (>) at any time
| by pressing the Esc key. If you are already at the prompt, type
| bye() to exit and save your progress. When you exit properly,
| you'll see a short message letting you know you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl
| will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be
| saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!
  
  ...

| To begin, you must install a course. I can install a course for
| you from the internet, or I can send you to a web page
| (https://github.com/swirldev/swirl_courses) which will provide
| course options and directions for installing courses yourself.
| (If you are not connected to the internet, type 0 to exit.)

1: R Programming: The basics of programming in R
2: Regression Models: The basics of regression modeling in R
3: Statistical Inference: The basics of statistical inference in R
4: Exploratory Data Analysis: The basics of exploring data in R
5: Don't install anything for me. I'll do it myself.

Selection: 1
|========================================================| 100%

| Course installed successfully!
  
  
  | Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!
  
  Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> 1
[1] 1
> swirl()

| Welcome to swirl! Please sign in. If you've been here before,
| use the same name as you did then. If you are new, call
| yourself something unique.

What shall I call you? datasciencecoursera

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

Selection: 4

|                                                        |   0%

| The simplest and most common data structure in R is the vector.

...

|=                                                       |   3%
| Vectors come in two different flavors: atomic vectors and
| lists. An atomic vector contains exactly one data type, whereas
| a list may contain multiple data types. We'll explore atomic
| vectors further before we get to lists.

...

  |===                                                     |   5%
| In previous lessons, we dealt entirely with numeric vectors,
| which are one type of atomic vector. Other types of atomic
| vectors include logical, character, integer, and complex. In
| this lesson, we'll take a closer look at logical and character
| vectors.

...

|====                                                    |   8%
| Logical vectors can contain the values TRUE, FALSE, and NA (for
                                                              | 'not available'). These values are generated as the result of
| logical 'conditions'. Let's experiment with some simple
| conditions.

...

  |======                                                  |  11%
| First, create a numeric vector num_vect that contains the
| values 0.5, 55, -10, and 6.

> num_vect = c(0.5,55,-10, 6)

| Not exactly. Give it another go. Or, type info() for more
| options.

| Recall that the c() function is used for creating a vector. If
| you forget how to use it, use ?c to access the help file. Don't
| forget to assign the result to a new variable called num_vect.

> num_vect = 0.5,55,-10,6
Error: unexpected ',' in "num_vect = 0.5,"
> num_vect = c(0.5,55,-10,6)

| That's not the answer I was looking for, but try again. Or,
| type info() for more options.

| Recall that the c() function is used for creating a vector. If
| you forget how to use it, use ?c to access the help file. Don't
| forget to assign the result to a new variable called num_vect.

> num_vect<- c(0.5, 55, -10, 6)

| You nailed it! Good job!
  
  |=======                                                 |  13%
| Now, create a variable called tf that gets the result of
| num_vect < 1, which is read as 'num_vect is less than 1'.

> tf<- num_vect-1

| You almost had it, but not quite. Try again. Or, type info()
| for more options.

| Use tf <- num_vect < 1 to assign the result of num_vect < 1 to
| a variable called tf.

> tf<- num_vect<1

| That's the answer I was looking for.

  |=========                                               |  16%
| What do you think tf will look like?

1: a vector of 4 logical values
2: a single logical value

Selection: 1

| That's a job well done!
  
  |==========                                              |  18%
| Print the contents of tf now.

> tf
[1]  TRUE FALSE  TRUE FALSE

| You nailed it! Good job!
  
  |============                                            |  21%
| The statement num_vect < 1 is a condition and tf tells us
| whether each corresponding element of our numeric vector
| num_vect satisfies this condition.

...

|=============                                           |  24%
| The first element of num_vect is 0.5, which is less than 1 and
| therefore the statement 0.5 < 1 is TRUE. The second element of
| num_vect is 55, which is greater than 1, so the statement 55 <
  | 1 is FALSE. The same logic applies for the third and fourth
| elements.

...

|===============                                         |  26%
| Let's try another. Type num_vect >= 6 without assigning the
| result to a new variable.

> num_vect>=6
[1] FALSE  TRUE FALSE  TRUE

| Nice work!

  |================                                        |  29%
| This time, we are asking whether each individual element of num_vect is greater
| than OR equal to 6. Since only 55 and 6 are greater than or equal to 6, the
| second and fourth elements of the result are TRUE and the first and third
| elements are FALSE.

...

  |==================                                      |  32%
| The `<` and `>=` symbols in these examples are called 'logical operators'. Other
| logical operators include `>`, `<=`, `==` for exact equality, and `!=` for
| inequality.

...

  |===================                                     |  34%
| If we have two logical expressions, A and B, we can ask whether at least one is
| TRUE with A | B (logical 'or' a.k.a. 'union') or whether they are both TRUE with
| A & B (logical 'and' a.k.a. 'intersection'). Lastly, !A is the negation of A and
| is TRUE when A is FALSE and vice versa.

...

  |=====================                                   |  37%
| It's a good idea to spend some time playing around with various combinations of
| these logical operators until you get comfortable with their use. We'll do a few
| examples here to get you started.

...

  |======================                                  |  39%
| Try your best to predict the result of each of the following statements. You can
| use pencil and paper to work them out if it's helpful. If you get stuck, just
| guess and you've got a 50% chance of getting the right answer!

...

  |========================                                |  42%
| (3 > 5) & (4 == 4)

1: FALSE
2: TRUE

Selection: 1

| You are really on a roll!

  |=========================                               |  45%
| (TRUE == TRUE) | (TRUE == FALSE)

1: FALSE
2: TRUE

Selection: 1

| Almost! Try again.

| Break this problem down into 2 pieces. The `|` in the middle states that AT LEAST
| ONE of the pieces is TRUE. Your job is to figure out if that is an accurate
| statement. If so, the entire condition is TRUE. If not, it's FALSE.

1: FALSE
2: TRUE

Selection: 2

| Excellent job!
  
  |===========================                             |  47%
| ((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

1: TRUE
2: FALSE

Selection: 1

| You got it!
  
  |============================                            |  50%
| Don't worry if you found these to be tricky. They're supposed to be. Working with
| logical statements in R takes practice, but your efforts will be rewarded in
| future lessons (e.g. subsetting and control structures).

...

|=============================                           |  53%
| Character vectors are also very common in R. Double quotes are used to
| distinguish character objects, as in the following example.

...

|===============================                         |  55%
| Create a character vector that contains the following words: "My", "name", "is".
| Remember to enclose each word in its own set of double quotes, so that R knows
| they are character strings. Store the vector in a variable called my_char.

> my_char<- c("MY", "name", "is")

| Give it another try. Or, type info() for more options.

| Type my_char <- c("My", "name", "is") to create a new variable called my_char
| that contains a character vector of length 3. Make sure that the commas
| separating the words are OUTSIDE of the double quotes, or else R thinks the
| commas are part of the words.

> my_char<- c("My", "name", "is")

| Excellent work!
  
  |================================                        |  58%
| Print the contents of my_char to see what it looks like.

> my_char
[1] "My"   "name" "is"  

| You got it!
  
  |==================================                      |  61%
| Right now, my_char is a character vector of length 3. Let's say we want to join
| the elements of my_char together into one continuous character string (i.e. a
| character vector of length 1). We can do this using the paste() function.

...

  |===================================                     |  63%
| Type paste(my_char, collapse = " ") now. Make sure there's a space between the
| double quotes in the `collapse` argument. You'll see why in a second.

> paste(my_char, collapse = "My", "name", "is")
[1] "My name isMyname name isMyis name is"

| Give it another try. Or, type info() for more options.

| Use paste(my_char, collapse = " ") to collapse the words in the vector so they
| almost form a sentence. There should be a single space between the double quotes
| in the `collapse` argument so that there are single spaces separating the words.

> paste(my_char, collapse = "My name is")
[1] "MyMy name isnameMy name isis"

| Give it another try. Or, type info() for more options.

| Use paste(my_char, collapse = " ") to collapse the words in the vector so they
| almost form a sentence. There should be a single space between the double quotes
| in the `collapse` argument so that there are single spaces separating the words.

> paste(my_char, collapse = "My", "name", "is")
[1] "My name isMyname name isMyis name is"

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Use paste(my_char, collapse = " ") to collapse the words in the vector so they
| almost form a sentence. There should be a single space between the double quotes
| in the `collapse` argument so that there are single spaces separating the words.

> paste(my_char, collapse = " ")
[1] "My name is"

| You're the best!

  |=====================================                   |  66%
| The `collapse` argument to the paste() function tells R that when we join
| together the elements of the my_char character vector, we'd like to separate them
| with single spaces.

...

|======================================                  |  68%
| It seems that we're missing something.... Ah, yes! Your name!

...

  |========================================                |  71%
| To add (or 'concatenate') your name to the end of my_char, use the c() function
| like this: c(my_char, "your_name_here"). Place your name in double quotes where
| I've put "your_name_here". Try it now, storing the result in a new variable
| called my_name.

> my_name<-c(my_char, "Azizul Hakim")

| You are doing so well!
  
  |=========================================               |  74%
| Take a look at the contents of my_name.

> my_name
[1] "My"           "name"         "is"           "Azizul Hakim"

| You got it right!
  
  |===========================================             |  76%
| Now, use the paste() function once more to join the words in my_name together
| into a single character string. Don't forget to say collapse = " "!

> paste(my_name, collapse = " ")
[1] "My name is Azizul Hakim"

| You are really on a roll!

  |============================================            |  79%
| In this example, we used the paste() function to collapse the elements of a
| single character vector. paste() can also be used to join the elements of
| multiple character vectors.

...

  |==============================================          |  82%
| In the simplest case, we can join two character vectors that are each of length 1
| (i.e. join two words). Try paste("Hello", "world!", sep = " "), where the `sep`
| argument tells R that we want to separate the joined elements with a single
| space.

> paste("Hello", "world", sep = " ")
[1] "Hello world"

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type
| info() for more options.

| Enter paste("Hello", "world!", sep = " ") to join the two words "Hello" and
| "world", separated by a single space. There should be a single space between the
| double quotes in the `sep` argument to the paste() function.

> ("Hello", "world!", sep = " ")
Error: unexpected ',' in "("Hello","
> paste("Hello", "world!", sep = " ")
[1] "Hello world!"

| Nice work!
  
  |===============================================         |  84%
| For a slightly more complicated example, we can join two vectors, each of length
| 3. Use paste() to join the integer vector 1:3 with the character vector c("X",
                                                                            | "Y", "Z"). This time, use sep = "" to leave no space between the joined elements.

> paste( c(1:3), c("x","y")
         + 
           + paste(c(1:3), c("X", "Y", "Z"), sep = "")
         Error: unexpected symbol in:
           "
paste"
         > paste(c(1,2,3), "X", "Y", "Z", sep = "")
         [1] "1XYZ" "2XYZ" "3XYZ"
         
         | Not quite right, but keep trying. Or, type info() for more options.
         
         | Use paste(1:3, c("X", "Y", "Z"), sep = "") to see what happens when we join two
         | vectors of equal length using paste().
         
         > paste(1:3, c("X", "Y", "Z"), sep = "")
         [1] "1X" "2Y" "3Z"
         
         | All that practice is paying off!
           
           |=================================================       |  87%
         | What do you think will happen if our vectors are of different length? (Hint: we
                                                                                  | talked about this in a previous lesson.)
         
         ...
         
         |==================================================      |  89%
         | Vector recycling! Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a
         | predefined variable in R containing a character vector of all 26 letters in the
         | English alphabet.
         
         > paste(LETTERS, 1:26, sep = "-")
         [1] "A-1"  "B-2"  "C-3"  "D-4"  "E-5"  "F-6"  "G-7"  "H-8"  "I-9"  "J-10" "K-11"
         [12] "L-12" "M-13" "N-14" "O-15" "P-16" "Q-17" "R-18" "S-19" "T-20" "U-21" "V-22"
         [23] "W-23" "X-24" "Y-25" "Z-26"
         
         | Not quite! Try again. Or, type info() for more options.
         
         | Type paste(LETTERS, 1:4, sep = "-") to see how R recycles the vector 1:4 to match
         | the length of LETTERS. Notice we are using `-` as our separator this time instead
         | of a single space.
         
         > paste(LETTERS, 1:4, sep = "-")
         [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3" "L-4" "M-1"
         [14] "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2" "W-3" "X-4" "Y-1" "Z-2"
         
         | You are amazing!
           
           |====================================================    |  92%
         | Since the character vector LETTERS is longer than the numeric vector 1:4, R
         | simply recycles, or repeats, 1:4 until it matches the length of LETTERS.
         
         ...
         
         |=====================================================   |  95%
         | Also worth noting is that the numeric vector 1:4 gets 'coerced' into a character
         | vector by the paste() function.
         
         ...
         
         |======================================================= |  97%
         | We'll discuss coercion in another lesson, but all it really means is that the
| numbers 1, 2, 3, and 4 in the output above are no longer numbers to R, but rather
| characters "1", "2", "3", and "4".

...

  |========================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? ahakimsoil@cu.ac.bd
What is your assignment token? OgdgEsHl27LO6A1D
Grade submission succeeded!

| All that hard work is paying off!

| You've reached the end of this lesson! Returning to the main menu...
         
         | Please choose a course, or type 0 to exit swirl.
         
         1: R Programming
         2: Take me to the swirl course repository!
           
           Selection: 0
         
         | Leaving swirl now. Type swirl() to resume.