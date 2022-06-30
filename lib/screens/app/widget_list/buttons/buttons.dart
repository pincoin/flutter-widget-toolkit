import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('ElevatedButton'),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('TextButton'),
              onPressed: () {},
            ),
            OutlinedButton(
              child: const Text('OutlinedButton'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
