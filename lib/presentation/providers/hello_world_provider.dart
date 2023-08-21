import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_world_provider.g.dart';

/// Se debe agregar la anotación [@riverpod] para que quede como global
/// el nombre del Ref recibido por parámetro, siempre debe ser el nombre
/// de la función + Ref (HelloWordRef), que el riverpod_generator nos da
/// este debe importarse utilizando
///
/// ```dart
/// part 'hello_world_provider.g.dart';
/// ````
/// son archivos autogenerados, como tenemos corriendo el watch, al guardar
/// se realiza la creación del archivo [hello_world_provider.g.dart] con lo
/// cual desaparece los errores.
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello World';
}
