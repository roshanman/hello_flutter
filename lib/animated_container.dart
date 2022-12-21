import 'base_demo.dart';
import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget implements MyDemo {
  final String title;

  const AnimatedContainerDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _isLarge ? 300 : 100,
          height: _isLarge ? 300 : 100,
          color: _isLarge ? Colors.red : Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLarge = !_isLarge;
          });
        },
        child: const Icon(Icons.play_circle),
      ),
    );
  }
}
