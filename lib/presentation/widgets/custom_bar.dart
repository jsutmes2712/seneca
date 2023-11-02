import 'package:flutter/material.dart';
import 'package:seneca/presentation/widgets/custom_icon_bar.dart';
class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Colors.white,
            boxShadow: [
              BoxShadow (
                color: Colors.black,
                offset: Offset(0.0, 12.0),
                blurRadius: 20.0,
              )
            ]
          ),
          
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Wrap(
              spacing: 30,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                CustomIconBar(icon: Icons.home_filled, texto: "Inicio"),
                CustomIconBar(icon: Icons.watch_later_outlined, texto: "Agenda"),
                CustomIconBar(icon: Icons.messenger_outline_sharp, texto: "Comunicaciones"),
                CustomIconBar(icon: Icons.menu, texto: "Menu"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}