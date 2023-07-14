import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PracticalExample(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}

class PracticalExample extends StatefulWidget {
  const PracticalExample({super.key});

  @override
  State<PracticalExample> createState() => _PracticalExampleState();
}

class _PracticalExampleState extends State<PracticalExample> {
  final controller = TextEditingController();

  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practical Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    final text = controller.text;
                    setState(() {
                      list.add(text);
                    });
                    controller.clear();
                  },
                  icon: const Icon(Icons.add),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];

                return ListTile(
                  title: Text(item),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
