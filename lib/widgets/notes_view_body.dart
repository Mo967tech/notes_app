import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 23,
      ),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
