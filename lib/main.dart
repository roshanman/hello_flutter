import 'package:flutter/material.dart';
import 'demo_lists.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Flutter Demos'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(), // NeverScrollableScrollPhysics
        itemBuilder: (context, index) {
          final demo = allDemos[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => demo.page),
              );
            },
            child: ListTile(
              title: Text(demo.title, style: const TextStyle(fontSize: 16)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.red[200]);
        },
        itemCount: allDemos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
