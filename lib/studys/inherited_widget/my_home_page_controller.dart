import 'package:flutter/material.dart';

class MyHomePageController extends InheritedNotifier<ValueNotifier<int>> {
  MyHomePageController({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
          notifier: ValueNotifier(0),
        );

  int get value => notifier!.value;

  increment() {
    notifier!.value++;
  }
}
