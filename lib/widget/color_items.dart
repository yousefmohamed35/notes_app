import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      backgroundColor: Colors.blue,
    );
  }
}