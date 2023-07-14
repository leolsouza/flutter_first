import 'package:flutter/material.dart';

class MyScrollWithColumn extends StatelessWidget {
  const MyScrollWithColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScrollWithColumn(),
    );
  }
}

class ScrollWithColumn extends StatelessWidget {
  const ScrollWithColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll with column'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // child: SingleChildScrollView(
        //   child: Column(children: [
        //     for (var i = 1; i <= 15; i++)
        //       Container(
        //         width: double.infinity,
        //         height: 100,
        //         margin: const EdgeInsets.all(10),
        //         color: Colors.red,
        //         child: Center(
        //           child: Text(
        //             'Item - $i',
        //             style: const TextStyle(
        //               color: Colors.white,
        //             ),
        //           ),
        //         ),
        //       ),
        //   ]),
        // ),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                title: Text('Item $index'),
                tileColor: Colors.blue.shade800,
                titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
