import 'package:flutter/material.dart';

class ColorItems extends StatelessWidget {
  const ColorItems({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white.withOpacity(1),
            radius: 35,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
          );
  }
}
