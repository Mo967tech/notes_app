part of 'add_note_cubit.dart';

sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure({required this.errorMessage});
}
