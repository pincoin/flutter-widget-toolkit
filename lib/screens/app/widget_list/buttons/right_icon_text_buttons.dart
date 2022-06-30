import 'package:flutter/material.dart';

class RightIconTextButtons extends StatelessWidget {
  const RightIconTextButtons({Key? key}) : super(key: key);

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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Download'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.download),
                ],
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Download'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.download),
                ],
              ),
              onPressed: () {},
            ),
            OutlinedButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Download'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.download),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
