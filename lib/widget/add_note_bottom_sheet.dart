import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32,left:16,right: 16),
      child: const Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}