import 'base_demo.dart';
import 'package:flutter/material.dart';

class SafeAreaDemo extends BaseDemo {
  const SafeAreaDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        // this.left = true,
        // this.top = true,
        // this.right = true,
        // this.bottom = true,
        // this.minimum = EdgeInsets.zero,
        // this.maintainBottomViewPadding = false,

        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(20, (index) {
                return ListTile(
                  title: Text("Demo $index", style: const TextStyle(fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
