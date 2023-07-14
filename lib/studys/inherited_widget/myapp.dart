import 'package:flutter/material.dart';
import 'package:hello_word/studys/inherited_widget/my_home_page.dart';
import 'package:hello_word/studys/inherited_widget/my_home_page_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePageController(
        child: const MyHomePage(
          title: 'Home Page Test',
        ),
      ),
    );
  }
}
