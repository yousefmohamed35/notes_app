import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_appbar.dart';
import 'package:todoapp/widget/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}