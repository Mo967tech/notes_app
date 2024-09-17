part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NotesModel> notes;
  NotesCubitSuccess({required this.notes});
}

class NotesCubitFailure extends NotesCubitState {
  final String messageError;
  NotesCubitFailure({required this.messageError});
}
