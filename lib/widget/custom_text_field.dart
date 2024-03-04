import 'package:flutter/material.dart';
import 'package:todoapp/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle:const TextStyle(color: Kprimarycolor),
      border: BuildBorder(),
      enabledBorder: BuildBorder(),
      focusedBorder: BuildBorder(Kprimarycolor),

      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white
      )
    );
  }
}