import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

// Provider para manejar el contador [int].
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}

// Provider DarkMode [boolean].
// Default = false
// true = light | false = dark

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  // cambiar el valor del provider
  void toggleDarkMode() {
    state = !state;
  }
}

// Provider UserName [String]
// Defaul = 'Jaime Téllez'

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => 'Jaime Téllez';

  void changeName(String name) {
    state = name;
  }
}
