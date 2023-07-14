import 'package:flutter/material.dart';
import 'package:hello_word/studys/login_screen/login_screen.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final List<String> names = ['Contacts', 'Favorites', 'Configuration', 'Help'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('My name'),
              accountEmail: const Text('teste@teste.com'),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://media.licdn.com/dms/image/D4D03AQEAnURKfvAOpA/profile-displayphoto-shrink_800_800/0/1681338460129?e=2147483647&v=beta&t=miViRh728C2L1NH6rA-Uj7-7CEXYuDkvTIiwUCHzAGE'),
              ),
            ),
            const ListTile(
              title: Text('Home'),
              subtitle: Text('Home Screen'),
              leading: Icon(Icons.home),
            ),
            for (final name in names)
              ListTile(
                title: Text(name),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ListTile(
              title: const Text('Logout'),
              subtitle: const Text('Sing out'),
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
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

  // void changeColor() {
  //   setState(() {
  //     color = color == Colors.blue.shade100
  //         ? Colors.blue.shade400
  //         : Colors.blue.shade100;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    void changeColor() {
      setState(() {
        color =
            color == primaryColor ? Colors.deepPurple.shade200 : primaryColor;
      });
    }

    return GestureDetector(
      onTap: changeColor,
      child: ListTile(
        title: Text(widget.name),
        tileColor: color,
      ),
    );
  }
}
