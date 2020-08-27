import 'dart:async';

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class ClassExtrasGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    var buffer = StringBuffer();

    for (final _class in library.classes) {
      final name = _class.displayName;

      buffer.writeln('extension \$${name} on ${name} {');

      if (_class.fields.isNotEmpty) {
        // String details() => '[Order] id=$id, name=$name';
        buffer.write('String details() => ');

        final fieldWithValues = _class.fields
            .where((field) => field.displayName != 'hashCode')
            .map((field) {
          return '${field.displayName}=\$${field.displayName}'; // (id=$id, name=$name...)
        });
        buffer.write("'[${name}] ${fieldWithValues.join(', ')}';");

        // bool compare(Object other) => other is Order && id == other.id && name == other.name;
        final fieldWithComparisons = _class.fields
            .where((field) => field.displayName != 'hashCode')
            .map((field) =>
                '${field.displayName} == other.${field.displayName}');
        buffer.writeln(
            'bool compare(Object other) => other is ${name} && ${fieldWithComparisons.join('&&')};');

        // int calculateHash() => id.hashCode + name.hashCode + price.hashCode;
        final fieldsWithHashcode = _class.fields
            .where((field) => field.displayName != 'hashCode')
            .map((field) => '${field.displayName}.hashCode');
        buffer
            .writeln('int calculateHash() => ${fieldsWithHashcode.join('+')};');
      }

      buffer.writeln('}');
    }

    return buffer.toString();
  }
}
