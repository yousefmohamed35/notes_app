import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todoapp/constans.dart';
import 'package:todoapp/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(
        NotesCubitSuccess(notesBox.values.toList()),
      );
    } catch (e) {
      emit(
        NotesCubitFailure(
          e.toString(),
        ),
      );
    }
  }
}
