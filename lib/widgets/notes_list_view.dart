import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => CustomNoteItem(note: notes[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
