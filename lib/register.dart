import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Gender? gender = Gender.male;
  bool isCheckedDeveloper = false;
  bool isCheckedDesigner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Column(
                  children: [
                    const Text(
                      'Create your Account',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xFF041444),
                          fontWeight: FontWeight.bold,
                          fontSize: 27),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Name',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Email Address',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Mobile No.',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Card(
                      child: Column(children: <Widget>[
                        ListTile(
                          title: const Text('Male'),
                          leading: Radio<Gender>(
                            value: Gender.male,
                            groupValue: gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Female'),
                          leading: Radio<Gender>(
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Other'),
                          leading: Radio<Gender>(
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                        ),
                      ]),
                    ),
                    // DropDown

                    // End
                    ElevatedButton(
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
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Gender { male, female, other }
