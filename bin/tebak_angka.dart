import 'dart:io';
import 'dart:math';

void main() {
  print('Selamat datang di Game Tebak Angka!');
  int angkaRahasia = Random().nextInt(100) + 1;
  bool menang = false;

  while (!menang) {
    stdout.write('Tebakan Anda: ');
    String? input = stdin.readLineSync();
    int tebakan = int.parse(input!);

    if (tebakan == angkaRahasia) {
      print('Selamat! Anda benar.');
      menang = true;
    } else if (tebakan < angkaRahasia) {
      print('Terlalu rendah!');
    } else {
      print('Terlalu tinggi!');
    }
  }
}