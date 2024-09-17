import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  void fetchAllNotes() {
    try {
      Box<NotesModel> notesBox = Hive.box(kNotesBox);
      List<NotesModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(NotesCubitFailure(messageError: e.toString()));
    }
  }
}

class NotesModel {}
