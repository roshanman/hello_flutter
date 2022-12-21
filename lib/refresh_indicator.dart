import 'base_demo.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorDemo extends StatefulWidget implements MyDemo {
  final String title;

  const RefreshIndicatorDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<RefreshIndicatorDemo> createState() => _RefreshIndicatorDemoState();
}

class _RefreshIndicatorDemoState extends State<RefreshIndicatorDemo> {
  List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RefreshIndicator"),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_items[index]),
            );
          },
        ),
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 3));

          setState(() {
            int curLen = _items.length;
            List<String> incrementItems = List.generate(5, (index) {
              return "Item ${curLen + index}";
            });
            _items.insertAll(0, incrementItems);
          });
        },
      ),
    );
  }
}
