import 'base_demo.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatefulWidget implements MyDemo {
  final String title;

  const AnimatedSwitcherDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  bool _isSecondIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedIcon"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _isSecondIcon
                  ? Icon(
                      key: ValueKey(1),
                      Icons.done,
                      size: 64,
                    )
                  : Icon(
                      key: ValueKey(2),
                      Icons.delete,
                      size: 64,
                    ),
            ),
            const SizedBox(height: 20),
            AnimatedSwitcher(
              switchInCurve: Curves.bounceIn,
              switchOutCurve: Curves.bounceOut,
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  child: child,
                  scale: animation,
                );
              },
              duration: const Duration(milliseconds: 300),
              child: _isSecondIcon
                  ? Icon(
                      key: ValueKey(3),
                      Icons.done,
                      size: 64,
                      color: Colors.amber,
                    )
                  : Icon(
                      key: ValueKey(4),
                      Icons.delete,
                      size: 64,
                      color: Colors.red,
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _isSecondIcon = !_isSecondIcon);
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
