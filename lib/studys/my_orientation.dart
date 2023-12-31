import 'package:flutter/material.dart';

class MyOrientation extends StatelessWidget {
  const MyOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Orientation';

    return const MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  const OrientationList({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(50, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
