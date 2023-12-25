import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageDemo extends StatefulWidget {
  const PickImageDemo({super.key});

  @override
  State<PickImageDemo> createState() => _PickImageDemoState();
}

class _PickImageDemoState extends State<PickImageDemo> {
  String? selectImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final ImagePicker picker = ImagePicker();

              final XFile? image =
                  await picker.pickImage(source: ImageSource.camera);
              if(image != null){
                log("--- ${image.path}");
                selectImage = image.path;
                setState(() {});
              }

            },
            child: const Text(""),
          ),
          selectImage == null
              ? const SizedBox()
              : Image.file(File(selectImage!),)
        ],
      ),
    );
  }
}
