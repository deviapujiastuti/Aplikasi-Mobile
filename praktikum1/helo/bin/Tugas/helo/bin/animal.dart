void main(List<String> arguments) {
Set<String> animals = {'Kucing', 'Anjing', 'Kelinci', 'Burung'};
print(animals.toString());

animals.add('Ikan');
print(animals.toString());
animals.remove(('Kelinci'));
print(animals.toString());
print(animals.length); //menampilkan panjang array
print(animals.contains('Anjing'));
print(animals.isEmpty);
print(animals.isNotEmpty);
}



