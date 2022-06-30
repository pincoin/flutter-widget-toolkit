import 'package:flutter/material.dart';

import './screens/app/screen_list.dart';
import './screens/app/widget_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Toolkit',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Widget Toolkit'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  final List<Map<String, dynamic>> _screens = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.widgets),
                title: const Text('Widgets'),
                subtitle: const Text('UI components for reuse'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetList()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.screenshot),
                title: const Text('Screens'),
                subtitle: const Text('Pages for reuse'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenList()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
