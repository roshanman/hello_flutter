import 'package:flutter/cupertino.dart';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class ButtonsDemo extends BaseDemo {
  const ButtonsDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getPopupButton(context),
          const SizedBox(height: 10),
          _getDropdownButton(),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text("TextButton"),
          ),
          const SizedBox(height: 10),
          IconButton(
            color: Colors.purple,
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.access_alarm_rounded),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text("ElevatedButton"),
          ),
          const SizedBox(height: 10),
          CupertinoButton(
            child: const Text("CupertinoButton"),
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          RaisedButton(
            onPressed: () {},
            child: const Text("RaisedButton Deprecated"),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          const SizedBox(height: 10),
          FlatButton(
            onPressed: () {},
            child: const Text("FlatButton Deprecated"),
          ),
          const SizedBox(height: 10),
          const CloseButton(),
          const SizedBox(height: 10),
          const BackButton(),
          const SizedBox(height: 10),
          _getButtonBar(),
          const SizedBox(height: 10),
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.blue,
            child: const Text('RawMaterialButton'),
          )
        ],
      ),
    );
  }

  Widget _getButtonBar() {
    return ButtonBar(
      overflowButtonSpacing: 6,
      buttonPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        ...List.generate(
          4,
          (index) {
            return ElevatedButton(
              onPressed: () {},
              child: Text("ButtonBar$index"),
            );
          },
        )
      ],
    );
  }

  Widget _getPopupButton(BuildContext context) {
    return PopupMenuButton<String>(
      initialValue: "英语",
      onSelected: (result) => print(result),
      itemBuilder: (context) {
        return const <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: '语文',
            child: Text('语文'),
          ),
          PopupMenuItem<String>(
            value: '数学',
            child: Text('数学'),
          ),
          PopupMenuItem<String>(
            value: '英语',
            child: Text('英语'),
          ),
          PopupMenuItem<String>(
            value: '生物',
            child: Text('生物'),
          ),
          PopupMenuItem<String>(
            value: '化学',
            child: Text('化学'),
          ),
        ];
      },
      // child: const Text("PopupMenuButton"),
    );
  }

  Widget _getDropdownButton() {
    return DropdownButton<String>(
      value: "数学",
      items: const [
        DropdownMenuItem(
          value: '语文',
          child: Text('语文'),
        ),
        DropdownMenuItem(value: '数学', child: Text('数学')),
        DropdownMenuItem(value: '英语', child: Text('英语')),
      ],
      onChanged: (value) => print(value),
    );
  }
}
