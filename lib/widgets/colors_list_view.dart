import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;

  const ColorItem({
    required this.isActive,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0XFF0A2463),
    Color(0XFF3E92CC),
    Color(0XFFFFFAFF),
    Color(0XFFD8315B),
    Color(0XFF1E1B18),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
            onTap: () => setState(() => currentIndex = index),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: colors.length,
      ),
    );
  }
}
