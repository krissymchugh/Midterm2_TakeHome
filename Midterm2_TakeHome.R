#################
# Midterm 2 - Take Home
# Krissy McHugh
##

# Consider building a sequence of numbers starting with a positive integer n. If the term is even, 
# then the next term is one half of that previous term. If the previous term is odd, then the next term 
# is 3 times the previous term plus 1.  Continue building the sequence following this pattern and end the 
# sequence when you reach one.


# First, I created a function that will determine whether or not the number is even.
is.even <- function(x) {
  if (x %% 2 == 0) TRUE
  else FALSE
}

is.even(4)
is.even(5)


sequence <- function(n) {
    if (is.even(n)) 
      n/2
    else 
      3*n+1
  }

sequence(20)
sequence(2)
sequence(5)










