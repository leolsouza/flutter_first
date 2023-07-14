import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  void openSnackBar(context) {
    final snackBar = SnackBar(
      content: const Text('Snack Bar foi aberta'),
      action: SnackBarAction(
        label: 'Desfazer',
        onPressed: () {
          print('desfez');
        },
      ),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            openSnackBar(context);
          },
          child: const Text('Show SnackBar')),
    );
  }
}
