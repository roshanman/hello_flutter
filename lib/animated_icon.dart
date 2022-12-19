import 'base_demo.dart';
import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget implements MyDemo {
  final String title;

  const AnimatedIconDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _started = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIcon"),
      ),
      body: Center(
        child: AnimatedIcon(
          size: 50,
          icon: AnimatedIcons.close_menu,
          progress: _controller,
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_started) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
          _started = !_started;
        },
        child: const Icon(Icons.play_circle),
      ),
    );
  }
}
