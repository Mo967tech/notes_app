import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24,
      ),
      child: Column(
        children: [
          CustomAppBar(icon: Icons.check, title: "Edit Note"),
          SizedBox(height: 20),
          CustomTextField(hint: "Title"),
          SizedBox(height: 16),
          CustomTextField(hint: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
