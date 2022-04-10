# 3
rata2 <- 4.5

# a
x <- 6
dpois(x, rata2)

# b
n <- 365
kelahiran <- rpois(n, rata2)
hist(kelahiran, xlab = "Hari", ylab = "Peluang", main = 'Histogram Distribusi Poisson, Kelahiran 6 Bayi akan Lahir Selama
Setahun')

# c
# Pada soal a didapatkan hasil tetap dan pada soal b didapatkan perhitungan selama 365 hari yang memiliki hasil beragam dan saling mendekati.

# d
lambda <- rata2
rataan <- lambda
varian <- lambda
rataan
varian
