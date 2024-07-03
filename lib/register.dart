import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

enum Gender { male, female, other }

class _RegisterState extends State<Register> {
  Gender? gender = Gender.male;

  bool isCheckedDeveloper = false;
  bool isCheckedDesigner = false;

  String dropdownvalue = 'English';
  List<String> items = ['English', 'Malayalam', 'Hindi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 16,
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
                    const Text(
                      'Choose your Gender',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
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
                          setState(
                            () {
                              gender = value;
                            },
                          );
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Other'),
                      leading: Radio<Gender>(
                        value: Gender.other,
                        groupValue: gender,
                        onChanged: (Gender? value) {
                          setState(
                            () {
                              gender = value;
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Select report type',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                    Column(
                      children: [
                        ListTile(
                          title: const Text('Daily Report'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            value: isCheckedDeveloper,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedDeveloper = value!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Monthly Report'),
                          leading: Checkbox(
                            checkColor: Colors.white,
                            value: isCheckedDesigner,
                            onChanged: (bool? value) {
                              setState(
                                () {
                                  isCheckedDesigner = value!;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Choose your Language',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF041444)),
                    ),
                    DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.arrow_drop_down),
                        items: items.map((String v) {
                          return DropdownMenuItem(value: v, child: Text(v));
                        }).toList(),
                        onChanged: (v) {
                          setState(() {
                            dropdownvalue = v ?? ' No Value';
                          });
                        }),
                    const SizedBox(
                      height: 8,
                    ),
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
