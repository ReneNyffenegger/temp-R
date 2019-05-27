library(ggplot2)

ggplot(mtcars, aes(mpg, wt)) + geom_point(aes(colour = factor(cyl)));
ggplot(mtcars, aes(mpg, wt)) + geom_point(aes(colour =        cyl ));

