import 'package:example_usage/example_usage.dart';

void main(List<String> arguments) {
  final order = Order(1, 'My order', '23.45');
  print(order);

  final order2 = Order(2, 'Second order', '13.23');
  final order2Copy = Order(2, 'Second order', '13.23');

  print(order2 == order2Copy);

  print(order2Copy.toJson());
  print($OrderSerializer(order2Copy).toJson());

  final order3 = $OrderSerializer.fromJson({
    'id': 3,
    'name': 'Third order',
    'price': '23.34',
  });
  print(order3.toJson());
}
