import 'dart:math';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget implements MyDemo {
  final String title;

  const DraggableDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<DraggableDemo> createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    int randomValue = Random().nextInt(50);

    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable(
              data: randomValue,
              onDragStarted: () {
                print('onDragStarted');
              },
              onDragEnd: (DraggableDetails details) {
                print('onDragEnd:$details');
              },
              onDraggableCanceled: (Velocity velocity, Offset offset) {
                print('onDraggableCanceled velocity:$velocity,offset:$offset');
              },
              onDragCompleted: () {
                print('onDragCompleted');
              },
              feedback: Center(
                child: Text(
                  "+$randomValue",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text("+$randomValue",
                    style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
            const SizedBox(height: 30),
            DragTarget(
              builder: (context, candidateData, rejectedData) {
                return Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child:
                      Text("=$_count", style: const TextStyle(fontSize: 20, color: Colors.white)),
                );
              },
              onAccept: (int data) {
                setState(() {
                  _count += data;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
