import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_learning/providers/count_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final countNum = ref.watch(countProvider).num;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$countNum',
                    style: const TextStyle(
                      fontSize: 42.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          ref.read(countProvider).increment();
                        },
                        child: Text(
                          'Plus',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          ref.read(countProvider).decrement();
                        },
                        child: Text(
                          'Minus',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
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
