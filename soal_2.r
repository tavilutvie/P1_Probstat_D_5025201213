# 2
n <- 20
p <- 0.2

# a
sembuh <- 4
dbinom(sembuh, n, prob = p)

# b 
kasus <- rbinom(sembuh, n, prob = p)
hist(kasus, xlab = "Pasien Sembuh", ylab = "Peluang",main = "Histogram Distribusi Binomial, Kasus Pasien Covid19")

# c
rataan <- n * p
varian <- n * p * (1 - p)
rataan
varian