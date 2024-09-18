import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  final NoteModel note;

  const CustomNoteItem({required this.note, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EditNoteView(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 22,
          bottom: 24,
          left: 24,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              subtitle: Text(
                note.content,
                style: const TextStyle(
                  color: Color(0XFF9D6925),
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                padding: const EdgeInsets.only(bottom: 35),
                onPressed: () async {
                  await note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 12),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Color(0XFF9D6925),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
