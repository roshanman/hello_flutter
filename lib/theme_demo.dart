import 'package:flutter/material.dart';
import 'base_demo.dart';

final themeNotifier = ValueNotifier<ThemeMode>(ThemeMode.light);

class ThemeDemo extends BaseDemo {
  const ThemeDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return const Center(
      child: Text("This is theme demo page"),
    );
  }

  @override
  Widget? floatActionButtonIcon({required BuildContext context}) {
    return const Text("D/L");
  }

  @override
  void floatingActionButtonAction({required BuildContext context}) {
    _toggleThemeMode();
  }

  void _toggleThemeMode() {
    if (themeNotifier.value == ThemeMode.dark) {
      themeNotifier.value = ThemeMode.light;
    } else {
      themeNotifier.value = ThemeMode.dark;
    }
  }
}
