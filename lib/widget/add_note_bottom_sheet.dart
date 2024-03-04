import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32,left:16,right: 16),
      child:  Column(
        children: [
          CustomTextField(hintText: 'title',),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'content',maxLines: 7,), 
        ],
      ),
    );
  }
}