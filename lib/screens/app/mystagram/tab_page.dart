import 'package:flutter/material.dart';

import './account_page.dart';
import './create_page.dart';
import './home_page.dart';
import './search_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  var _selectedIndex = 0;

  final _pages = const [
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];

  final _appBars = [
    AppBar(
      title: const Text('MyStagram Clone'),
    ),
    null,
    AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {},
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_selectedIndex],
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      floatingActionButton: _buildFloatingActionButton(context, _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget? _buildFloatingActionButton(context, index) {
    final floatingActionButton = [
      null,
      FloatingActionButton(
        child: const Icon(Icons.create),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
      ),
      null,
    ];

    return floatingActionButton[index];
  }
}
