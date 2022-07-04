import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _textEditingController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  Image? _image;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물 작성'),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () async {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo),
        onPressed: () async {
          _setImage();
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _image ?? const Text('이미지 없음'),
                const SizedBox(height: 12),
                TextField(
                  decoration: const InputDecoration(
                    hintText: '내용을 입력하세요.',
                  ),
                  controller: _textEditingController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _setImage() async {
    var xfile = await _picker.pickImage(source: ImageSource.gallery);

    if (xfile != null) {
      setState(() {
        _image = Image.file(File(xfile.path));
      });
    }
  }
}
