import 'package:flutter/material.dart';
import 'base_demo.dart';

class TabbarControllerDemo extends StatefulWidget implements MyDemo {
  @override
  final String title;

  const TabbarControllerDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<TabbarControllerDemo> createState() => _TabbarControllerDemoState();
}

class _TabbarControllerDemoState extends State<TabbarControllerDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
