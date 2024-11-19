import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Image Picker Study'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _image == null ? const Text('이미지 없음') : Image.file(_image!),
          ElevatedButton(
              onPressed: () async {
                final ImagePicker picker = ImagePicker();
                final XFile? image =
                    await picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  setState(() {
                    _image = File(image.path);
                  });
                }
                // final XFile? photo =
                //     await picker.pickImage(source: ImageSource.camera);
                // final XFile? galleryVideo =
                //     await picker.pickVideo(source: ImageSource.gallery);
                // final XFile? cameraVideo =
                //     await picker.pickVideo(source: ImageSource.camera);

                // final List<XFile> images = await picker.pickMultiImage();
                // final XFile? media = await picker.pickMedia();
                // final List<XFile> medias = await picker.pickMultipleMedia();
              },
              child: const Text('이미지 업로드')),
        ],
      ),
    );
  }
}
