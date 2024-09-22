import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Title",
            onChanged: (title) {
              this.title = title;
            },
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hint: "Content",
            maxLines: 5,
            onChanged: (subTitle) {
              this.subTitle = subTitle;
            },
          ),
          const SizedBox(height: 25),
          const ColorsListView(),
          const SizedBox(height: 25),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (isValidated()) {
                    save();
                    addNote(context, formatDate(DateTime.now()));
                  } else {
                    displayAutoValidateMode();
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void displayAutoValidateMode() => setState(
        () => autovalidateMode = AutovalidateMode.always,
      );

  void save() => formKey.currentState!.save();

  bool isValidated() => formKey.currentState!.validate();

  void addNote(BuildContext context, String formatedCurrentDate) =>
      BlocProvider.of<AddNoteCubit>(context).addNote(
        createNote(
          title: title!,
          content: subTitle!,
          date: formatedCurrentDate,
          color: Colors.green.value,
        ),
      );

  String formatDate(DateTime time) => DateFormat("MMMM dd,yyyy").format(time);

  NoteModel createNote({
    required String title,
    required String content,
    required String date,
    required int color,
  }) =>
      NoteModel(title: title, content: content, date: date, color: color);
}
