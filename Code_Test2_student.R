# get the code for the packages TSA and ggplot2
# TSA is the time series package used in the textbook
# ggplot2 is a graphic package creating high quality graphics
# reshape manipulate data
install.packages("ggplot2")
install.packages("TSA")
install.packages("reshape")

# load the packages ggplot2 and TSA to have access to the built 
# in functions
library(TSA)
library(ggplot2)

# Generate 600 random numbers from a zero mean, standard deviation 2 normal 
# distribution. You will throw away the first 100 values to avoid 
# startup problems
set.seed(12345)
w <- rnorm(600, 0, 2)

# Generate an AR(2) process with coefficient phi_1 = .25 and phi_2 = -1/3
# using the random number indexed 101-600
x <- filter(w, filter=c(1/4, -1/3), method = "recursive")[-(1:100)]

# Generate the series v
v <- filter(x, rep(1/4,4), sides = 1)



