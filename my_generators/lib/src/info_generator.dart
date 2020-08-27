import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class InfoGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    var buffer = StringBuffer();

    // library.allElements.forEach((element) {
    //   buffer.writeln(
    //       '// ${element.displayName} - ${element.source.fullName} - ${element.declaration}');
    // });
    library.allElements.whereType<TopLevelVariableElement>().forEach((element) {
      buffer.writeln(
          '// ${element.name} - ${element.kind.displayName} - ${element.declaration}');
    });

    return buffer.toString();
  }
}
