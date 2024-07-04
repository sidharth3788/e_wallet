import 'package:e_wallet/pages/login.dart';
import 'package:e_wallet/widgets/demo.dart';
import 'package:e_wallet/pages/register2.dart';
import 'package:e_wallet/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-wallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Register(),
    );
  }
}
