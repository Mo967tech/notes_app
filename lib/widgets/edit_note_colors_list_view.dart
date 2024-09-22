import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNoteColorsListView extends StatefulWidget {
  final NoteModel note;

  const EditNoteColorsListView({super.key, required this.note});

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
            onTap: () {
              setState(() => currentIndex = index);
              widget.note.color = kColors[index].value;
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: kColors.length,
      ),
    );
  }
}
