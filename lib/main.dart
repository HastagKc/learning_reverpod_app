import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_learning/view/count_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountPage(),
      // home: SimpleProvider(),
    );
  }
}

//! learning Provider in riverpod
//! step one create provider if class is not to create first

final nameProvider = Provider((ref) => 'Kshittiz');

class SimpleProvider extends ConsumerWidget {
  const SimpleProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch provider

    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example of Provider in riverpod'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text('$name'),
          ),
        ),
      ),
    );
  }
}
