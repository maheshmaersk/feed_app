import 'package:feed_app/model/data_model/feed_model.dart';
import 'package:feed_app/view_model/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedViewModel>(
      builder: (context, state, child) {
        return ListView.builder(
          itemCount: state.feeds.length,
          itemBuilder: (context, index) {
            FeedModel model = state.feeds[index];
            return Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    model.title ?? '',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    model.description ?? '',
                  ),
                  if (model.image != null) Image.file(model.image!),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Provider.of<FeedViewModel>(context)
                              .favourite(!model.isFav, index);
                        },
                        icon: Icon(model.isFav
                            ? Icons.favorite
                            : Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {
                          Provider.of<FeedViewModel>(context)
                              .likePost(!model.isFav, index);
                        },
                        icon: Icon(model.isLiked
                            ? Icons.thumb_up
                            : Icons.thumb_up_off_alt),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
