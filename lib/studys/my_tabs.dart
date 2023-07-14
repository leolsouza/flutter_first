import 'package:flutter/material.dart';
import 'package:hello_word/studys/my_app_division.dart';
import 'package:hello_word/studys/my_snack_bar.dart';

class MyTabs extends StatelessWidget {
  const MyTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Tabs(),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Icon(Icons.directions_car),
          SnackBarPage(),
          MessageDisplayDivision(),
        ],
      ),
    );
  }
}
