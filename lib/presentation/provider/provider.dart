
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seneca/config/helpers/get_users.dart';
import 'package:seneca/domain/entities/usuario.dart';
import 'package:seneca/services/firebase_service.dart';

class AppProvider extends ChangeNotifier {

  String? user = "user";
  final getUsers = GetUsers();

  late List<Usuario> usersList;

  bool login( String usuario, String password){

    user = usuario;
    return usuario != "" && usuario == password && password != "";
  }

  Future<String?> loginWithGoogle() async{

    FirebaseService service = FirebaseService();
    try {
      await service.signInwithGoogle();
      User? usuario = FirebaseAuth.instance.currentUser;
      user = usuario!.displayName;
    } catch(e){
      if(e is FirebaseAuthException){
        rethrow;
      }
    }
    return null;
  }


  Future<void> getValidUsers() async{

    usersList =  await getUsers.getAnswer();
  }

  bool validateUser(String email){

    for (var user in usersList) {

      if (user.email == email) {
        return true;  
      }
    }
    return false;
  }

}

  