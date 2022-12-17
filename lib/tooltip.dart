import 'base_demo.dart';
import 'package:flutter/material.dart';

class TooltipDemo extends BaseDemo {
  const TooltipDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Tooltip(
            message: "Hello Fluuter",
            child: Text("move in to show help message"),
          ),
          const Divider(),
          Tooltip(
            // this.message,
            // this.richMessage,
            // this.height,
            // this.padding,
            // this.margin,
            // this.verticalOffset,
            // this.preferBelow,
            // this.excludeFromSemantics,
            // this.decoration,
            // this.textStyle,
            // this.waitDuration,
            // this.showDuration,
            // this.child,
            // this.triggerMode,
            // this.enableFeedback,
            message: "xxx",
            child: OutlinedButton(
              onPressed: () => print("move in to show help message"),
              child: const Icon(
                Icons.tap_and_play,
                size: 64,
              ),
            ),
          )
        ],
      ),
    );
  }
}
