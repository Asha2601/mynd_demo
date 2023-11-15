import 'package:flutter/material.dart';

import '../controller/signup_controller.dart';
import '../model/signup_model.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  final SignUpController signUpController = SignUpController();

  void handleSignUp() async {
    final user = SignUp(
      name: _nameEditingController.text,
      password: _passwordEditingController.text,
      email: _emailEditingController.text,
    );

    final signUpSuccessful =
        await signUpController.sign('name', 'password', 'email');

    if (signUpSuccessful != null) {
      print("Successfully Sign up");
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.purple,
          title: const Text('Sign Up'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    prefixIcon: const Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle: const TextStyle(color: Colors.purple),
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixStyle: const TextStyle(color: Colors.black),
                    suffixStyle: const TextStyle(color: Colors.blue),
                  ),
                  controller: _nameEditingController,
                ),
                const SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle: const TextStyle(color: Colors.purple),
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixStyle: const TextStyle(color: Colors.black),
                    suffixStyle: const TextStyle(color: Colors.blue),
                  ),
                  controller: _emailEditingController,
                ),
                const SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelStyle: const TextStyle(color: Colors.purple),
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixStyle: const TextStyle(color: Colors.black),
                    suffixStyle: const TextStyle(color: Colors.blue),
                  ),
                  controller: _passwordEditingController,
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.purple), // Button background color
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15)), // Button padding
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                  ),
                  onPressed: () {
                    handleSignUp();
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 16, // Text size
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
