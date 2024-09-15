import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 24,
      ),
      child: Column(
        children: [
          const CustomAppBar(icon: Icons.check, title: "Edit Note"),
          const SizedBox(height: 20),
          CustomTextFormField(
            hint: "Title",
            onSaved: (title) {},
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: "Content",
            maxLines: 5,
            onSaved: (subTitle) {},
          ),
        ],
      ),
    );
  }
}
