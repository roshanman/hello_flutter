import 'base_demo.dart';
import 'package:flutter/material.dart';

class DirectionalityDemo extends BaseDemo {
  const DirectionalityDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: super.build(context),
    );
  }
}
