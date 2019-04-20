x <- c( 1.8, 2.1, 2.5, 3.1, 3.1, 3.5, 3.8, 3.9)
y <- x * 3 + 2

df <- data.frame (x, y)

#
# The things on the right side of the ~ are the explanotary variables
# The things on the left  side of the ~ are the response   variables
# The result is a formula
#
f <- df$y ~ df$x

typeof(f) # language
class (f) # formula
mode  (f) # call
