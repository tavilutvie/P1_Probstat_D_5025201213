# 6
n <- 100
mean <- 50
sd <- 8

# a
set.seed(100)
rata2 <- mean(rnorm(n, mean, sd))
x1 <- floor(rata2)
z1 <- (x1 - mean) / sd
x2 <- ceiling(rata2)
z2 <- (x2 - mean) / sd
distribusi_normal = pnorm(x2, mean, sd, lower.tail = TRUE) - pnorm(x1, mean, sd, lower.tail = TRUE)
distribusi_normal
plot(rnorm(n, mean, sd))

# b
hist(rnorm(n, mean, sd),breaks = 50, main = "5025201213_Eldenabih Tavirazin Lutvie_Probstat_D_DNhistogram")

# c
varian <- sd ** 2
varian