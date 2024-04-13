
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:todoapp/widget/custom_appbar.dart';
import 'package:todoapp/widget/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override 
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
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