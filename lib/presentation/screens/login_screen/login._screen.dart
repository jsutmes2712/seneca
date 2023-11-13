import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';
import 'package:seneca/presentation/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    provider.getValidUsers();
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    bool isLoading = false;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 62, 153),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Image(image: AssetImage('assets/images/iseneca.png')),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: usuarioController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                    labelStyle: TextStyle(color: Colors.white),
                  )
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: passwordController,
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: const TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      onPressed:() {
                        
                      }, 
                      icon: const Icon(Icons.visibility),
                      color: Colors.white,
                    )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    if(provider.login(usuarioController.text, passwordController.text)){
                      if (provider.validateUser(FirebaseAuth.instance.currentUser!.email!)) {
                        context.goNamed("home");
                      }else{
                        showMessage("Login no permitido");
                      }
                    }
                  }, 
                  text: "Iniciar Sesion"
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });

                    try {
                      await provider.loginWithGoogle();
                      
                      if (provider.validateUser(FirebaseAuth.instance.currentUser!.email!)) {
                        context.goNamed("home");
                      }else{
                        throw FirebaseAuthException(code: "no permitido", message: "Login no permitido");
                      }
                    } catch(e){
                      if(e is FirebaseAuthException){
                        showMessage(e.message!);
                      }
                    }
                    setState(() {
                      isLoading = false;
                    });
                  }, 
                  text: "Iniciar Sesion con Google"
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("No recuerdo mi contraseña", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white),),
                const SizedBox(
                  height: 100,
                ),
                Transform.scale(
                  scale: 1.4,
                  child: const Image(image: AssetImage('assets/images/juntaDeAndalucia.png'))
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showMessage(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

}