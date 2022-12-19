import 'base_demo.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends BaseDemo {
  const DrawerDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              // 注意context对象的层级,如果不用LayoutBuilder包一层直接用context对象将无法打开抽屉
              return ElevatedButton(
                onPressed: _openLeadingDrawr(context),
                child: const Text("打开左侧抽屉"),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return ElevatedButton(
                onPressed: _openTrailingDrawer(context),
                child: const Text("打开右侧抽屉"),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  bool showDrawer() {
    return true;
  }

  @override
  bool showEndDrawer() {
    return true;
  }

  VoidCallback _openLeadingDrawr(BuildContext context) {
    return () {
      Scaffold.of(context).openDrawer();
    };
  }

  VoidCallback _openTrailingDrawer(BuildContext context) {
    return () {
      Scaffold.of(context).openEndDrawer();
    };
  }
}
