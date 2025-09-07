
let inputString = prompt("Masukkan bilangan bulat (minimal 0):");

let bilanganBulat = parseInt(inputString);

// Memeriksa apakah input valid
// isNaN() akan true jika input bukan angka
if (isNaN(bilanganBulat) || bilanganBulat < 0) {
    // Menampilkan pesan kesalahan jika input tidak valid
    alert("Kesalahan: Input tidak valid. Harap masukkan bilangan bulat non-negatif.");
} else {
    // Mengonversi bilangan ke biner menggunakan metode toString(2)
    let bilanganBiner = bilanganBulat.toString(2);
    
    // Menampilkan hasil menggunakan alert
    alert(`Angka biner dari ${bilanganBulat} adalah: ${bilanganBiner}`);

    // Anda juga bisa menampilkannya di console
    console.log(`Angka biner dari ${bilanganBulat} adalah: ${bilanganBiner}`);
}