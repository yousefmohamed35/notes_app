import 'package:flutter/material.dart';
import 'package:todoapp/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: 
      FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 108, 247, 212),
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500),
        ),
        onPressed: (){},child: const Icon(Icons.add,color: Colors.black,),),
      body: const NotesViewBody(),
    );
  }
}