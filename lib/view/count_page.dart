import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/count_provider.dart';

class CountPage extends ConsumerWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //passing an instance of the countProvider
    final num = ref.watch(countProvider).num;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${num}',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(countProvider).increment();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(countProvider).decrement();
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
