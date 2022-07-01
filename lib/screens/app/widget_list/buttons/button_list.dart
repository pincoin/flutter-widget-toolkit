import 'package:flutter/material.dart';

import './one_column_evenly.dart';
import './one_column_fill.dart';
import './one_column_fit.dart';
import './buttons.dart';
import './icon_text_buttons.dart';
import './right_icon_text_buttons.dart';

class ButtonList extends StatelessWidget {
  ButtonList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _screens = [
    {
      'name': 'Buttons',
      'icon': Icons.touch_app,
      'target': const Buttons(),
    },
    {
      'name': 'Icon Text Buttons',
      'icon': Icons.touch_app,
      'target': const IconTextButtons(),
    },
    {
      'name': 'Right Icon Text Buttons',
      'icon': Icons.touch_app,
      'target': const RightIconTextButtons(),
    },
    {
      'name': 'Floating Action Buttons',
      'icon': Icons.touch_app,
      'target': const Buttons(),
    },
    {
      'name': 'Clip Buttons',
      'icon': Icons.touch_app,
      'target': const Buttons(),
    },
    {
      'name': 'Button Layout 1',
      'icon': Icons.touch_app,
      'subtitle': 'Evenly in a Column',
      'target': const OneColumnEvenly(),
    },
    {
      'name': 'Button Layout 2',
      'icon': Icons.touch_app,
      'subtitle': 'Fit in a Column',
      'target': const OneColumnFit(),
    },
    {
      'name': 'Button Layout 3',
      'icon': Icons.touch_app,
      'subtitle': 'Fill in a Column',
      'target': const OneColumnFill(),
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
