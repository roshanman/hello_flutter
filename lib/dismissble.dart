import 'base_demo.dart';
import 'package:flutter/material.dart';

class DismissbleDemo extends StatefulWidget implements MyDemo {
  final String title;

  const DismissbleDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<DismissbleDemo> createState() => _DismissbleDemoState();
}

class _DismissbleDemoState extends State<DismissbleDemo> {
  final List<String> _items = [
    ...List.generate(
      30,
      (index) {
        return "Item $index";
      },
    ).toList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            secondaryBackground: Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Action2",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ).debugLayoutConstraints(),
            background: Container(
              color: Colors.green,
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "Action1",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            key: ValueKey<String>(_items[index]),
            onDismissed: (DismissDirection direction) {
              setState(
                () {
                  _items.removeAt(index);
                },
              );
            },
            confirmDismiss: (direction) => _confirmDismiss(direction),
            child: ListTile(
              title: Text(
                _items[index],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> _confirmDismiss(DismissDirection direction) async {
    String titleString = "xxxx";

    switch (direction) {
      case DismissDirection.vertical:
        break;
      case DismissDirection.horizontal:
        break;
      case DismissDirection.endToStart:
        titleString = "你确定要执行Action2吗？";
        break;
      case DismissDirection.startToEnd:
        titleString = "你确定要执行Action1吗？";
        break;
      case DismissDirection.up:
        break;
      case DismissDirection.down:
        break;
      case DismissDirection.none:
        break;
    }

    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(titleString),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('确定'),
                onPressed: () => Navigator.of(context).pop(true),
              ),
              ElevatedButton(
                child: const Text('再想想'),
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ],
          ),
        ) ??
        false;
  }
}
