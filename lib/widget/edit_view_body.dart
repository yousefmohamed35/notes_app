import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_appbar.dart';
import 'package:todoapp/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon:Icons.check,),
            SizedBox(height: 50,),
            CustomTextField(hintText: 'title'),
             SizedBox(height: 16,),
            CustomTextField(hintText: 'content',maxLines: 7,)
          ],
        ),
      ),
    );
  }
}