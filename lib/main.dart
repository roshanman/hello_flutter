import 'package:flutter/material.dart';
import 'demo_lists.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'theme_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, ThemeMode value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            primarySwatch: Colors.blueGrey,
          ),
          themeMode: value,
          home: const MyHomePage(title: 'My Flutter Demos'),
        );
      },
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
        title: Text(AppLocalizations.of(context).helloWorld),
      ),
      body: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(), // NeverScrollableScrollPhysics
        itemBuilder: (context, index) {
          final demo = allDemos[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) => demo.getDemoPage()),
              );
            },
            child: ListTile(
              title: Text("${allDemos.length - index}. ${demo.title}",
                  style: const TextStyle(fontSize: 16)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey[300]);
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
