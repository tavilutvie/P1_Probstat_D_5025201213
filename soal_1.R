# 1

# a
x <- 3
p <- 0.2
dgeom(x, p)

# b
n = 10000
mean(rgeom(n, prob = p) == 3)

# c
#Hasil soal a berupa tetap, sementara hasil soal b berganti-ganti tetapi memiliki hasil yang tidak jauh berbeda.

# d
hist(rgeom(n, prob = p), xlab = "Data", ylab = "Frekuensi", main = 'Histogram Distribusi Geometrik, Peluang X = 3 Gagal Sebelum Sukses Pertama')

# e
rataan <- 1/p
varian <- (1-p)/p^2
rataan
varian
