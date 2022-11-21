import 'package:flutter/material.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/menu.png',
            height: 45,
          ),
          Icon(
            Icons.person,
            size: 45,
          ),
        ],
      ),
    );
  }
}
