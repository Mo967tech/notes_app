import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const CustomNoteItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 5,
      ),
    );
  }
}
