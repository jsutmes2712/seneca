import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';

import 'package:seneca/presentation/widgets/custom_bar.dart';
import 'package:seneca/presentation/widgets/custom_menu.dart';
import 'package:seneca/presentation/widgets/custom_user_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(   
            backgroundColor: Colors.white, 
            body: Stack(
              children: [
                Container(//Fondo azul arriba
                  color: Colors.blue[800],
                  width: double.infinity,
                  height: 200,
                ),
                FutureBuilder(
                  future: provider.validateUser(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data != null) {
                      return const Center(
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
                              CustomMenu(),
                              CustomBar()
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                )
              ],
            ),
          );
  }
}