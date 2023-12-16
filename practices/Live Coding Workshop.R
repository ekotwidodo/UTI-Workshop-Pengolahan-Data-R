# --- SESI LIVE CODING ---

# --- 1. BASICS R ---

mahasiswa <- c("Nyoman Gita", "Putri", "Budi", "Ajeng")
mahasiswa

ukuran_sepatu <- c(34, 37, 44, 41, 39, 43, 38)
ukuran_sepatu

# Memanggil nama mahasiswa "Putri"
mahasiswa[2]
mahasiswa[4]
mahasiswa[c(2,3,4)]

# Studi Kasus
tinggi_badan <- c(175, 178, 190, 180, 160, 155, 157, 167, 164, 153, 
                  156, 167, 170, 169, 170, 167, 170, 181, 183, 167,
                  167, 178, 177, 166, 155, 167, 187, 159, 161, 160,
                  189, 177, 171, 170, 167, 165, 168, 170, 178, 181,
                  162, 163, 163, 171, 173, 163, 164, 161, 160, 172,
                  172, 173, 171, 170, 161, 162, 162, 164, 181, 182,
                  172, 173, 172, 170, 158, 159, 173, 171, 151, 158,
                  177, 181, 151, 159, 178, 180, 182, 174, 182, 180)

banyak_data <- length(tinggi_badan)
banyak_data

hitung_rata2_tinggi_badan <- function(x) {
  # Diisi gimana caranya menghitung rata-rata, yaitu secara berulang tambahkan semua data tinggi badan
  # Dibagi dengan banyak data
  # Kembalikan hasilnya
}

# --- 3. UKURAN STATISTIK DI R ---

# Menggunakan ukuran pemusatan
rata_rata_tinggi_badan <- mean(tinggi_badan)
rata_rata_tinggi_badan

median_tinggi_badan <- median(tinggi_badan)
median_tinggi_badan

hitung_modus <- function(x) {
  nilai_unik <- unique(x)
  nilai_unik[which.max(tabulate(match(x, nilai_unik)))]
}

modus_tinggi_badan <- hitung_modus(tinggi_badan)
modus_tinggi_badan

berat_badan <- c(67, 78, 56, 45, 56)
modus_berat_badan <- hitung_modus(berat_badan)
modus_berat_badan

# --- 2. VISUALISASI DATA DI R ---
plot(tinggi_badan)
plot(berat_badan)

x <- c(1:10)
y <- x ^ 2

par(mfrow=c(2,4)) # canvas isinya ada 2 baris, 4 kolom

type <- c("p", "l", "b", "o", "h", "s", "n")
for (i in type) {
  plot(x, y, type = i, main = paste("type=", i))
}

hist(tinggi_badan)

hist(berat_badan)

plot(x, y, type = "l", main = "contoh line")

# --- 4. NORMALITAS, KORELASI, DAN REGRESI DI R ---

# --- 5. HIPOTESIS DI R