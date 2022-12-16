import 'package:flutter/material.dart';
import 'base_demo.dart';

class ColorFilteredDemo extends BaseDemo {
  const ColorFilteredDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.saturation),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.home),
        ),
      ),
    );
  }
}
