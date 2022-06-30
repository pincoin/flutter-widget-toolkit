import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  WidgetList({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _widgets = [
    {
      'name': 'App Structure',
      'icon': Icons.web,
    },
    {
      'name': 'Buttons',
      'icon': Icons.touch_app,
    },
    {
      'name': 'Forms',
      'icon': Icons.keyboard,
    },
    {
      'name': 'Dialogs, Alerts and Panels',
      'icon': Icons.warning_amber,
    },
    {
      'name': 'Information Display',
      'icon': Icons.info,
    },
    {
      'name': 'Layout',
      'icon': Icons.dashboard_customize,
    },
    {
      'name': 'Miscellaneous',
      'icon': Icons.discount,
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
                onTap: () {},
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
