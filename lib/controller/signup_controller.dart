import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mynd_demo/model/signup_model.dart';

import '../model/login_model.dart';

class SignUpController {
  Future<SignUp?> sign(
    String email,
    String password,
    String name,
  ) async {
    final url = Uri.parse('Api url');
    final response = await http.post(
      url,
      body: jsonEncode({'email': email, 'password': password, 'name': name}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);

      return SignUp(
          email: responseData['email'],
          password: responseData['password'],
          name: '');
    } else {
      return null;
    }
  }
}
