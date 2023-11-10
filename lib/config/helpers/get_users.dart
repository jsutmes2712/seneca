import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetUsers {
  final _dio = Dio();

  Future<User> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");

    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessage();
  }
}