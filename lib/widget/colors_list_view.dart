import 'package:flutter/material.dart';
import 'package:todoapp/widget/color_items.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xffF2CCC3),
    Color(0xffACD8AA),
    Color(0xffF48498),
    Color(0xff414288),
    Color(0xff5FB49C),
    Color(0xff682D63),
    Color(0xffC0D6DF),
    Color(0xffDBE9EE),
    Color(0xff4F6D7A),
    Color(0xff8E6E53),
    Color(0xffC69C72),
    Color(0xffDF2935),
    Color(0xffE6E8E6),
    Color(0xffFABC3C),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItems(
                  isActive: currentIndex == index ? true : false,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
