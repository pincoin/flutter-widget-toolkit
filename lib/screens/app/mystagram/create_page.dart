import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물 작성'),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('이미지 없음'),
              const SizedBox(height: 12),
              TextField(
                decoration: const InputDecoration(
                  hintText: '내용을 입력하세요.',
                ),
                controller: textEditingController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
