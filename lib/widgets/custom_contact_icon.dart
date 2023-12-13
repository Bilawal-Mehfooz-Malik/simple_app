import 'package:flutter/material.dart';

class CustomContactIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomContactIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(fontSize: 16, color: Colors.blue)),
      ],
    );
  }
}
