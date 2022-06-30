import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  ScreenList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Sign In',
      'icon': Icons.login,
    },
    {
      'name': 'Sign Out',
      'icon': Icons.logout,
    },
    {
      'name': 'Sign Up',
      'icon': Icons.person_add,
    },
    {
      'name': 'Dashboard',
      'icon': Icons.dashboard,
    },
    {
      'name': 'Settings',
      'icon': Icons.settings_applications,
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
                onTap: () {},
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
