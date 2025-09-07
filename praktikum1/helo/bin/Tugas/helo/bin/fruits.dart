void main(List<String> arguments) {
  //List
  List<String> fruits = ['Apel', 'Alpukat', 'Nanas', 'Mangga', 'Pisang'] ;
  print(fruits.toString());

  //manipulasi list
  fruits.add('Jeruk'); //untuk menambahkan
  print(fruits.toString());

  fruits.remove('Alpukat'); //untuk menghapus
  print(fruits.toString());

  fruits[0] = 'Semangka' ; //untuk mengganti index ke 0
  print(fruits.toString());

  fruits.sort ; //mengurutkan 
  print(fruits.toString());

  fruits.shuffle(); //mengacak
  print((fruits.toString()));

  print(fruits.length); //menampilkan panjang array
  print(fruits.first); //menampilkan yang pertama
  print(fruits.last); //menampilkan yang terakhir
  print(fruits.contains('Mangga'));
  print(fruits.indexOf('Pisang'));
  print(fruits.isEmpty);
  print(fruits.isNotEmpty);
}