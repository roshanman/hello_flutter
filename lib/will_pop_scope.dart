import 'base_demo.dart';
import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget implements MyDemo {
  final String title;

  const WillPopScopeDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<WillPopScopeDemo> createState() => _WillPopScopeDemoState();
}

class _WillPopScopeDemoState extends State<WillPopScopeDemo> {
  bool _canPop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _canPop ? null : _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WillPopScope"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("允许左滑返回:"),
              Checkbox(
                value: _canPop,
                onChanged: (bool? value) {
                  setState(() {
                    _canPop = !_canPop;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('你确定要退出吗？'),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('退出'),
                onPressed: () => Navigator.of(context).pop(true),
              ),
              ElevatedButton(
                child: const Text('取消'),
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ],
          ),
        ) ??
        false;
  }
}
