import 'package:flutter/cupertino.dart';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends BaseDemo {
  const AlertDialogDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _showDialog(context),
            child: const Text("show Alert Dialog"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _showSimpleDialog(context),
            child: const Text("show Simple Dialog"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _showCupertinoDialog(context),
            child: const Text("Cupertino Dialog"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _showGeneralDialog(context),
            child: const Text("Generic Dialog"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _showAboutDialog(context),
            child: const Text("About Dialog"),
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              return ElevatedButton(
                onPressed: () => _showBottomSheetDialog(context),
                child: const Text("bottom sheet"),
              );
            },
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              return ElevatedButton(
                onPressed: () => _showActionSheet(context),
                child: const Text("bottom action sheet"),
              );
            },
          )
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("温馨提示"),
          titlePadding: const EdgeInsets.all(10),
          titleTextStyle: const TextStyle(color: Colors.black87, fontSize: 16),
          content: const Text("您确定要删除吗?"),
          contentPadding: const EdgeInsets.all(10),
          contentTextStyle: const TextStyle(color: Colors.black54, fontSize: 14),
          actions: <Widget>[
            TextButton(
              child: const Text("再考虑一下"),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text("考虑好了"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("温馨提示"),
          titlePadding: const EdgeInsets.all(10),
          titleTextStyle: const TextStyle(color: Colors.black87, fontSize: 16),
          contentPadding: const EdgeInsets.all(10),
          children: <Widget>[
            TextButton(
              child: const Text("再考虑一下"),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text("考虑好了"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    // showCupertinoDialog(context: context, builder: builder)
    // showCupertinoModalPopup
    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Alert'),
        content: const Text('Proceed with destructive action?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationName: 'APP名称',
      applicationVersion: '1.0.9527',
      applicationIcon: const Icon(Icons.settings_applications),
      applicationLegalese: '北京',
      children: <Widget>[
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
        const Text('我是文本'),
      ],
    );
  }

  void _showGeneralDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "你好",
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
        return Center(
          child: Material(
            child: Container(
              color: Colors.red.withOpacity(animation.value),
              child: const Text("我是一个可变的"),
            ),
          ),
        );
      },
    );
  }

  void _showBottomSheetDialog(BuildContext context) {
    final content = Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('BottomSheet'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

    showModalBottomSheet(
      // barrierColor: Colors.red,
      context: context,
      builder: (context) {
        return content;
      },
    );

    // Scaffold.of(context).showBottomSheet<void>(
    //   (BuildContext context) {
    //     return content;
    //   },
    //   enableDrag: true,
    //   backgroundColor: Colors.red,
    // );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Destructive Action'),
          ),
        ],
      ),
    );
  }
}
