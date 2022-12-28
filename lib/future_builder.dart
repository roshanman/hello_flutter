import 'base_demo.dart';
import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget implements MyDemo {
  final String title;

  const FutureBuilderDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<FutureBuilderDemo> createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FutureBuilder"),
      ),
      body: FutureBuilder(
        initialData: "initialData",
        future: Future.delayed(
          const Duration(seconds: 3),
          () {
            return "Loading http done";
          },
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            default:
              return Center(child: Text(snapshot.data.toString()));
          }
        },
      ),
    );
  }
}
