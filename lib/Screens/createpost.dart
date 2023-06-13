import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../components/text_field.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const DemoTextField(
              hinttext: 'Title',
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Post Description',
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                await ImagePicker().pickImage(source: ImageSource.gallery);
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 75),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: const Center(
                    child: Text(
                  'Insert Image',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
