import 'package:flutter/material.dart';
import 'package:hello_word/studys/my_drawer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            'https://img.freepik.com/vetores-premium/abstrato-moderno-fundo-gradiente-ultravioleta_91606-73.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGO',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            TextArea()
          ],
        )
      ]),
    );
  }
}

class TextArea extends StatefulWidget {
  const TextArea({super.key});

  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void onLogin(emailController, passwordController) {
    String email = emailController;
    String password = passwordController;
    if (email == 'teste@teste.com' && password == '12345') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyDrawer(),
        ),
      );
    } else {
      print('login invalido');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 12,
                right: 12,
                bottom: 12,
              ),
              child: Column(
                children: [
                  MyTextField(
                    field: 'Email',
                    controller: _emailController,
                  ),
                  const SizedBox(height: 15),
                  MyTextField(
                    field: 'Password',
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepPurpleAccent,
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(12),
                        ),
                      ),
                      onPressed: () {
                        onLogin(
                          _emailController.text,
                          _passwordController.text,
                        );
                      },
                      child: const Text('Login'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.field,
      required this.controller,
      this.obscureText = false});

  final String field;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: field,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
