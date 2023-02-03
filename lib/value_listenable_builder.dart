import 'base_demo.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderWidgetDemo extends BaseDemo {
  ValueListenableBuilderWidgetDemo({Key? key, required String title})
      : super(key: key, title: title);

  final countNotifier = ValueNotifier<int>(0);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: ValueListenableBuilder(
        valueListenable: countNotifier,
        builder: (context, value, child) {
          return Text(
            "$value",
            style: const TextStyle(fontSize: 30),
          );
        },
      ),
    );
  }

  @override
  void floatingActionButtonAction({required BuildContext context}) {
    countNotifier.value++;
  }
}
