import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_note_item.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  final List<CustomNoteItem> notes = const [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XF44DF2DA),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Colors.black,
        ),
      ),
    );
  }
}
