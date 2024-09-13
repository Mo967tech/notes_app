import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 22,
        bottom: 24,
        left: 24,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0XFFFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                "Flutter tips",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            subtitle: const Text(
              "Build Your Career With\nTharwat Samy",
              style: TextStyle(
                color: Color(0XFF9D6925),
                fontSize: 20,
              ),
            ),
            trailing: IconButton(
              padding: const EdgeInsets.only(bottom: 35),
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0, top: 12),
            child: Text(
              "May21,2022",
              style: TextStyle(
                color: Color(0XFF9D6925),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
