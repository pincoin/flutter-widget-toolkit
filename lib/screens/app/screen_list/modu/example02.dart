import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example02 extends StatelessWidget {
  const Example02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.heart,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: Text(
                'Recipes',
                style: TextStyle(fontSize: 36),
              ),
            ),
            Row(
              children: [
                {
                  'icon': Icons.food_bank,
                  'name': 'ALL',
                },
                {
                  'icon': Icons.emoji_food_beverage,
                  'name': 'Coffee',
                },
                {
                  'icon': Icons.fastfood,
                  'name': 'Burger',
                },
                {
                  'icon': Icons.local_pizza,
                  'name': 'Pizza',
                },
              ].map((item) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            item['icon'] as IconData,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 8),
                          Text(item['name'] as String),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            ...[
              {
                'title': 'Made Coffee',
              },
              {
                'title': 'Made Burger',
              },
              {
                'title': 'Made Pizza',
              },
            ].map((item) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 5 / 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://picsum.photos/1489/838',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['title'] as String,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Have you ever made your own ${item['title']}? "
                      "Once you've tried a homemade ${item['title']}, "
                      "you'll never go back.",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
