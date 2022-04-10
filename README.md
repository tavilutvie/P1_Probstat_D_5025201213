# P1_Probstat_D_5025201213

| NRP        | NAMA                       |
| ---------- | -------------------------- |
| 5025201213 | Eldenabih Tavirazin Lutvie |

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

### 1a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik) <br>
Fungsi dgeom dipakai untuk menghitung peluang distribusi geometrik.
```r
# a
x <- 3
p <- 0.2
dgeom(x, p)
```

### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ) <br>
Menggunakan fungsi mean() untuk menghitung mean dan rgeom untuk menghasilkan data random.
```r
# b
n = 10000
mean(rgeom(n, prob = p) == 3)
```

### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan? <br>
Hasil soal a berupa tetap, sementara hasil soal b berganti-ganti tetapi memiliki hasil yang tidak jauh berbeda.

### 1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama <br>
digunakan fungsi hist() untuk menampilkan histogram.
```r
# d
hist(rgeom(n, prob = p), xlab = "Data", ylab = "Frekuensi", main = 'Histogram Distribusi Geometrik, Peluang X = 3 Gagal Sebelum Sukses Pertama')
```
![image](https://user-images.githubusercontent.com/85897222/162623829-efb14e65-12a3-44a7-ab84-be1bb4a1a8f9.png)

### 1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik. <br>
Menghitung dengan rumus.
```r
# e
rataan <- 1/p
varian <- (1-p)/p^2
rataan
varian
```

## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

### 2a
Peluang terdapat 4 pasien yang sembuh. <br>
Fungsi dbinom dipakai untuk menghitung peluang distribusi binomial.
```r
# a
sembuh <- 4
dbinom(sembuh, n, prob = p)
```

### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut.
Menggunakan hist() untuk menampilkan histogram.
```r
# b 
kasus <- rbinom(sembuh, n, prob = p)
hist(kasus, xlab = "Pasien Sembuh", ylab = "Peluang",main = "Histogram Distribusi Binomial, Kasus Pasien Covid19")
```
![image](https://user-images.githubusercontent.com/85897222/162624062-be280d89-10aa-4628-80f6-1b57e62687a1.png)


### 2c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial. <br>
Menghitung dengan rumus.
```r
# c
rataan <- n * p
varian <- n * p * (1 - p)
rataan
varian
```

## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### 3a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok? <br>
Fungsi dpois dipakai untuk menghitung peluang distribusi poisson.
```r
# a
x <- 6
dpois(x, rata2)
```

### 3b
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365) <br>
Menggunakan hist() untuk menampilkan histogram dan rpois() untuk mengenerate data random.
```r
# b
n <- 365
kelahiran <- rpois(n, rata2)
hist(kelahiran, xlab = "Hari", ylab = "Peluang", main = 'Histogram Distribusi Poisson, Kelahiran 6 Bayi akan Lahir Selama
Setahun')
```
![image](https://user-images.githubusercontent.com/85897222/162624154-8e7d5f0a-f90f-407a-bbe6-508bdc9fdc91.png)


### 3c
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan <br>
Pada soal a didapatkan hasil tetap dan pada soal b didapatkan perhitungan selama 365 hari yang memiliki hasil beragam dan saling mendekati.


### 3d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
Menghitung dengan rumus.
```r
# d
lambda <- rata2
rataan <- lambda
varian <- lambda
rataan
varian
```

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4a
Fungsi Probabilitas dari Distribusi Chi-Square <br>
Fungsi dchisq dipakai untuk menghitung peluang distribusi chi-square.
```r
# a
dchisq(x, v)
```

### 4b
Histogram dari Distribusi Chi-Square dengan 100 data random. <br>
Menggunakan hist() untuk menampilkan histogram.
```r
# b
data <- 100
hist(rchisq(data, v))

```
![image](https://user-images.githubusercontent.com/85897222/162624333-7a1d1b60-a8e6-42b5-8406-0bbe9a409202.png)


### 4c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
Menghitung dengan rumus.
```r
# c
rataan <- v
varian <- 2 * v
rataan
varian
``` 

## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### 5a
Fungsi Probabilitas dari Distribusi Exponensial <br>
Fungsi dexp() dipakai untuk menghitung peluang distribusi exponential.
```r
# a
x_dexp <- seq(1, 10, by = 0.1)
dexp(x_dexp, rate = lambda)
```

### 5b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random <br>
Menggunakan hist() untuk menampilkan histogram dan rexp() untuk mengenerate data random.
```r
# b
set.seed(1)
hist(rexp(n = 10, rate = lambda))
set.seed(1)
hist(rexp(n = 100, rate = lambda))
set.seed(1)
hist(rexp(n = 1000, rate = lambda))
set.seed(1)
hist(rexp(n = 10000, rate = lambda))

```
![image](https://user-images.githubusercontent.com/85897222/162625019-09ece642-531c-4253-be6d-9bcc6757c8fb.png)
![image](https://user-images.githubusercontent.com/85897222/162625030-9ccae06c-e282-4698-97dc-249963e2ee04.png)
![image](https://user-images.githubusercontent.com/85897222/162625040-489540ca-8f60-47d2-a1ea-50f042c7c15a.png)
![image](https://user-images.githubusercontent.com/85897222/162625059-8b6304d7-01bb-4ab2-ac4b-c6a3b0025aa3.png)



### 5c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3 <br>
Menghitung dengan rumus.
```r
# c
rataan <- 1 / lambda
varian <- 1 / (lambda * lambda)
rataan
varian
```

## Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### 6a
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()). <br>
Untuk menetapkan nilai seed dapat digunakan fungsi set seed. Fungsi rnorm() digunakan untuk mengenerate data random. Fungsi mean() digunakan untuk menghitung rata-rata. Fungsi floor() digunakan untuk membulatkan ke bawah dan ceiling() untuk membulatkan ke atas. Z-score dihitung dengan rumus. Distribusi normal dihitung dengan menggunakan fungsi p(norm). Plot() digunakan untuk menampilkan grafik. Fungsi rnorm() digunakan untuk mengenerate data random.
```r
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
```
![image](https://user-images.githubusercontent.com/85897222/162624858-c2e916e3-1b30-45b7-bbd5-007dd4f1807b.png)


### 6b
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram  <br>
Menggunakan fungsi hist() untuk menampilkan histogram dan disertai breaks.
```r
# b
hist(rnorm(n, mean, sd),breaks = 50, main = "5025201213_Eldenabih Tavirazin Lutvie_Probstat_D_DNhistogram")
```
![image](https://user-images.githubusercontent.com/85897222/162624938-becb46c6-c8ee-433c-be74-f365db3160a6.png)


### 6c
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
Menghitung dengan rumus.
```r
# c
varian <- sd ** 2
varian
```
