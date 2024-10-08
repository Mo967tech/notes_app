import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24,
      ),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            title: "Edit Note",
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = subTitle ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            hint: widget.note.title,
            onChanged: (title) {
              this.title = title;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: widget.note.content,
            maxLines: 5,
            onChanged: (subTitle) {
              this.subTitle = subTitle;
            },
          ),
          const SizedBox(height: 20),
          EditNoteColorsListView(note: widget.note),
        ],
      ),
    );
  }
}
