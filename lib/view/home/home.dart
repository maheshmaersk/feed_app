import 'package:feed_app/view/home/feed.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
        bottom: const PreferredSize(
          child: TextField(
            decoration: InputDecoration(filled: true),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
      ),
      body: const Feed(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
