#
#  Plot a function
#

curve( cos(x)^x, from =  0 , to = 2, main = "Quadratic function", ylab = "f(x)=cos(x)^x")

#
#  Add another plot to graph:
#
curve( cos(x)  , from =  0 , add = TRUE, col = 'red')
