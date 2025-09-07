void main(List<String> arguments) {
  //Map
  Map<String, String> productPrices = {
    'Laptop' : '10.000.000',
    'Mouse' : '200.000',
    'Keyboard' : '500.000',
    'Monitor' : '2.000.000'
  };
  print(productPrices.toString());
  //manipulasi map
  productPrices['Printer'] = '1.500.000' ;
  print(productPrices.toString());
  productPrices.remove('Mouse');
  print(productPrices.toString());
  productPrices['Laptop'] = '9.500.000';
  print(productPrices.toString());
  print(productPrices.length);
  print(productPrices.containsKey('Keyboard'));
  print(productPrices.containsValue('2.000.000'));
  print(productPrices.keys);
  print(productPrices.values);
  print(productPrices.isEmpty);
  print(productPrices.isNotEmpty);
}