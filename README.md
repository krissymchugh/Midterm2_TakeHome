# Midterm_TakeHome
Throughout my code, I incorporated dynamic programming. Dynamic programming is essentially solving a problem through breaking it down into solving smaller parts of the problem recursively. My first 2 code chunks were relatively simple and not dynamic. However, my 'sequence.length' code chunk is dynamic- it has overlapping problems inside of it- solving n/2 and 3*n+1, and by having the goal of reaching 1 in the sequence and continuing to do so until that happens, it has optimal substructure. Therefore, my code recursively solved the sub-problems to find the solution to the sequence. 