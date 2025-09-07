void main() {
  print('Fibonacci sampai F(7): ${fibonacciSequence(7)}'); // [0,1,1,2,3,5,8,13]
  print('5! = ${factorial(5)}'); // 120
  print('0! = ${factorial(0)}'); // 1
  print('13 dalam biner = ${toBinary(13)}'); // 1101
}

/// func baris fibo sampai indeks n (mengembalikan List<int>)
List<int> fibonacciSequence(int n) {
  if (n < 0) {
    print('Error: n harus >= 0');
    return []; //return list kosong if input salah
  }

  List<int> seq = [];
  seq.add(0); // F(0)

  if (n == 0) return seq;

  seq.add(1); //F(1)

  for (int i = 2; i <= n; i++) {
    int next = seq[i - 1] + seq[i - 2];
    seq.add(next);
  }

  return seq;
}

// faktorial sederhana (mengembalikan int)
int factorial(int n) {
  if (n < 0) {
    print('Error: n harus >= 0');
    return -1; // tanda error sederhana
  }

  int result = 1;
  for (int i = 1; i <= n; i++) {
    result = result * i;
  }
  return result;
}

//konversi ke biner (return String)
String toBinary(int n) {
  if (n < 0) {
    print('Error: n harus >= 0');
    return ''; //string kosong sebagai tanda error
  }
  if (n == 0) return '0';

  String s = '';
  int num = n;
  while (num > 0) {
    int bit = num % 2;
    // tambahkan digit di depan (karena kita mendapatkan bit dari LSB ke MSB)
    s = bit.toString() + s;
    num = num ~/ 2; //pembagian integer
  }
  return s;
}
