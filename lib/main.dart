import 'package:flutter/material.dart';
import 'package:hello_word/constants/colors.dart';
import 'package:hello_word/studys/login_screen/login_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
      ),
    );
  }
}
