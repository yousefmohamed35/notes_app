import 'package:flutter/material.dart';
import 'package:todoapp/widget/color_items.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
        return ColorItems();
      }),
    );
  }
}
