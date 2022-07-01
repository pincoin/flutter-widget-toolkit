import 'package:flutter/material.dart';

class OneColumnFill extends StatelessWidget {
  const OneColumnFill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Layout 3'),
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
                style: ElevatedButton.styleFrom(
                  // fromHeight use double.infinity (full-width) as width
                  // and 40 is the height
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Text'),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Long Text'),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                ),
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
