import 'package:flutter/material.dart';

class IconTextButtons extends StatelessWidget {
  const IconTextButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Text Button'),
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
            ElevatedButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Download'),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Download'),
              onPressed: () {},
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.download),
              label: const Text('Download'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
