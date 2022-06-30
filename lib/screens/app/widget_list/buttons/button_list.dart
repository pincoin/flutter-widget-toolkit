import 'package:flutter/material.dart';

import './buttons.dart';
import './icon_text_buttons.dart';
import './right_icon_text_buttons.dart';

class ButtonList extends StatelessWidget {
  ButtonList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Buttons',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const Buttons(),
    },
    {
      'name': 'Icon Text Buttons',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const IconTextButtons(),
    },
    {
      'name': 'Right Icon Text Buttons',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const RightIconTextButtons(),
    },
    {
      'name': 'Floating Action Buttons',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const Buttons(),
    },
    {
      'name': 'Clip Buttons',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const Buttons(),
    },
    {
      'name': 'Button Layouts',
      'icon': Icons.touch_app,
      'subtitle': '',
      'target': const Buttons(),
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
              child: ListTile(
                leading: Icon(item['icon']),
                title: Text(item['name']),
                subtitle: Text(item['subtitle']),
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
