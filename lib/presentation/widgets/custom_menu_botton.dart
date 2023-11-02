import 'package:flutter/material.dart';

class CustomMenuBotton extends StatelessWidget {

  final String imagen;
  final String texto;
  const CustomMenuBotton({super.key, required this.imagen, required this.texto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(imagen),
                width: 75,
                height: 75,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(texto, textAlign: TextAlign.center)
            ],
          ),
        ),
      );
  }
}