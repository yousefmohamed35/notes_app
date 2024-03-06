
import 'package:flutter/material.dart';
import 'package:todoapp/widget/custom_appbar.dart';
import 'package:todoapp/widget/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
        child: Column(
          children: [
          CustomAppBar(title: 'Notes', icon: Icons.search,),
          Expanded(child:   NotesListView()),
          ],
        ),
      ),
    );
  }
}