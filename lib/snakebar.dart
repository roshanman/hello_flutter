import 'base_demo.dart';
import 'package:flutter/material.dart';

class SnackBarDemo extends BaseDemo {
  const SnackBarDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  void floatingActionButtonAction({required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        // this.backgroundColor,
        // this.elevation,
        // this.margin,
        // this.padding,
        // this.width,
        // this.shape,
        // this.behavior,
        // this.action,
        // this.duration = _snackBarDisplayDuration,
        // this.animation,
        // this.onVisible,
        // this.dismissDirection = DismissDirection.down,
        // this.clipBehavior = Clip.hardEdge,
        content: Text(
          "你好世界！",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
