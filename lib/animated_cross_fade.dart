import 'base_demo.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget implements MyDemo {
  final String title;

  const AnimatedCrossFadeDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  CrossFadeState _state = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFadeDemo"),
      ),
      body: Center(
        child: AnimatedCrossFade(
          // this.firstCurve = Curves.linear,
          // this.secondCurve = Curves.linear,
          // this.sizeCurve = Curves.linear,
          alignment: Alignment.center,
          // required this.crossFadeState,
          // required this.duration,
          // this.reverseDuration,
          // this.layoutBuilder = defaultLayoutBuilder,
          // this.excludeBottomFocus = true,
          firstChild: Image.asset("images/demo_image.png"),
          secondChild: Image.network(BaseDemo.imgUrl),
          crossFadeState: _state,
          duration: const Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _state = _state == CrossFadeState.showFirst
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst;
          });
        },
        child: Icon(Icons.play_circle_fill),
      ),
    );
  }
}
