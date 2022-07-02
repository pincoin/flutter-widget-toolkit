import 'package:flutter/material.dart';

class Example01 extends StatelessWidget {
  const Example01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('예제1'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: const [
                  Text(
                    "Woman",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Kids",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Shoes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Bag",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.network(
                'https://picsum.photos/1489/838',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 2),
            Expanded(
              flex: 1,
              child: Image.network(
                'https://picsum.photos/1489/838',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
