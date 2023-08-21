import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'stream_provider.g.dart';

// el async* se usa cuando es un Stream
@Riverpod(keepAlive: true)
Stream<List<String>> usersInChat(UsersInChatRef ref) async* {
  // cuando se trabaja con un Stream se usa yield en vez de un return
  // yield se encarga de emitir los valores
  final names = <String>[];

  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
}
