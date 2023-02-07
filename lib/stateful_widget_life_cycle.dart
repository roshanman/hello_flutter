// ignore_for_file: avoid_print, no_logic_in_create_state

import 'base_demo.dart';
import 'package:flutter/material.dart';

class StatefulWidgetLifeCycle extends StatefulWidget implements MyDemo {
  @override
  final String title;

  const StatefulWidgetLifeCycle({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<StatefulWidgetLifeCycle> createState() {
    print("WidgetLifeCycle createState");
    return _StatefulWidgetLifeCycleState();
  }
}

class _StatefulWidgetLifeCycleState extends State<StatefulWidgetLifeCycle> {
  var _count = 0;

  @override
  void initState() {
    super.initState();
    print("_WidgetLifeCycleState initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("_WidgetLifeCycleState didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("_WidgetLifeCycleState build");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Life Cycle"),
      ),
      body: Center(
        child: Text(
          "$_count",
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("_WidgetLifeCycleState didUpdateWidget");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("_WidgetLifeCycleState reassemble");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("_WidgetLifeCycleState deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("_WidgetLifeCycleState deactivate");
  }
}
