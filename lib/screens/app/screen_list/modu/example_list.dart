import 'package:flutter/material.dart';

import './example01.dart';
import './example02.dart';

class ModuExampleList extends StatelessWidget {
  ModuExampleList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Example 01',
      'icon': Icons.touch_app,
      'target': const Example01(),
    },
    {
      'name': 'Example 02',
      'icon': Icons.touch_app,
      'target': const Example02(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Text Buttons'),
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
