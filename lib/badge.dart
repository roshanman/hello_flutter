import 'base_demo.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class BadgeDemo extends BaseDemo {
  const BadgeDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Badge(
        // shape: BadgeShape.square,
        badgeContent: const Text(
          "18",
          style: TextStyle(color: Colors.white),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Container(
            color: Colors.blue,
            width: 50,
            height: 50,
            child: IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
