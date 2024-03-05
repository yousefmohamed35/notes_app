import 'package:flutter/material.dart';


import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32,left:16,right: 16,bottom: 24),
      child:  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}