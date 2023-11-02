import 'package:flutter/material.dart';
import 'package:seneca/presentation/widgets/custom_menu_botton.dart';
class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
          verticalInside: BorderSide(
              width: 1, color: Colors.grey, style: BorderStyle.solid),
          horizontalInside: BorderSide(
              width: 1, color: Colors.grey, style: BorderStyle.solid)),
      children: const [
        TableRow(children: [
          CustomMenuBotton(imagen: "assets/images/sombrero.png", texto: "Alumnado del centro"),
          CustomMenuBotton(imagen: "assets/images/profesor.png", texto: "Personal del centro"),
          CustomMenuBotton(imagen: "assets/images/covid.png", texto: "Información covid"),
        ]),
        TableRow(children: [
          CustomMenuBotton(imagen: "assets/images/campana.png", texto: "Tablón de anuncios"),
          CustomMenuBotton(imagen: "assets/images/calendario.png", texto: "Calendario del centro"),
          SizedBox()
        ])
      ],
    );
  }
}