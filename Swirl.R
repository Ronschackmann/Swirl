install.packages("swirl")
library("swirl")
###testupload to git
##quick keys
  # ctrl-shift-c | make line a comment
  # ctrl-2 jump cursor to console
# vvv
#bookmark: 'R Programming'-> currently in section 4
# Packages are installed in R, not in Rstudio!
# install latest version of R:
    #install.packages("installr"); library(installr)
    #UpdateR() |install laters version R: 
# Tools -> global -> appearance -> Cobalt | is darkmode

##R Programming ->  1 Basic Building Blocks
### make onenote; table with functions. divide them up; below are lot of R basics or R managing or File Manipulation". Manage R code per project number
  ##Swirl specific
  # install_course ("Statistical Inference") ("Regression Models") ("R Programming")("Exploratory Data Analysis")
  # play() | put swirl on pause
  # nxt() | resume swirl

##R Programming ->  2 Workspace and Files
  # getwd() | shows current wd
  # setwd() | sets current wd 
    ##("testdir") or 
    ##("C:/Users/Maldron Prime/Documents/testdir") or
    ##(old.dir) if you set variable "old.dir" to contain folder path [here old.dir value contains "C:/Users/Maldron Prime/Documents"]
  # ls() | shows current values
  # dir() | show content current wd
  # ?dir | get info on dir function
  # ?':' | get info on an operator
  # dir.create("testdir") | create dir in current wd 
  # file.create("mytest.R") | create file in current wd
  # file.exists ("filename") | gives true/false if file exists
  # file.info ("filename) | gives general info on the file. add 
    # file.info ("filename)$mode | gives only info specified after $ (size, isdir, mode)
  # file.rename("filename", "newFileName") | rename file include extension in filename (eg .exe, .R)
  # file.remove ("filename") | remove the file
  # file.copy ("filename", "NameofCopy")
  # file.path allows to skip needing slashes for folder structures in code;also makes code cross-platform. example:
    #setwd(file.path("C:", "Users", "Maldron Prime", "Documents", "testdir")) | path needs to already exist! can also specify to a file "test.R"
    #dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
      # recursive: Should elements of the path other than the last be created? yes, in above examples as you want to make both folders, wit testdir3 inside of testdir2

##R Programming ->  3 Sequences of numbers
  #seq() | from,to,increment (by=xx), number of numbers to generate (length=30)
    #length can also be used to determine number of events in a sequence. eg x<-1:5 | length(x) will give 5
  #rep() |stand for replicate. eg repeat vector 0,1,2 4 times: rep(c(0,1,2), times = 4)
    # 'times = X' repeats vector x times. 'each = x' repeats each entity in the vector x times 

##R Programming ->  4 Vectors
  #make a list c(0, 8, 4, 0.55, pi)
  # two types of vectors
    #atomic vector | contains exactly 1 data type
    #list | may contain multiple data types
  # types of atomic vectors (logical, character, integer, complex)
    #logical | TRUE, FALSE, NA
  # create variable x<-c(0,1,2,3) OR x<-0:3. all smaller than 2 in variable y: y <- x<2. will give logical reponse (TRUE,TRUE,FALSE,FALSE)
    # '==' exact equality, '!='inequality. '|' at least 1 or both are true. '&' both are true
  # Combining vectors (Paste)
    #my_char <- c("My", "name", "is") this gives 3 separate words. 
    #Paste() | to now make it into 1 sentence: 'paste (my_char, collapse = " ")' 
    #join vectors together into 1 word: paste("Hello", "world!", sep = ",") will print "Hello,world!"
      #another example: paste(1:3, c("X", "Y", "Z"), sep = "") to generate: 1X 2Y 3Z
      ## confused as to how this works exactly...
    # combining 2 vectors of unequal length will recycle the shorter vector to accomodate the longer

##R Programming ->  5 Missing values
  #rnorm | take 1000 random draws from normal distribuation rnorm(1000)
  #sample | take a random sample of 10 from 1000-sample-NormalDistribution: sample(rnorm(1000), 10)
  #is.na | tells if elements in vector are NA is.na(my_data)
  #sum()| 
    ## FALSE in R is number 0. TRUE in R is number 1
  #NaN | not a number

##R Programming ->  6 Subsetting Vectors
  # [...] index vector | show subset of the vector x[1:10] = show first 10 elements of vector x. can use logical operators inside (eg ! == > &) and search for words using ""
  # 4 types of index vectors:
    ## logical vectors
        #x[is.na(x)] | gives a vector with all na's that are present in vector x
 !!!!!!!#x[!is.na(x)] | gives a vector with all elements that are not na present in vector x
    ## vectors of positive integers  
        #x[x > 0] | gives vector with all elements larger than 0. if NA's are present, those are shown as well! (use above to remove the NA's)
        #x[!is.na(x) & x > 0] | show all non-NA's in x & x>0
    ## vectors of negative integers   
       !#x[c(-2, -10)] or x[-c(2,10)] | show all elements from x EXCEPT element on location 2 and 10
    ## vectors of character strings
        #names(3No) <- c("foo", "bar", "norf") | have vector with 3 number (3No); give each of those a name (foo, bar, norf) 
        #identical(x,y) | are vectors x and y identical (true or false)
        #vect[c("foo", "bar")] | lookup names in a vector 'vect'

##R Programming -> 7 Matrices and Data frames
  # Matrices = single class of data, 
  # data.frame = diferent classes of data
  #dim() | gives dimension of object. 
    #dim(x)<-c(1,2) | SETS the dimension of x; meaning x now has 1 row and 2 columns
  #class(x) | shows what x is (eg a vector or a matrix etc)
  #x<-matrix(1:20, 4, 5) | make matrix with numbers 1-20, 4 rows 5 columns
  #cbind(x,y) | x=a,b,c y=matrix/data.frame of 3 rows 3 columns. cbind adds column x to matrix y. this does turn all numbers into characters as matrix only holds single class of data
  #data.frame(x,y) | where x is a vector, y is a matrix; x is added to y as a first column and the matrix y is now a data.frame (so it will hold both numbers and characters)
  #colnames() | set column names of a matrix/data.frame
    #colnames(data.frameX) <- ColumnNamesX

##R Programming -> 8 Logic
  #Boolean values | answers TRUE or FALSE
    #`+`, `-`, `*`, `/`, '==', '!==', '<', '<=', '>', '>=', '&'(AND), '&&', '|' (OR), '||', 'xor()', '%%'
      # '!' means 'not'. eg !TRUE (reads as 'not true') and !== (reads as 'not equal'), or !(5==7)
      # '&' (AND, evaluated ACROSS a vector) | TRUE & c(TRUE, FALSE, FALSE) gives 'FALSE, FALSE, FALSE' (first operand 'TRUE' is recycled 3x to fill the vector 'c')
      # '&&' (AND, evaluated only on the first member of the vector) | TRUE && c(TRUE, FALSE, FALSE) gives one 'TRUE' (left operand only evaluated against first member of vector)
        #(AND operators are always evaluated before OR operators)
          #5>8 || 6 !=8 && 4>3.9 : OR first, results in TRUE. AND second reads as FALSE || TRUE
      # %% | divide two numbers gives the Remainder 
        # eg 5/4 only whole number taken, rest is remainder (1)
        # eg 10/2 remainder 0 (10 fits exactly into 2. whearas 11/2 remainder 1 (2 fits 5times into 11 (2*5=10); 1 is remainder (11-10) ))
      #xor() | 'exclusive OR' xor(5 == 6, !FALSE) gives 'true' as only/exactly 1 argument is true ("= xor(FALSE,TRUE))
    # isTRUE | gives TRUE if following argument is TRUE
      #!isTRUE(4 < 3) | 4<3=false, looking for !isTRUE (false) so answer is TRUE
    # identical()
    # which () | returns all TRUE eg which(c(TRUE, FALSE, TRUE)) returns vector c(1, 3)
      # any() | returns TRUE is one ore more elements in logical vector is TRUE
      # all() | returns TRUE is every element in the logical vector is true

##R Programming -> 9 Functions
  # Arguments | the input to a function | passing an agrument = placing argument inside a function eg mean(c(2, 4, 5))
    #Sys.Date() | 2021-09-11
    #mean() | calculates average  
  # Functions | pieces or reusable code, contains arguments
      ## boring_function <- function(x) {
      ##   x
      ## }
        # this function simply returns whatever you input as x eg: boring_function('My first function!') will return: "My first function!"
          #confusing when to use "" and when to use ''. here '' is for text, but for all other version do not add '' 
          # eg:  my_mean (c(4, 5, 10))
  #  args() | see which arguments are present in a function 
    #eg function (num, divisor). run args(function) returns num, divisor