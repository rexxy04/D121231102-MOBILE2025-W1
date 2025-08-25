while True:
    try:
        bilangan_bulat = int(input("input bilangan bulat (minimal 0): "))

        if bilangan_bulat >= 0:
            bilangan_biner = bin(bilangan_bulat)[2:]

            print(f"Angka biner dari {bilangan_bulat} adalah: {bilangan_biner}")
            break
        else:
            print("Kesalahan: Harap masukkan bilangan bulat yang lebih besar atau sama dengan 0.")
    except VEror:
        print("Kesalahan: Input yang Anda masukkan bukan bilangan bulat. Silakan coba lagi.")
