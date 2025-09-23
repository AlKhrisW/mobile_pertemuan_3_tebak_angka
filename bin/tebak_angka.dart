import 'dart:io';
import 'dart:math';

void main() {
  print('Selamat datang di Game Tebak Angka!');
  int angkaRahasia = Random().nextInt(100) + 1;
  int percobaan = 0;
  int maxPercobaan = 10;
  bool menang = false;

  while (percobaan < maxPercobaan && !menang) {
    stdout.write('Tebakan Anda: ');
    String? input = stdin.readLineSync();
    int tebakan = int.parse(input!);
    percobaan++;

    if (tebakan == angkaRahasia) {
      print('Selamat! Anda benar setelah $percobaan percobaan.');
      menang = true;
    } else if (tebakan < angkaRahasia) {
      print('Terlalu rendah! Sisa: ${maxPercobaan - percobaan}');
    } else {
      print('Terlalu tinggi! Sisa: ${maxPercobaan - percobaan}');
    }
  }

  if (!menang) {
    print('Kalah! Angka: $angkaRahasia.');
  }
}