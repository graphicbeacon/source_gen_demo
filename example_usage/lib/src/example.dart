const myStr = 'Lorem';
final myInt = 12;
final myDouble = 2.5;
var myBool = false;
final myList = [2];
final myMap = {'a': 'b'};
final mySet = {'a', 'b'}; // Set()..add('a')..add('b')
final mySymbol = #g; // Symbol('g')

void myFunc = () {
  print('Hello world!!!');
};

class Order {
  final int id;
  final String name;

  const Order(
    this.id,
    this.name,
  );

  @override
  String toString() => '[Order] id=$id, name=$name';

  @override
  bool operator ==(Object other) =>
      other is Order && id == other.id && name == other.name;

  @override
  int get hashCode => id.hashCode + name.hashCode;
}
