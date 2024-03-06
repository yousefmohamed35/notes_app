import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/constans.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  // to speak to hive to deal with type adapter 
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
