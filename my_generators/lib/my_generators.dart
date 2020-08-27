import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/info_generator.dart';
import 'src/class_extras_generator.dart';
import 'src/serialize_generator.dart';

Builder infoGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([InfoGenerator()], 'info');

Builder classExtrasGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([ClassExtrasGenerator()], 'fields');

Builder serializeGeneratorBuilder(BuilderOptions options) =>
    SharedPartBuilder([SerializeGenerator()], 'serialize');
