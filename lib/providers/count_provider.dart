import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final countProvider = ChangeNotifierProvider((ref) => CountProvider());

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
