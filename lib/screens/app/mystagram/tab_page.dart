import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './account_page.dart';
import './create_page.dart';
import './home_page.dart';
import './search_page.dart';

class TabPage extends StatefulWidget {
  final User user;

  const TabPage(this.user, {Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  var _selectedIndex = 0;

  late List _pages;

  final _appBars = [
    AppBar(
      title: const Text('MyStagram Clone'),
    ),
    AppBar(),
    AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            GoogleSignIn().signOut();
          },
        )
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(widget.user),
      SearchPage(widget.user),
      AccountPage(widget.user),
    ];
  }

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
