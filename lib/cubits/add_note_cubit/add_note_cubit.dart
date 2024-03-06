import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/constans.dart';
import 'package:todoapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(
        AddNotesuccess(),
      );
    } catch (e) {
      emit(
        AddNoteFailure(
          e.toString(),
        ),
      );
    }
  }
}
