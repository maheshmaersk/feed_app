import 'dart:io';

import 'package:feed_app/model/data_model/feed_model.dart';
import 'package:feed_app/view_model/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  String? title;
  String? decs;
  File? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "New Title"),
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "New Description"),
              onChanged: (value) {
                decs = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                pickImage();
              },
              child: const Text('Media(Photo from gallery'),
            )
          ],
        ),
      ),
      bottomNavigationBar: file != null
          ? BottomAppBar(
              child: InkWell(
                onTap: () {
                  FeedModel model = FeedModel(
                    title: title,
                    description: decs,
                    image: file,
                  );
                  Provider.of<FeedViewModel>(context).addPost(model);
                },
                child: Container(
                  height: kToolbarHeight,
                ),
              ),
            )
          : null,
    );
  }

  // method to pic file from th gallery
  void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    file = File.fromUri(Uri(path: image!.path));
    setState(() {});
  }
}
