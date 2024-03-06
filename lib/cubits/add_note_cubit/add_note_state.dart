part of 'add_note_cubit.dart';


abstract class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNotesuccess extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
