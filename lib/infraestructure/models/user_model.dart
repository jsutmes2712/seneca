// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:seneca/domain/entities/usuario.dart';

List<Usuario> userFromJson(String str) => List<Usuario>.from(json.decode(str).map((x) => UserModel.fromJson(x).toUser()));

String userToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
    String id;
    String correo;
    String nombre;

    UserModel({
        required this.id,
        required this.correo,
        required this.nombre,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        correo: json["correo"],
        nombre: json["nombre"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "correo": correo,
        "nombre": nombre,
    };

    Usuario toUser() => Usuario(id: int.parse(id), email: correo, nombre: nombre);

}