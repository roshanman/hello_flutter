import 'base_demo.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends BaseDemo {
  const FloatingActionButtonDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context: context) ?? Text(title),
      ),
      body: bodyWidget(context: context),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          floatingActionButtonAction(context: context);
        },
        child: floatActionButtonIcon(context: context) ?? const Icon(Icons.add),
      ),
    );
  }
}
