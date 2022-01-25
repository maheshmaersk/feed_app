import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Title',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text('Description'),
              Image.network(
                'http://prcagrimex.co.th/en/wp-content/uploads/2014/04/dummy-image-green-e1398449160839-1024x732.jpg',
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up_off_alt),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
