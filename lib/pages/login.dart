import 'package:e_wallet/pages/home.dart';
import 'package:e_wallet/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF041444),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset('assets/logo.png'),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Column(
                  children: [
                    const Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Enter Your Email Address',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _password,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Enter Password',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 45,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          backgroundColor: const WidgetStatePropertyAll(
                            Color(0xFF041444),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xFF041444),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: RichText(
                        text: TextSpan(
                            text: 'Dont have an Account? ',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                    color: Color(0xFF041444),
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> saveData() async {
    print('Email: $_email');
    print('Password: $_password');
  }
}
