import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'MyStagram에 오신 것을 환영합니다.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('사진과 동영상을 보려면 팔로우 하세요.'),
              ],
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('이메일주소'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Jonghwa Seo'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.network(
                              'https://picsum.photos/800/600',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 1),
                          Expanded(
                            child: Image.network(
                              'https://picsum.photos/800/600',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 1),
                          Expanded(
                            child: Image.network(
                              'https://picsum.photos/800/600',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Facebook 친구'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('팔로우'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
