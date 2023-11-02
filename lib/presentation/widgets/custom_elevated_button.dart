import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  
  final IconData icon;
  final String texto;
  const CustomElevatedButton({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: () {}, 
      child: SizedBox(
        height: 50,
        width: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            Text(texto, style: const TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      )
    );
  }
}