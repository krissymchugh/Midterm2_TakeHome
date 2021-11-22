#################
# Midterm 2 - Take Home
# Krissy McHugh
##

# Consider building a sequence of numbers starting with a positive integer n. If the term is even, 
# then the next term is one half of that previous term. If the previous term is odd, then the next term 
# is 3 times the previous term plus 1.  Continue building the sequence following this pattern and end the 
# sequence when you reach one.




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
{
  
  result <- input
  while(input != 1)
  {
    input <- next.number(input)
    result <- c(result, input)
    
  }
  
  return(result)
}
get_sequence(6)
get_sequence








