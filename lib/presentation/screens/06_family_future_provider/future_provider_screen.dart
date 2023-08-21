import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/future_providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Future Provider'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (data) => Text(data),
          error: (error, stackTrace) => Text('$error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn-1',
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              if (pokemonId <= 1) return;
              pokemonId--;
              setState(() {});
              // ref.read(pokemonIdProvider.notifier).previewPokemon();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: const Icon(Icons.plus_one_outlined),
            onPressed: () {
              pokemonId++;
              setState(() {});
              // ref.read(pokemonIdProvider.notifier).nextPokemon();
            },
          ),
        ],
      ),
    );
  }
}
