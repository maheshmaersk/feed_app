import 'package:feed_app/model/data_model/feed_model.dart';
import 'package:flutter/material.dart';

class FeedViewModel extends ChangeNotifier {
  List<FeedModel> _feeds = [];

  List<FeedModel> get feeds => _feeds;

  //method to add post
  void addPost(FeedModel model) {
    _feeds.add(model);
    notifyListeners();
  }

  //method to like/dislike the post
  void likePost(bool liked, int index) {
    _feeds[index].isLiked = liked;
    notifyListeners();
  }

  void favourite(bool liked, int index) {
    _feeds[index].isFav = liked;
    notifyListeners();
  }
}
