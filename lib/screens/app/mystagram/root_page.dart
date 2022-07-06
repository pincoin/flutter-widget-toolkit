import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './login_page.dart';
import './tab_page.dart';

class MyStagramRootPage extends StatefulWidget {
  const MyStagramRootPage({Key? key}) : super(key: key);

  @override
  State<MyStagramRootPage> createState() => _MyStagramRootPageState();
}

class _MyStagramRootPageState extends State<MyStagramRootPage> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return TabPage(snapshot.data);
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
