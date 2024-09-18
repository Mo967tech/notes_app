import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  
  const CustomIcon({
    required this.icon,
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.06),
      ),
      child: IconButton(
        icon: Icon(icon, size: 32),
        onPressed: onPressed,
      ),
    );
  }
}
