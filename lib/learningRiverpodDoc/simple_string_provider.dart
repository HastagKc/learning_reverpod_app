import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// creating an string provider
final nameProvider = Provider((ref) => 'Kshittiz');

class SimpleStringProvider extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 2nd if variable watch if function then read
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$name'),
          ],
        ),
      ),
    );
  }
}
