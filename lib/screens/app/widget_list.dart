import 'package:flutter/material.dart';

import './widget_list/buttons/button_list.dart';
import './widget_list/layout/layout_list.dart';

class WidgetList extends StatelessWidget {
  WidgetList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _widgets = [
    {
      'name': 'App Structure',
      'icon': Icons.web,
      'target': ButtonList(),
    },
    {
      'name': 'Buttons',
      'icon': Icons.touch_app,
      'target': ButtonList(),
    },
    {
      'name': 'Forms',
      'icon': Icons.keyboard,
      'target': ButtonList(),
    },
    {
      'name': 'Dialogs, Alerts and Panels',
      'icon': Icons.warning_amber,
      'target': ButtonList(),
    },
    {
      'name': 'Information Display',
      'icon': Icons.info,
      'target': ButtonList(),
    },
    {
      'name': 'Layout',
      'icon': Icons.dashboard_customize,
      'target': LayoutList(),
    },
    {
      'name': 'Miscellaneous',
      'icon': Icons.discount,
      'target': ButtonList(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: _widgets.map((item) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Card(
              child: ListTile(
                leading: Icon(item['icon'] as IconData),
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
