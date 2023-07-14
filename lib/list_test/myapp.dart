import 'package:flutter/material.dart';

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  MyList({super.key});

  final List<String> names = ['Leo', 'Marcos', 'Julio', 'Arthur'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'List',
        ),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, index) {
          return MyListItem(name: names[index]);
        },
      ),
    );
  }
}

class MyListItem extends StatefulWidget {
  const MyListItem({super.key, required this.name});

  final String name;

  @override
  State<MyListItem> createState() => _MyListItemState();
}

class _MyListItemState extends State<MyListItem> {
  Color color = Colors.blue.shade100;

  void changeColor() {
    setState(() {
      // if (color == Colors.blue.shade100) {
      //   color = Colors.blue.shade400;
      // } else {
      //   color = Colors.blue.shade100;
      // }
      color = color == Colors.blue.shade100
          ? Colors.blue.shade400
          : Colors.blue.shade100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: ListTile(
        title: Text(widget.name),
        tileColor: color,
      ),
    );
  }
}
