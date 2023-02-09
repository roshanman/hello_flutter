import 'package:flutter/material.dart';
import 'base_demo.dart';

class TabbarNavigationDemo extends StatefulWidget implements MyDemo {
  @override
  final String title;

  const TabbarNavigationDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<TabbarNavigationDemo> createState() => _TabbarNavigationDemoState();
}

class _TabbarNavigationDemoState extends State<TabbarNavigationDemo> {
  Scaffold _genrateDemoPage(String title) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }

  late final List<Scaffold> demoPages;

  var _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    demoPages = [
      _genrateDemoPage("Page A"),
      _genrateDemoPage("Page B"),
      _genrateDemoPage("Page C"),
      _genrateDemoPage("Page D"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: demoPages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.directions_transit), label: "你的"),
          BottomNavigationBarItem(icon: Icon(Icons.directions_boat), label: "他的"),
          BottomNavigationBarItem(icon: Icon(Icons.directions_boat), label: "他的"),
        ],
      ),
    );
  }
}
