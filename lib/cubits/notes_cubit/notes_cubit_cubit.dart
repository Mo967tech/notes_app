import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  List<NotesModel>? notes;

  void fetchAllNotes() {
    Box<NotesModel> notesBox = Hive.box(kNotesBox);
    notes = notesBox.values.toList();
  }
}

class NotesModel {}
