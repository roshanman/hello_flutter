import 'package:flutter/material.dart';

abstract class MyDemo {
  String get title;

  Widget getDemoPage();
}

class BaseDemo extends StatelessWidget implements MyDemo {
  @override
  final String title;

  static const imgUrl =
      'https://img2.baidu.com/it/u=2946844257,1117642570&fm=253&fmt=auto&app=138&f=JPEG?w=1500&h=725';

  const BaseDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  Widget bodyWidget({required BuildContext context}) {
    return Center(child: Text(title));
  }

  bool showFloatActionButton({required BuildContext context}) {
    return true;
  }

  void floatingActionButtonAction({required BuildContext context}) {}

  Widget? floatActionButtonIcon({required BuildContext context}) {
    return null;
  }

  Widget? appBar({required BuildContext context}) {
    return null;
  }

  bool showDrawer() {
    return false;
  }

  Widget? drawer({required BuildContext context}) {
    return const Drawer(child: Text('drawer'));
  }

  bool showEndDrawer() {
    return false;
  }

  Widget? endDrawer({required BuildContext context}) {
    return const Drawer(child: Text('drawer'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context: context) ?? Text(title),
      ),
      body: bodyWidget(context: context),
      drawer: showDrawer() ? drawer(context: context) : null,
      endDrawer: showEndDrawer() ? endDrawer(context: context) : null,
      floatingActionButton: showFloatActionButton(context: context)
          ? FloatingActionButton(
              onPressed: () {
                floatingActionButtonAction(context: context);
              },
              child: floatActionButtonIcon(context: context) ?? const Icon(Icons.add),
            )
          : null,
    );
  }
}

extension LayoutBuildDebug on Widget {
  Widget debugLayoutConstraints() {
    return LayoutBuilder(
      builder: (context, constraints) {
        print("$this constraints is: $constraints ");
        return this;
      },
    );
  }
}
