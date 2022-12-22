import 'base_demo.dart';
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget implements MyDemo {
  final String title;

  const CheckBoxDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<CheckBoxDemo> createState() => CheckBoxDemoState();
}

class CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox"),
      ),
      body: Center(
        child: Checkbox(
          fillColor: MaterialStateProperty.all(Colors.tealAccent),
          hoverColor: Colors.purple,
          overlayColor: MaterialStateProperty.all(Colors.green),
          focusColor: Colors.blue,
          activeColor: Colors.yellow,
          checkColor: Colors.red,
          value: _checked,
          onChanged: (checked) {
            setState(() {
              _checked = checked ?? false;
            });
          },
        ),
      ),
    );
  }
}
