part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

class NoteCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;
  NotesCubitSuccess({required this.notes});
}

class NotesCubitFailure extends NotesCubitState {
  final String messageError;
  NotesCubitFailure({required this.messageError});
}
