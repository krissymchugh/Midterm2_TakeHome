#################
# Midterm 2 - Take Home
# Krissy McHugh
##

# Consider building a sequence of numbers starting with a positive integer n. If the term is even, 
# then the next term is one half of that previous term. If the previous term is odd, then the next term 
# is 3 times the previous term plus 1.  Continue building the sequence following this pattern and end the 
# sequence when you reach one.



new_number <- function(n) {
  if (n==1) {
    NULL
  }
  else if (n %% 0) {
    n/2
  }
   else {
     3*n+1
   }
}


sequence <- function(n)  {
    result <- n
    while (n != 1) {
    n <- new_number(n)
    result <- c(result, n)
  }
  result
}


sequence(2)
sequence(10)


even.number <- function(x) {
  if (x %% 2 == 0) TRUE
  else FALSE
}


even.number(2)
even.number(5)















