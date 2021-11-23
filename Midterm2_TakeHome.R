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
  hist(get_sequence)
  }

get_sequence(5)
get_sequence(13)
get_sequence(20)
get_sequence(1000)


sequence.length <- vector(length=10000)
sequence.length[1] <- 0
for (n in 1:10000) {
  x <- n
  count <- 0 
  while (x != 1 & x >= n) {
    if (x %% 2 == 0) {
      x <- x / 2
      count <- count + 1
    }
    else {
      x <- (3 * x + 1) / 2
      count <- count + 2
    } 
  }
  count <- count + collatz.length[x]
  sequence.length[n] <- count
}


hist(sequence.length)
summary(sequence.length)

