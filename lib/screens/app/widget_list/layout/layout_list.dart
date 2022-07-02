import 'package:flutter/material.dart';

import './button_layout.dart';

class LayoutList extends StatelessWidget {
  LayoutList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Button Layout',
      'icon': Icons.touch_app,
      'target': const ButtonLayout(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout List'),
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
              child: item['subtitle'] == null
                  ? ListTile(
                      leading: Icon(item['icon']),
                      title: Text(item['name']),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => item['target']),
                        );
                      })
                  : ListTile(
                      leading: Icon(item['icon']),
                      title: Text(item['name']),
                      subtitle: Text(item['subtitle']),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => item['target']),
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
