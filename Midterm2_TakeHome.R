#################
# Midterm 2 - Take Home
# Krissy McHugh
##

# Consider building a sequence of numbers starting with a positive integer n. If the term is even, 
# then the next term is one half of that previous term. If the previous term is odd, then the next term 
# is 3 times the previous term plus 1.  Continue building the sequence following this pattern and end the 
# sequence when you reach one.


library(tidyverse)

# First, I will start by determining if a number is even or odd.
even.number <- function(x) {
  if (x %% 2 == 0) TRUE
  else FALSE
}

even.number(2)
even.number(5)

# Next I will determine the next number in the sequence
next.number <- function(n) {
  if (even.number(n)) n/2
  else 3 * n + 1
}

next.number(6)
next.number(10)

# Now I will generate the actual sequence for numbers between 1 and 10000, and display the length of the 
# sequence.
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

# Testing different values.
get_sequence(5)
get_sequence(13)
get_sequence(20)
get_sequence(1000)

# Now I have generated the sequence and the length of the sequence. However, I will not be able to generate
# summary statistics or a histogram of the lengths unless I make the sequence length a vector and make a
# counter, as opposed to the last code chunk where the length was not determined using a counter.
sequence.length <- vector(length=10000)
sequence.length[1] <- 0
for (n in 2:10000) {
  x <- n
  count <- 0 
  while 
  (x != 1 & x >= n) {
    if (x %% 2 == 0) {
      x <- x / 2
      count <- count + 1
    }
    else {
      x <- (3 * x + 1) / 2
      count <- count + 2
    } 
  }
  count <- count + sequence.length[x]
  sequence.length[n] <- count
}

hist(sequence.length)
summary(sequence.length) 
# Mean = 85
# Median = 73
# Max = 261
#####
# The histogram is right-skewed. Also, the median is 73 but the max is 261, which means the max is over 3 times
# the median. From 1 to 10,000, the sequence lengths are generally short.










