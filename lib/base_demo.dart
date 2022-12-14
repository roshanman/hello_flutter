import 'package:flutter/material.dart';

class BaseDemo extends StatelessWidget {
  final String title;

  const BaseDemo({Key? key, required this.title}) : super(key: key);

  Widget bodyWidget() {
    return Center(child: Text(title));
  }

  bool showFloatActionButton() {
    return true;
  }

  void floatingActionButtonAction() {}

  Widget? floatActionButtonIcon() {
    return null;
  }

  Widget? appBar() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar() ?? Text(title),
      ),
      body: bodyWidget(),
      floatingActionButton: showFloatActionButton()
          ? FloatingActionButton(
              onPressed: floatingActionButtonAction,
              child: floatActionButtonIcon() ?? const Icon(Icons.add),
            )
          : null,
    );
  }
}
