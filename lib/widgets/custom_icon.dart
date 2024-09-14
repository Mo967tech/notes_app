import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;

  const CustomIcon({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.06),
      ),
      child: Icon(
        icon,
        size: 32,
      ),
    );
  }
}
