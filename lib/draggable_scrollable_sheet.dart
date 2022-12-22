import 'base_demo.dart';
import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatefulWidget implements MyDemo {
  final String title;

  const DraggableScrollableSheetDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<DraggableScrollableSheetDemo> createState() => _DraggableScrollableSheetDemoState();
}

class _DraggableScrollableSheetDemoState extends State<DraggableScrollableSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Image.network(
                  BaseDemo.imgUrl,
                  fit: BoxFit.fill,
                ).debugLayoutConstraints(),
              ),
              Container(
                height: 100,
                color: Colors.grey,
                alignment: Alignment.center,
                child: const Text('电影介绍'),
              ),
            ],
          ),
          Positioned.fill(
            child: DraggableScrollableSheet(
              expand: true,
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('评论 $index'));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
