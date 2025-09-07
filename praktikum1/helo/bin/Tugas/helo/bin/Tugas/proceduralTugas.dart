import 'dart:io';
import 'dart:math';

// Fungsi Luas Bangun Datar
double luasPersegi(double sisi) => sisi * sisi;
double luasPersegiPanjang(double p, double l) => p * l;
double luasSegitiga(double alas, double tinggi) => 0.5 * alas * tinggi;

// Fungsi Volume Bangun Ruang
double volumeKubus(double sisi) => sisi * sisi * sisi;
double volumeBalok(double p, double l, double t) => p * l * t;
double volumeBola(double r) => (4 / 3) * pi * pow(r, 3);

void main() {
  print("=== Program Procedural: Kalkulator Bangun ===");
  print("1. Hitung Bangun Datar");
  print("2. Hitung Bangun Ruang");
  stdout.write("Pilih (1/2): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  if (pilihan == 1) {
    print("\n-- Bangun Datar --");
    print("1. Persegi");
    print("2. Persegi Panjang");
    print("3. Segitiga");
    stdout.write("Pilih (1/2/3): ");
    int pilihDatar = int.parse(stdin.readLineSync()!);

    if (pilihDatar == 1) {
      stdout.write("Masukkan sisi: ");
      double s = double.parse(stdin.readLineSync()!);
      print("Luas Persegi = ${luasPersegi(s)}");
    } else if (pilihDatar == 2) {
      stdout.write("Masukkan panjang: ");
      double p = double.parse(stdin.readLineSync()!);
      stdout.write("Masukkan lebar: ");
      double l = double.parse(stdin.readLineSync()!);
      print("Luas Persegi Panjang = ${luasPersegiPanjang(p, l)}");
    } else if (pilihDatar == 3) {
      stdout.write("Masukkan alas: ");
      double a = double.parse(stdin.readLineSync()!);
      stdout.write("Masukkan tinggi: ");
      double t = double.parse(stdin.readLineSync()!);
      print("Luas Segitiga = ${luasSegitiga(a, t)}");
    }
  } else if (pilihan == 2) {
    print("\n-- Bangun Ruang --");
    print("1. Kubus");
    print("2. Balok");
    print("3. Bola");
    stdout.write("Pilih (1/2/3): ");
    int pilihRuang = int.parse(stdin.readLineSync()!);

    if (pilihRuang == 1) {
      stdout.write("Masukkan sisi: ");
      double s = double.parse(stdin.readLineSync()!);
      print("Volume Kubus = ${volumeKubus(s)}");
    } else if (pilihRuang == 2) {
      stdout.write("Masukkan panjang: ");
      double p = double.parse(stdin.readLineSync()!);
      stdout.write("Masukkan lebar: ");
      double l = double.parse(stdin.readLineSync()!);
      stdout.write("Masukkan tinggi: ");
      double t = double.parse(stdin.readLineSync()!);
      print("Volume Balok = ${volumeBalok(p, l, t)}");
    } else if (pilihRuang == 3) {
      stdout.write("Masukkan jari-jari: ");
      double r = double.parse(stdin.readLineSync()!);
      print("Volume Bola = ${volumeBola(r)}");
    }
  } else {
    print("Pilihan tidak valid!");
  }
}