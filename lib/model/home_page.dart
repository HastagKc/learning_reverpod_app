import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/count_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return Row(
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
                width: 20.0,
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.read(countProvider).decrement();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          );
        },
      ),
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final number = ref.watch(countProvider).num;
              final name = ref.watch(nameProvider);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello ${name}',
                    style: const TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${number}',
                    style: const TextStyle(
                      fontSize: 55.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
