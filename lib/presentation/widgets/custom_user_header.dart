import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';
import 'package:seneca/presentation/widgets/custom_elevated_button.dart';
class CustomUserHeader extends StatelessWidget {
  const CustomUserHeader({super.key});

  @override
  Widget build(BuildContext context) {
     final provider = context.watch<AppProvider>();
    return Container(//Cuadrado con info del usuario y botones azules
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(provider.user),
                    IconButton(
                      icon: const Icon(Icons.people), 
                      onPressed: () {
                        context.pop();
                      },
                    )
                  ]
                ),
                const Text("I.E.S Llanes", style: TextStyle(color: Colors.blue)),
                const SizedBox(height: 5),
                const Text("Perfil Dirección", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            
            height: 75,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(icon: Icons.alarm, texto: "  Avisos"),
                VerticalDivider(color: Colors.white,),
                CustomElevatedButton(icon: Icons.account_balance_wallet, texto: "  Bandeja de firmas"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}