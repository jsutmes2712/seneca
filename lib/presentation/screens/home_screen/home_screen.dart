import 'package:flutter/material.dart';

import 'package:seneca/presentation/widgets/custom_bar.dart';
import 'package:seneca/presentation/widgets/custom_menu.dart';
import 'package:seneca/presentation/widgets/custom_user_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(   
      backgroundColor: Colors.white, 
      body: Stack(
        children: [
          Container(//Fondo azul arriba
            color: Colors.blue[800],
            width: double.infinity,
            height: 200,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(//columna con los objetos de la pantalla
                children: [
                  Image (image: AssetImage("assets/images/iseneca.png"),),
                  SizedBox(
                    height: 20,
                  ),
                  CustomUserHeader(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomMenu()
                ],
              ),
            ),
          ),
          const CustomBar()
        ],
      ),
    );
  }
}