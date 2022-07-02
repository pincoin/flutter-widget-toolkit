import 'package:flutter/material.dart';

import './screen_list/modu/example_list.dart';

class ScreenList extends StatelessWidget {
  ScreenList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Sign In',
      'icon': Icons.login,
      'target': ModuExampleList(),
    },
    {
      'name': 'Sign Out',
      'icon': Icons.logout,
      'target': ModuExampleList(),
    },
    {
      'name': 'Sign Up',
      'icon': Icons.person_add,
      'target': ModuExampleList(),
    },
    {
      'name': 'Dashboard',
      'icon': Icons.dashboard,
      'target': ModuExampleList(),
    },
    {
      'name': 'Settings',
      'icon': Icons.settings_applications,
      'target': ModuExampleList(),
    },
    {
      'name': 'Misc',
      'icon': Icons.desk,
      'target': ModuExampleList(),
    },
    {
      'name': 'Modu',
      'icon': Icons.text_snippet,
      'target': ModuExampleList(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: _screens.map((item) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Card(
              child: ListTile(
                leading: Icon(item['icon']),
                title: Text(item['name']),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item['target']),
                  );
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
