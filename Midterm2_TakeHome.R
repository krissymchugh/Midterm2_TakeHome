#################
# Midterm 2 - Take Home
# Krissy McHugh
##

# Consider building a sequence of numbers starting with a positive integer n. If the term is even, 
# then the next term is one half of that previous term. If the previous term is odd, then the next term 
# is 3 times the previous term plus 1.  Continue building the sequence following this pattern and end the 
# sequence when you reach one.


library(tidyverse)

even.number <- function(x) {
  if (x %% 2 == 0) TRUE
  else FALSE
}

even.number(2)
even.number(5)

next.number <- function(n) {
  if (even.number(n)) n/2
  else 3 * n + 1
}

next.number(6)
next.number(10)

get_sequence <- function(input)
  for (i in 1:10000)
{

  result <- input
  while(input != 1)
  {

    input <- next.number(input)
    result <- c(result, input)
    
  }
  
  return(list(result=result, seqlength=length(result)))
  }

get_sequence(5)
get_sequence(13)
get_sequence(20)
get_sequence(1000)


nonvec_collatz <- function(ints){
  collatz <- function(n) {
    # n is a single integer
    # recusively applies the Collatz conjecture to n
    # returns the number of iterations it takes to reach 1
    counter <- 0
    while (n != 1){
      counter <- counter + 1
      n <- ifelse(n %% 2  == 0, n / 2, 3*n + 1)
    }
    counter
  }
  # we use sapply to apply the above function to a vector of integers
  sapply(ints, collatz)
}
set.seed(20)
nonvec_collatz(20)
collatz(50)




