import 'dart:io';
import 'dart:math';

void main() {
  print('Selamat datang di Game Tebak Angka!');
  bool mainLagi = true;

  while (mainLagi) {
    int angkaRahasia = Random().nextInt(100) + 1; // Angka acak 1-100
    int percobaan = 0;
    int maxPercobaan = 10;
    bool menang = false;

    print('Saya telah memilih angka antara 1-100. Tebaklah! (Max $maxPercobaan percobaan)');

    while (percobaan < maxPercobaan && !menang) {
      stdout.write('Tebakan Anda: ');
      String? input = stdin.readLineSync();
      
      try {
        int tebakan = int.parse(input!);
        percobaan++;

        if (tebakan == angkaRahasia) {
          print('Selamat! Anda benar setelah $percobaan percobaan.');
          menang = true;
        } else if (tebakan < angkaRahasia) {
          print('Terlalu rendah! Sisa percobaan: ${maxPercobaan - percobaan}');
        } else {
          print('Terlalu tinggi! Sisa percobaan: ${maxPercobaan - percobaan}');
        }
      } catch (e) {
        print('Input tidak valid. Masukkan angka!');
      }
    }

    if (!menang) {
      print('Maaf, Anda kalah. Angka rahasia adalah $angkaRahasia.');
    }

    stdout.write('Main lagi? (y/n): ');
    String? jawab = stdin.readLineSync()?.toLowerCase();
    mainLagi = (jawab == 'y');
  }

  print('Terima kasih telah bermain!');
}