import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_appbar.dart';

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
          ],
        ),
      ),
    );
  }
}