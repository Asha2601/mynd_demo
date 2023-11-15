import '../model/login_model.dart';

class LoginController {
  Future<LoginModel?> login(String email, String password) async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/post');
    // final response = await http.post(
    //   url,
    //   body: jsonEncode({'email': email, 'password': password}),
    //   headers: {'Content-Type': 'application/json'},
    // );
    if (email == "test@gmail.com" && password == "1234") {
      return LoginModel(email: 'test@gmail.com', password: '1234');
    } else {
      // Login failed, return null or handle the error accordingly.
      return null;
    }
    // if (response.statusCode == 200) {
    //   final responseData = json.decode(response.body);
    //   //successfully logged in
    //   return User(
    //       email: responseData['email'], password: responseData['password']);
    // } else {
    //   //Login failed
    //   return null;
    // }
  }
}
