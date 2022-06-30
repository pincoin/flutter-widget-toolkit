import 'package:flutter/material.dart';

class ButtonLayoutColumn extends StatelessWidget {
  const ButtonLayoutColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Layout 1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
      ),
    );
  }
}
