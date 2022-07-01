import 'package:flutter/material.dart';

class OneColumnFit extends StatelessWidget {
  const OneColumnFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Layout 2'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Text'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Text('Long Text'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: const Text('Very Long Text'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
