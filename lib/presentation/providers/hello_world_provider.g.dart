// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_world_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloWorldHash() => r'ea721097ce01b1f980f0840bc365b8a66e7468bb';

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
///
/// Copied from [helloWorld].
@ProviderFor(helloWorld)
final helloWorldProvider = AutoDisposeProvider<String>.internal(
  helloWorld,
  name: r'helloWorldProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloWorldHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
