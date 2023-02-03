import 'base_demo.dart';
import 'package:flutter/material.dart';

class NotificationListenerWidgetDemo extends BaseDemo {
  const NotificationListenerWidgetDemo({Key? key, required String title})
      : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return NotificationListener(
      onNotification: (ScrollMetricsNotification notification) {
        print("$notification");
        return true;
      },
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50.0,
            child: Text('item $index'),
          );
        },
      ),
    );
  }
}
