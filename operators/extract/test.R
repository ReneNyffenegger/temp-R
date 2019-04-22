# vec <- setNames(c('one', 'two', 'three', 'four', 'five'), c('A', 'B', 'C', 'D', 'E'))
vec <- c('one', 'two', 'three', 'four', 'five')

vec[4]
# [1] "four"

vec[c(4, 2)]
# [1] "four" "two" 

#
# Same thing. Numbers are rounded down.
#
vec[c(4.8, 2.1)]
# [1] "four" "two" 

vec[c(TRUE, FALSE)]
# [1] "one"   "three" "five" 

#
# Get an element, skip one, get another element.
# repeat until end.
#
vec[c(TRUE, FALSE, TRUE)]
# [1] "one"   "three" "four" 

vec[c(F, T, F, T, F)]
# [1] "two"  "four"

#
# grep returns a vector of integers:
#
grep('e$', vec)
# [1] 1 3 5

vec[grep('e$', vec)]
# [1] "one"   "three" "five" 

#
# nchar returns a vector of logicals
#
nchar(vec) > 3
# [1] FALSE FALSE  TRUE  TRUE  TRUE

vec[nchar(vec) > 3]
# [1] "three" "four"  "five" 
