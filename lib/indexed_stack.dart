import 'base_demo.dart';
import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget implements MyDemo {
  final String title;

  const IndexedStackDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<IndexedStackDemo> createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  int _index = 0;

  final List<Widget> _indexedWidgets = [
    ...List.generate(
      2,
      (index) {
        return Center(
          child: Container(
            width: 150 + index * 20,
            height: 150 + index * 20,
            color: Colors.primaries[index],
            child: Center(
              child: Text(
                "$index",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    ).toList(),
    Center(
      child: Image.network(BaseDemo.imgUrl),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Center(
        child: IndexedStack(
          index: _index,
          children: _indexedWidgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index = (_index + 1) % _indexedWidgets.length;
          });
        },
        child: const Icon(Icons.play_circle),
      ),
    );
  }
}
