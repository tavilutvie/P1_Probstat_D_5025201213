# 5
lambda <- 3

# a
x_dexp <- seq(1, 10, by = 0.1)
dexp(x_dexp, rate = lambda)

# b
set.seed(1)
hist(rexp(n = 10, rate = lambda))
set.seed(1)
hist(rexp(n = 100, rate = lambda))
set.seed(1)
hist(rexp(n = 1000, rate = lambda))
set.seed(1)
hist(rexp(n = 10000, rate = lambda))

# c
rataan <- 1 / lambda
varian <- 1 / (lambda * lambda)
rataan
varian