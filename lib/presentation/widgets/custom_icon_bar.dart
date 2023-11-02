import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {

  final IconData icon;
  final String texto;
  const CustomIconBar({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        Text(texto)
      ],
    );
  }
}