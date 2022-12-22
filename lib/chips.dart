import 'base_demo.dart';
import 'package:flutter/material.dart';

class ChipsDemo extends StatefulWidget implements MyDemo {
  final String title;

  const ChipsDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget getDemoPage() {
    return this;
  }

  @override
  State<ChipsDemo> createState() => _ChipsDemoState();
}

class _ChipsDemoState extends State<ChipsDemo> {
  List<String> _filters = [];
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chips"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("FilterChip:"),
            Wrap(
              spacing: 15,
              runSpacing: 12,
              children: List.generate(
                10,
                (index) {
                  return FilterChip(
                    label: Text('ZXM $index'),
                    selected: _filters.contains('$index'),
                    onSelected: (v) {
                      setState(
                        () {
                          if (v) {
                            _filters.add('$index');
                          } else {
                            _filters.removeWhere(
                              (f) {
                                return f == '$index';
                              },
                            );
                          }
                        },
                      );
                    },
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 16),
            Text('选中：${_filters.join(',')}'),
            const SizedBox(height: 36),
            const Text('ActionChip:'),
            ActionChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: const Text('X'),
              ),
              label: const Text('ZXM'),
              onPressed: () => print("onPressed"),
            ),
            const SizedBox(height: 36),
            const Text('ChoiceChip:'),
            Wrap(
              spacing: 15,
              children: List.generate(10, (index) {
                return ChoiceChip(
                  label: Text('ZXM $index'),
                  selected: _selectIndex == index,
                  selectedColor: Colors.red,
                  onSelected: (v) {
                    setState(() {
                      _selectIndex = index;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 36),
            const Text('Chip:'),
            Chip(
              avatar: const Icon(
                Icons.verified_user,
                size: 20,
                color: Colors.blueGrey,
              ),
              label: const Text("ZXM"),
              deleteIcon: const Icon(
                Icons.close,
                size: 20,
                color: Colors.red,
              ),
              onDeleted: () {},
            ),
            const SizedBox(height: 36),
            const Text('InputChip:'),
            InputChip(
              padding: const EdgeInsets.only(left: 2),
              avatar: const CircleAvatar(
                child: Text('AB'),
              ),
              label: const Text('Aaron Burr'),
              //点击事件
              onPressed: () {
                print('onPressed click');
              },
              pressElevation: 4.0,
              isEnabled: true,
              //不可点击时的颜色
              disabledColor: Colors.grey,

              ///
              selectedColor: Colors.blue,
              selected: false,
              selectedShadowColor: Colors.deepOrange,
              onSelected: (bool select) {
                print('select click $select');
              },
            )
          ],
        ),
      ),
    );
  }
}
