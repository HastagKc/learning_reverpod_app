import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

// creating an instance
final nameProvider = Provider((ref) => 'Kshittiz');

final countProvider = ChangeNotifierProvider((ref) => CountProvider());

// creating provider class
class CountProvider extends ChangeNotifier {
  int num = 0;

  void increment() {
    num++;
    notifyListeners();
  }

  void decrement() {
    num--;
    notifyListeners();
  }
}
