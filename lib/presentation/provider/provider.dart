
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seneca/config/helpers/get_users.dart';
import 'package:seneca/domain/entities/usuario.dart';
import 'package:seneca/services/firebase_service.dart';

class AppProvider extends ChangeNotifier {

  String? user = "";
  String? email = "";
  final getUsers = GetUsers();

  late List<Usuario> usersList;

  bool login( String email, String password){

    user = email;
    this.email = email;
    return email != "" && email == password && password != "";
  }

  Future<String?> loginWithGoogle() async{

    FirebaseService service = FirebaseService();
    try {
      await service.signInwithGoogle();
      User? usuario = FirebaseAuth.instance.currentUser;
      user = usuario!.displayName;
      email = usuario.email;
    } catch(e){
      if(e is FirebaseAuthException){
        rethrow;
      }
    }
    return null;
  }

  Future<bool>validateUser() async{

    usersList =  await getUsers.getAnswer();

    for (var user in usersList) {

      if (user.email == email) {
        return true;  
      }
    }
    return false;
  }

}

  

