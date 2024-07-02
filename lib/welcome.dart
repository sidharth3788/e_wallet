import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF041444),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/logo.png'),
          const SizedBox(
            height: 225,
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(),
            child: const Text(
              'START',
              style: TextStyle(
                  color: Color(0xFF041444),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
