// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// ClassExtrasGenerator
// **************************************************************************

extension $Order on Order {
  String details() => '[Order] id=$id, name=$name, price=$price';
  bool compare(Object other) =>
      other is Order &&
      id == other.id &&
      name == other.name &&
      price == other.price;
  int calculateHash() => id.hashCode + name.hashCode + price.hashCode;
}

// **************************************************************************
// InfoGenerator
// **************************************************************************

// myStr - top level variable - String myStr
// myInt - top level variable - int myInt
// myDouble - top level variable - double myDouble
// myBool - top level variable - bool myBool
// myList - top level variable - List<int> myList
// myMap - top level variable - Map<String, String> myMap
// mySet - top level variable - Set<String> mySet
// mySymbol - top level variable - Symbol mySymbol
// myFunc - top level variable - void myFunc

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    json['id'] as int,
    json['name'] as String,
    json['price'] as String,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };

// **************************************************************************
// SerializeGenerator
// **************************************************************************

// false
extension $OrderSerializer on Order {
  static Order fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
